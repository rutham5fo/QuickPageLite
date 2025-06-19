//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 00:34:02
// Design Name: 
// Module Name: agents
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


`ifndef __AGENTS_H__
`define __AGENTS_H__

    // Transaction
    class transaction;
        udata_t         tid;
        size_t          tsize;
        obj_t           tobj;
        
        function new (input udata_t uid=0, size_t usize=0, obj_t uobj=0);
            tid = uid;
            tsize = usize;
            tobj = uobj;
        endfunction:    new
        
        function udata_t get_tid();
            return tid;
        endfunction :   get_tid
        
        function size_t get_tsize();
            return tsize;
        endfunction :   get_tsize
        
        function obj_t get_tobj();
            return tobj;
        endfunction :   get_tobj

    endclass    :   transaction

    // Score board
    class score_board;
        udata_t         req_alloc_uid[$:BUF_D-1];
        udata_t         req_dealloc_uid[$:BUF_D-1];
        udata_t         rep_alloc_uid[$:BUF_D-1];
        udata_t         rep_dealloc_uid[$:BUF_D-1];
        paddr_t         mem_base_addr[$:BUF_D-1];
        paddr_t         mem_aux_addr[$:BUF_D-1];
        mem_t           mem_wr_data;
        mem_t           mem_rd_data;
        obj_t           rep_uobj[$:BUF_D-1];
        
        function new ();
            req_alloc_uid = {};
            req_dealloc_uid = {};
            rep_alloc_uid = {};
            rep_dealloc_uid = {};
            mem_wr_data = 0;
            mem_rd_data = 0;
            mem_base_addr = {};
            mem_aux_addr = {};
            rep_uobj = {};
        endfunction :   new
        
        function bool_t validate();
            int alloc_req_cnt = req_alloc_uid.size();
            int dealloc_req_cnt = req_dealloc_uid.size();
            int alloc_rep_cnt = rep_alloc_uid.size();
            int dealloc_rep_cnt = rep_dealloc_uid.size();
            
            assert (alloc_req_cnt == alloc_rep_cnt) begin
                $display ("%t: SCORE_BOARD  || alloc_req_cnt = %0d, alloc_rep_cnt = %0d   |   ALLOC_PASS ", $time, alloc_req_cnt, alloc_rep_cnt);
            end
            else begin
                $display ("%t: SCORE_BOARD  || alloc_req_cnt = %0d, alloc_rep_cnt = %0d   |   ALLOC_FAIL ", $time, alloc_req_cnt, alloc_rep_cnt);
            end
            
            assert (dealloc_req_cnt == dealloc_rep_cnt) begin
                $display ("%t: SCORE_BOARD  || dealloc_req_cnt = %0d, dealloc_rep_cnt = %0d   |   DEALLOC_PASS ", $time, dealloc_req_cnt, dealloc_rep_cnt);
            end
            else begin
                $display ("%t: SCORE_BOARD  || dealloc_req_cnt = %0d, dealloc_rep_cnt = %0d   |   DEALLOC_FAIL ", $time, dealloc_req_cnt, dealloc_rep_cnt);
            end
            
            foreach (mem_base_addr[i]) begin
                assert (mem_base_addr[i] == mem_aux_addr[i]) begin
                    $display ("%t: SCORE_BOARD  || mem_base_addr[%0d] = 0x%0h, mem_aux_addr[%0d] = 0x%0h   |   TRANS_PASS ", $time, i, mem_base_addr[i], i, mem_aux_addr[i]);
                end
                else begin
                    $display ("%t: SCORE_BOARD  || mem_base_addr[%0d] = 0x%0h, mem_aux_addr[%0d] = 0x%0h   |   TRANS_FAIL ", $time, i, mem_base_addr[i], i, mem_aux_addr[i]);
                end
            end
            
        endfunction :   validate
        
        function int get_objq_size();
            return rep_uobj.size();
        endfunction :   get_objq_size
        
        function obj_t get_obj(input int sel);
            return rep_uobj[sel];
        endfunction :   get_obj
        
        function remove_obj (input int index);
            rep_uobj.delete(index);
        endfunction :   remove_obj
        
        function push_req_alloc_id (input udata_t uid);
            req_alloc_uid.push_back(uid);
        endfunction :   push_req_alloc_id
        
        function push_req_dealloc_id (input udata_t uid);
            req_dealloc_uid.push_back(uid);
        endfunction :   push_req_dealloc_id
        
        function push_rep_alloc_id (input udata_t uid);
            rep_alloc_uid.push_back(uid);
        endfunction :   push_rep_alloc_id
        
        function push_rep_dealloc_id (input udata_t uid);
            rep_dealloc_uid.push_back(uid);
        endfunction :   push_rep_dealloc_id
        
        function push_rep_obj (input obj_t uobj);
            rep_uobj.push_back(uobj);
        endfunction :   push_rep_obj
        
        function push_mem_base_addr (input paddr_t addr);
            mem_base_addr.push_back(addr);
        endfunction :   push_mem_base_addr
        
        function push_mem_aux_addr (input paddr_t addr);
            mem_aux_addr.push_back(addr);
        endfunction :   push_mem_aux_addr
        
        function udata_t pop_req_alloc_id ();
            return req_alloc_uid.pop_front();
        endfunction :   pop_req_alloc_id
        
        function udata_t pop_req_dealloc_id ();
            return req_dealloc_uid.pop_front();
        endfunction :   pop_req_dealloc_id
        
        function udata_t pop_rep_alloc_id ();
            return rep_alloc_uid.pop_front();
        endfunction :   pop_rep_alloc_id
        
        function udata_t pop_rep_dealloc_id ();
            return rep_dealloc_uid.pop_front();
        endfunction :   pop_rep_dealloc_id
        
        function obj_t pop_rep_obj ();
            return rep_uobj.pop_front();
        endfunction :   pop_rep_obj
        
        function paddr_t pop_mem_base_addr ();
            return mem_base_addr.pop_front();
        endfunction :   pop_mem_base_addr
        
        function paddr_t pop_mem_aux_addr ();
            return mem_aux_addr.pop_front();
        endfunction :   pop_mem_aux_addr
        
    endclass    :   score_board
    
    // Transmitter
    class sender #(
        parameter type req_alloc_if = virtual strm_intf #(.DATA_W(REQ_W), .USER_W(BLOCK_W)),
        parameter type req_dealloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)),
        parameter type ch_if = virtual strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W))
    );
        // Drivers
        req_strm #(.DATA_W(REQ_W), .USER_W(BLOCK_W))        req_alloc_str;
        req_strm #(.DATA_W(REP_W), .USER_W(BLOCK_W))        req_dealloc_str;
        req_strm #(.DATA_W(VADDR_W), .USER_W(BLOCK_W))      ch0_aux_str;
        req_strm #(.DATA_W(VADDR_W), .USER_W(BLOCK_W))      ch0_base_str;
        req_strm #(.DATA_W(VADDR_W), .USER_W(BLOCK_W))      ch1_aux_str;
        req_strm #(.DATA_W(VADDR_W), .USER_W(BLOCK_W))      ch1_base_str;
                
        udata_t         tid;
        size_t          tsize;
        obj_t           tobj;
        req_t           talloc_req;
        rep_t           tdealloc_req;
        blk_t           tvaddr_base;
        blk_t           tvaddr_line;
        word_t          tvaddr_word;
        vaddr_t         tvaddr;
        paddr_t         tpaddr;
        
        function new(req_alloc_if req_alloc_str, req_dealloc_if req_dealloc_str, ch_if ch0_aux_str, ch_if ch0_base_str, ch_if ch1_aux_str, ch_if ch1_base_str);
            tid = 0;
            tsize = 0;
            talloc_req = 0;
            tdealloc_req = 0;
            tobj = 0;
            tpaddr = 0;
            tvaddr = 0;
            this.req_alloc_str = new (req_alloc_str);
            this.req_dealloc_str = new (req_dealloc_str);
            this.ch0_aux_str = new (ch0_aux_str);
            this.ch0_base_str = new (ch0_base_str);
            this.ch1_aux_str = new (ch1_aux_str);
            this.ch1_base_str = new (ch1_base_str);
            
        endfunction :   new
        
        task send_alloc (input transaction tr, ref score_board sb);
            tid = tr.get_tid();
            tsize = tr.get_tsize();
            talloc_req = {tid, tsize};
            req_alloc_str.put(talloc_req, 0, 0);
            void'(sb.push_req_alloc_id(tid));
            $display ("%t: SEND ||| Sent alloc_req || id = %0d, size = %0d", $time, tid, tsize);
        endtask :   send_alloc
        
        task send_dealloc (input transaction tr, ref score_board sb);
            int obj_size = sb.get_objq_size();
            tid = tr.get_tid();
            tobj = tr.get_tobj();
            tdealloc_req = {tid, tobj};
            req_dealloc_str.put(tdealloc_req, 0, 0);
            void'(sb.push_req_dealloc_id(tid));
            for (int i = 0; i < obj_size; i += 1) begin
                obj_t cmp_obj = sb.get_obj(i);
                if (tobj == cmp_obj) begin
                    sb.remove_obj(i);
                    $display ("%t: SEND ||| Removing object || id = %0d, obj = 0x%0h", $time, tid, tobj);
                    break;
                end
            end
            $display ("%t: SEND ||| Sent dealloc_req || id = %0d, obj = 0x%0h", $time, tid, tobj);
        endtask :   send_dealloc
        
        task send_base_addr (input transaction tr, input blk_t line, input word_t word, input bool_t chan, input bool_t we);
            tid = tr.get_tid();
            tobj = tr.get_tobj();
            tvaddr_line = line;
            tvaddr_word = word;
            tvaddr_base = tobj[0 +: BLOCK_W];
            tvaddr = {tvaddr_line, tvaddr_word};
            $display ("%t: SEND ||| CHAN[%0d] BASE || Sent virtual address = 0x%0h || line = %0d, word = %0d | base = %0d", $time, chan, tvaddr, tvaddr_line, tvaddr_word, tvaddr_base);
            case (chan)
                0   : ch0_base_str.put(tvaddr, tvaddr_base, we);
                1   : ch1_base_str.put(tvaddr, tvaddr_base, we);
            endcase
        endtask
        
        task send_aux_addr (input transaction tr, input blk_t line, input word_t word, input bool_t chan, input bool_t we);
            tid = tr.get_tid();
            tobj = tr.get_tobj();
            tvaddr_line = line;
            tvaddr_word = word;
            tvaddr_base = tobj[0 +: BLOCK_W];
            tvaddr = {tvaddr_line, tvaddr_word};
            $display ("%t: SEND ||| CHAN[%0d] AUX || Sent virtual address = 0x%0h || line = %0d, word = %0d | base = %0d", $time, chan, tvaddr, tvaddr_line, tvaddr_word, tvaddr_base);
            case (chan)
                0   : ch0_aux_str.put(tvaddr, tvaddr_base, we);
                1   : ch1_aux_str.put(tvaddr, tvaddr_base, we);
            endcase
        endtask
        
    endclass    :   sender

    // Receiver
    class receiver #(
        parameter type rep_alloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)),
        parameter type rep_dealloc_if = virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W))
    );
        // Drivers
        rep_strm #(.DATA_W(REP_W), .USER_W(BLOCK_W))    rep_alloc_str;
        rep_strm #(.DATA_W(REP_W), .USER_W(BLOCK_W))    rep_dealloc_str;
        
        rep_t           trep;
        obj_t           tobj;
        udata_t         tid;
        
        function new(rep_alloc_if rep_alloc_str, rep_dealloc_if rep_dealloc_str);
            trep = 0;
            tobj = 0;
            tid = 0;
            this.rep_alloc_str = new (rep_alloc_str);
            this.rep_dealloc_str = new (rep_dealloc_str);
        endfunction :   new

        task recv_alloc (ref score_board sb);
            rep_alloc_str.get(trep);
            tobj = trep[0 +: REP_W-UDATA_W];
            tid = trep[REP_W-1 -: UDATA_W];
            void'(sb.push_rep_alloc_id(tid));
            void'(sb.push_rep_obj(tobj));
            $display ("%t: RECV ||| Received alloc_rep || id = %0d, obj = 0x%0h", $time, tid, tobj);
        endtask :   recv_alloc
        
        task recv_dealloc (ref score_board sb);
            rep_dealloc_str.get(trep);
            tobj = trep[0 +: REP_W-UDATA_W];
            tid = trep[REP_W-1 -: UDATA_W];
            void'(sb.push_rep_dealloc_id(tid));
            //void'(sb.push_rep_obj(tobj));
            $display ("%t: RECV ||| Received dealloc_rep || id = %0d, obj = 0x%0h", $time, tid, tobj);
        endtask :   recv_dealloc
        
    endclass    :   receiver
    
    // Monitor
    class monitor #(
        parameter type qpl_if = virtual qpl_intf #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(PADDR_W))
    );
        // Drivers
        mem_mon #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(PADDR_W))   qpl_out;
        
        logic           blk_full;
        avail_t         blk_avail;
        logic           blk_base_we;
        logic           blk_aux_we;
        paddr_t         blk_base_addr;
        paddr_t         blk_aux_addr;
        
        function new (qpl_if qpl_out);
            blk_full = 0;
            blk_avail = 0;
            blk_base_we = 0;
            blk_aux_we = 0;
            blk_base_addr = 0;
            blk_aux_addr = 0;
            this.qpl_out = new (qpl_out);
        endfunction :   new
        
        task get_blk_full (output logic full);
            qpl_out.get_full(this.blk_full);
            full = this.blk_full;
        endtask :   get_blk_full
        
        task get_blk_base_we (input int ch, output logic we);
            qpl_out.get_base_we(ch, this.blk_base_we);
            we = this.blk_base_we;
        endtask :   get_blk_base_we
        
        task get_blk_aux_we (input int ch, output logic we);
            qpl_out.get_aux_we(ch, this.blk_aux_we);
            we = this.blk_aux_we;
        endtask :   get_blk_aux_we
        
        task get_blk_avail (output avail_t avail);
            qpl_out.get_avail(this.blk_avail);
            avail = this.blk_avail;
        endtask :   get_blk_avail
        
        task get_blk_base_addr (input int ch, output paddr_t addr);
            qpl_out.get_base_addr(ch, this.blk_base_addr);
            addr = this.blk_base_addr;
        endtask :   get_blk_base_addr
        
        task get_blk_aux_addr (input int ch, output paddr_t addr);
            qpl_out.get_aux_addr(ch, this.blk_aux_addr);
            addr = this.blk_aux_addr;
        endtask :   get_blk_aux_addr
        
        task wait_till_free ();
            qpl_out.wait_till_free();
        endtask :   wait_till_free
        
        task read_aux_addr (ref score_board sb, input int ch);
            qpl_out.get_aux_addr(ch, blk_aux_addr);
            void'(sb.push_mem_aux_addr(blk_aux_addr));
            $display ("%t: MONITOR  ||| blk aux address at channel[%0d] || Address = 0x%0h | line = %0d, word = %0d", $time, ch, blk_aux_addr, blk_aux_addr[WORD_W +: BLOCK_W], blk_aux_addr[0 +: WORD_W]);
        endtask :   read_aux_addr
        
        task read_base_addr (ref score_board sb, input int ch);
            qpl_out.get_base_addr(ch, blk_base_addr);
            void'(sb.push_mem_base_addr(blk_base_addr));
            $display ("%t: MONITOR  ||| blk base address at channel[%0d] || Address = 0x%0h | line = %0d, word = %0d", $time, ch, blk_base_addr, blk_base_addr[WORD_W +: BLOCK_W], blk_base_addr[0 +: WORD_W]);
        endtask :   read_base_addr
        
    endclass    :   monitor
    
`endif  // __AGENTS_H__
