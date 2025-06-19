`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 00:34:02
// Design Name: 
// Module Name: environment
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


package environment_pkg;

    `include "config.sv"
    `include "drivers.sv"
    `include "agents.sv"
    
    class environment #(
        parameter type req_alloc_if = virtual strm_intf #(.DATA_W(REQ_W), .USER_W(BLOCK_W)),
        parameter type req_dealloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)),
        parameter type rep_alloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)),
        parameter type rep_dealloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)),
        parameter type ch_if = virtual strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W)),
        parameter type qpl_if = virtual qpl_intf #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(PADDR_W)),
        parameter type env_if = virtual env_intf
    );
        // Interface to system
        env_if          env;                // Brings in system clock from outside
        
        // Agents
        transaction tr;
        sender tx;
        receiver rx;
        score_board sb;
        monitor mon;
        
        // Global vars
        obj_t           obj;
        obj_t           wr_vobj[$];
        word_t          wr_vword[$];
        int             wr_vlen[$];
        
        function new (
            env_if env,
            req_alloc_if req_alloc_str, req_dealloc_if req_dealloc_str,
            rep_alloc_if rep_alloc_str, rep_dealloc_if rep_dealloc_str,
            ch_if ch0_aux_str, ch_if ch0_base_str, ch_if ch1_aux_str, 
            ch_if ch1_base_str, qpl_if qpl_out
        );
            this.env = env;
            
            tx = new(req_alloc_str, req_dealloc_str, ch0_aux_str, ch0_base_str, ch1_aux_str, ch1_base_str);
            rx = new(rep_alloc_str, rep_dealloc_str);
            sb = new();
            mon = new(qpl_out);
        endfunction
        
        task gen_alloc (output int alloc_cnt);
            avail_t blk_avail = 0;
            int alloc_id = 0;
            int alloc_size = 1;
            // Generate alloc pattern
            mon.wait_till_free();
            mon.get_blk_avail(blk_avail);
            while (blk_avail != 0) begin
                // Create msg
                alloc_size = $urandom_range(1, blk_avail);
                tr = new(alloc_id, alloc_size*LINE_BYTE, 0);
                $display ("%t: RUN  ||| Sending alloc_req || id = %0d, size = %0d | Block_avail = %0d", $time, alloc_id, alloc_size, blk_avail);
                tx.send_alloc(tr, sb);
                alloc_id += 1;
                blk_avail -= alloc_size;
            end
            alloc_cnt = alloc_id;
        endtask :   gen_alloc
        
        task gen_vaddr (input bool_t test=0, output int obj_index);
            // Translate write virtual address
            int     obj_cnt = sb.get_objq_size();
            int     obj_sel = $urandom_range(0, obj_cnt-1);
            obj_t   obj = (test) ? wr_vobj.pop_front() : sb.get_obj(obj_sel);
            size_t  obj_size = obj[BLOCK_W +: BLOCK_W+1];
            bool_t  we = (test) ? 0 : 1;
            word_t  word_offset = (test) ? wr_vword.pop_front() : $urandom_range(0, LINE_WORD-1);
            int     trans_max = (test) ? wr_vlen.pop_front() : $urandom_range(1, obj_size);
            //$display ("%t: GEN_VADDR ||| test = %0d, obj_cnt = %0d, obj_sel = %0d, obj = 0x%0h, obj_size = %0d, trans_max = %0d", $time, test, obj_cnt, obj_sel, obj, obj_size, trans_max);
            
            // Create transaction
            tr = new(0, 0, obj);
            // Select Object
            //-------------------------------------------------------------------------------------------------------------------------
            // QPL transactions must follow WRITE-AFTER-READ due to the current hardware solution;
            // i.e., a Write transaction can start after/during a Read transaction.
            // For example, a single word write to address (A, B) in object A can only happen 
            // after/during a read from the same Object (A, X), where X is dont care.
            // In the below case, a write/read transaction (test == 0/1) starts after a dummy read to the 
            // same object. This dummy read selects the object of interest. But of-course the write is free to start with the read.
            //-------------------------------------------------------------------------------------------------------------------------
            tx.send_base_addr(tr, 0, word_offset, test, 1);    // Object select is done by READING to the target object once.
                                                               // Deliberately set we for first access. This write must be ignored
                                                               // due to object select operation.
            // Start send tx and mon agents
            fork
                begin   :   fblk_gen_vaddr
                    for (int i = 0; i < trans_max; i++) begin
                        if (test) tx.send_aux_addr(tr, i, word_offset, test, we);
                        else tx.send_base_addr(tr, i, word_offset, test, we);
                    end
                end
                begin   :   fblk_mon_paddr
                    env.delay(TRANS_DLY);
                    for (int i = 0; i < trans_max; i++) begin
                        if (test) mon.read_aux_addr(sb, test);
                        else mon.read_base_addr(sb, test);
                    end
                end
            join
            // Save state
            if (test == 0) begin
                wr_vobj.push_back(obj);
                wr_vword.push_back(word_offset);
                wr_vlen.push_back(trans_max);
            end
            // Return object
            obj_index = obj_sel;
        endtask :   gen_vaddr
        
        task gen_dealloc(input int obj_idx, output bool_t skip);
            int dealloc_id = $urandom_range(0, obj_idx-1);
            skip = 0;
            //$display ("%t:  GEN_DEALLOC ||| obj_id = %0d, dealloc_id = %0d", $time, obj_idx, dealloc_id);
            if (obj_idx != 0) begin
                obj_t obj = sb.get_obj(dealloc_id);
                tr = new(dealloc_id, 0, obj);
                tx.send_dealloc(tr, sb);
            end
            else begin
                skip = 1;
            end
        endtask :   gen_dealloc
        
        task recv_alloc_rep (input int rep_cnt);
            for (int i = 0; i < rep_cnt; i += 1) begin
                rx.recv_alloc(sb);
            end
        endtask :   recv_alloc_rep
        
        task recv_dealloc_rep (input bool_t skip);
            if (!skip) begin
                rx.recv_dealloc(sb);
            end
        endtask :   recv_dealloc_rep
        
        task test_0 ();
            bool_t test = 0;
            bool_t dealloc_skip = 0;
            int alloc_cnt = 0;
            int dealloc_id = 0;
            int obj_idx = 0;
            
            $display ("%t: RUN  ||| Running Test_0", $time);
            
            // Generate alloc pattern
            gen_alloc(alloc_cnt);
            // Receive alloc_reps
            recv_alloc_rep(alloc_cnt);
            env.delay(1);
            
            // Translate write virtual address on base_channel_0
            test = 0;
            gen_vaddr(test, obj_idx);
            env.delay(1);
            
            // Deallocate obj
            gen_dealloc(obj_idx, dealloc_skip);
            // Receive dealloc_rep(s)
            recv_dealloc_rep(dealloc_skip);
            env.delay(1);
            
            // Translate read virtual address on aux_channel_1
            test = 1;
            gen_vaddr(test, obj_idx);
            env.delay(1);
            
        endtask :   test_0
        
        task run();
            test_0();
        endtask :   run
        
        task verify();
            sb.validate();
        endtask :   verify
        
    endclass    :   environment

endpackage
