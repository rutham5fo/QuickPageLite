//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 20:09:59
// Design Name: 
// Module Name: interfaces
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

// Stream
interface strm_intf #(
        parameter DATA_W        = 32,
        parameter USER_W        = 8
    )(
        input logic             i_clk
    );
    
    logic                       rdy;
    
    logic                       vld;
    logic     [DATA_W-1:0]      data;
    logic     [USER_W-1:0]      user;
    logic                       last;
    
    clocking cb_ostr @(posedge i_clk);
        default input #1step output #1;
        input rdy;
        output vld;
        output data;
        output user;
        output last;
    endclocking
    
    clocking cb_istr @(posedge i_clk);
        default input #1step output #1;
        input vld;
        input data;
        input user;
        input last;
        output rdy;
    endclocking
    
    initial begin
        vld = 0;
        data = 0;
        user = 0;
        last = 0;
    end
    
    modport mst (input rdy, output vld, data, user, last);
    modport slv (input vld, data, user, last, output rdy);
        
endinterface    :   strm_intf

// QPL
interface qpl_intf #(
        parameter CHANS             = 2,
        parameter BLOCK_W           = 8,
        parameter ADDR_W            = 16
    )(
        input logic                 i_clk
    );
    
    localparam CHAN_W               = $clog2(CHANS);
    
    logic                               blk_full;
    logic   [BLOCK_W:0]                 blk_avail;
    logic   [CHANS-1:0]                 blk_base_we;
    logic   [CHANS-1:0]                 blk_aux_we;
    logic   [CHANS-1:0][ADDR_W-1:0]     blk_base_addr;
    logic   [CHANS-1:0][ADDR_W-1:0]     blk_aux_addr;
    
    clocking cb_qpl @(posedge i_clk);
        default input #1step output #1;
        input blk_full;
        input blk_avail;
        input blk_base_we;
        input blk_aux_we;
        input blk_base_addr;
        input blk_aux_addr;
    endclocking
    
    task get_full (output logic full);
        full = cb_qpl.blk_full;
    endtask
    
    task get_avail (output logic[BLOCK_W:0] avail);
        avail = cb_qpl.blk_avail;
    endtask
    
    task get_base_we (input logic[CHAN_W-1:0] ch_sel, output logic we);
        we = cb_qpl.blk_base_we[ch_sel];
    endtask
    
    task get_aux_we (input logic[CHAN_W-1:0] ch_sel, output logic we);
        we = cb_qpl.blk_aux_we[ch_sel];
    endtask
    
    task get_base_addr (input logic[CHAN_W-1:0] ch_sel, output logic[ADDR_W-1:0] addr);
        addr = cb_qpl.blk_base_addr[ch_sel][0 +: ADDR_W];
    endtask
    
    task get_aux_addr (input logic[CHAN_W-1:0] ch_sel, output logic[ADDR_W-1:0] addr);
        addr = cb_qpl.blk_aux_addr[ch_sel][0 +: ADDR_W];
    endtask
    
    modport mem (output blk_full, blk_avail, blk_base_we, blk_aux_we, blk_base_addr, blk_aux_addr);
    
endinterface    :   qpl_intf

// Environment
interface env_intf (input logic     i_clk);
    
    clocking cb_env @(posedge i_clk);
        // Empty
    endclocking
    
    task delay (input int val);
        repeat (val) @cb_env;
    endtask :   delay
    
endinterface    :   env_intf
