//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 02:07:27
// Design Name: 
// Module Name: drivers
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


`ifndef __DRIVER_H__
`define __DRIVER_H__

    class req_strm #(
        parameter DATA_W = 8,
        parameter USER_W = 8
    );
        localparam type req_if = virtual strm_intf #(.DATA_W(DATA_W), .USER_W(USER_W));
        
        req_if req_str;
        
        function new (req_if req_str);
            this.req_str = req_str;
        endfunction :   new
        
        // Put is blocking
        task put (
            input   [DATA_W-1:0]    data,
            input   [USER_W-1:0]    user,
            input                   last
        );
            while (!req_str.cb_ostr.rdy) @req_str.cb_ostr;
            req_str.cb_ostr.data <= data;
            req_str.cb_ostr.user <= user;
            req_str.cb_ostr.last <= last;
            req_str.cb_ostr.vld <= 1'b1;
            @req_str.cb_ostr;
            req_str.cb_ostr.vld <= 1'b0;
        endtask
        
    endclass    :   req_strm
        
    class rep_strm #(
        parameter DATA_W = 8,
        parameter USER_W = 8
    );
        localparam type rep_if = virtual strm_intf #(.DATA_W(DATA_W), .USER_W(USER_W));
        
        rep_if rep_str;
        
        function new (rep_if rep_str);
            this.rep_str = rep_str;
        endfunction :   new
        
        // Get is blocking
        task get (
            output  [DATA_W-1:0]    data
        );
            rep_str.cb_istr.rdy <= 1'b1;
            @rep_str.cb_istr;
            while (!rep_str.cb_istr.vld) @rep_str.cb_istr;
            rep_str.cb_istr.rdy <= 1'b0;
            data = rep_str.cb_istr.data;
        endtask
        
    endclass    :   rep_strm
    
    class mem_mon #(
        parameter CHANS = 2,
        parameter BLOCK_W = 8,
        parameter ADDR_W = 8
    );
        localparam type qpl_if = virtual qpl_intf #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(ADDR_W));
        localparam CHAN_W   = $clog2(CHANS);
        
        qpl_if qpl_out;
        
        function new (qpl_if qpl_out);
            this.qpl_out = qpl_out;
        endfunction :   new
        
        task get_full (output logic full);
            full = qpl_out.cb_qpl.blk_full;
        endtask
        
        task get_avail (output logic[BLOCK_W:0] avail);
            avail = qpl_out.cb_qpl.blk_avail;
        endtask
        
        task get_base_we (input logic[CHAN_W-1:0] ch_sel, output logic we);
            we = qpl_out.cb_qpl.blk_base_we[ch_sel];
        endtask
        
        task get_aux_we (input logic[CHAN_W-1:0] ch_sel, output logic we);
            we = qpl_out.cb_qpl.blk_aux_we[ch_sel];
        endtask
        
        task get_aux_addr (input logic[CHAN_W-1:0] ch_sel, output logic[ADDR_W-1:0] addr);
            @qpl_out.cb_qpl;
            addr = qpl_out.cb_qpl.blk_aux_addr[ch_sel][0 +: ADDR_W];
        endtask
        
        task get_base_addr (input logic[CHAN_W-1:0] ch_sel, output logic[ADDR_W-1:0] addr);
            @qpl_out.cb_qpl;
            addr = qpl_out.cb_qpl.blk_base_addr[ch_sel][0 +: ADDR_W];
        endtask
        
        task wait_till_free ();
            while (qpl_out.cb_qpl.blk_full) @qpl_out.cb_qpl;
        endtask :   wait_till_free
    
    endclass    :   mem_mon
    
`endif  // __DRIVER_H__
