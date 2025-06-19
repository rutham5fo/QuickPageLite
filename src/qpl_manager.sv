`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 12:24:45
// Design Name: 
// Module Name: qpl_manager
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


module qpl_manager #(
        parameter LINE_S                    = 256,
        parameter BLOCK_D                   = 512,
        parameter UDATA_W                   = 8,
        localparam LINE_W               	= $clog2(LINE_S),
        localparam BLOCK_W              	= $clog2(BLOCK_D),
        localparam NODES                	= BLOCK_D >> 1,
        localparam REQ_S                	= BLOCK_D * LINE_S,             // Max allocable bytes
        localparam REQ_W                	= UDATA_W + $clog2(REQ_S) + 1,
        localparam REP_W                	= UDATA_W + 2*BLOCK_W + 1,       // Reply width is the user_data + base_addr + size (additional 1 bit for full resolution)
        localparam STAGES               	= $clog2(BLOCK_D)
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        // From PU
        input wire                          i_rep_alloc_rdy,        // Ready signal from alloc reply stream
        input wire                          i_req_alloc_vld,
        input wire  [REQ_W-1:0]             i_req_alloc_data,
        input wire                          i_rep_dealloc_rdy,      // Ready signal from dealloc reply stream
        input wire                          i_req_dealloc_vld,
        input wire  [REP_W-1:0]             i_req_dealloc_data,
        
        // To Translators
        output wire [STAGES-1:0][NODES-1:0] o_scb,
        // To PU
        output wire                         o_req_alloc_rdy,
        output wire                         o_rep_alloc_vld,        // 1 for valid reply
        output wire [REP_W-1:0]             o_rep_alloc_data,
        output wire                         o_req_dealloc_rdy,
        output wire                         o_rep_dealloc_vld,      // 1 for valid dealloc
        output wire [REP_W-1:0]             o_rep_dealloc_data,
        // To ext
        output wire                         o_full,
        output wire [BLOCK_W:0]             o_avail
    );
    
    wire                            w_scb_wr_en;
    wire    [STAGES-1:0][NODES-1:0] w_scb_wr_data;
    wire    [STAGES-1:0][NODES-1:0] w_scb_rd_data;
    
    wire    [BLOCK_W:0]             w_dealloc_new_free_ptr;
    
    assign o_scb = w_scb_rd_data;
    
    (* dont_touch = "yes" *)
    scb_file #(
        .BLOCK_D(BLOCK_D)
    ) qpl_scb_file_i (
        .i_clk(i_clk),
        .i_reset(i_rst),
        .i_we(w_scb_wr_en),
        .i_wr_data(w_scb_wr_data),
        
        .o_rd_data(w_scb_rd_data)
    );
    
    (* dont_touch = "yes" *)
    qpl_allocator #(
        .LINE_S(LINE_S),                          // Number of bytes per line
        .BLOCK_D(BLOCK_D),                          // Number of lines per block in heap / Search space
        .UDATA_W(UDATA_W)                            // User side channel width
    ) qpl_alloc_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        // From PU
        .i_rep_alloc_rdy(i_rep_alloc_rdy),        // Ready signal from alloc reply stream
        .i_req_alloc_vld(i_req_alloc_vld),
        .i_req_alloc_data(i_req_alloc_data),
        // From SCB file
        .i_scb(w_scb_rd_data),
        // From deallocator
        .i_dealloc_new_free_ptr(w_dealloc_new_free_ptr),
        
        // To PU
        .o_req_alloc_rdy(o_req_alloc_rdy),
        .o_rep_alloc_vld(o_rep_alloc_vld),        // 1 for valid reply
        .o_rep_alloc_data(o_rep_alloc_data),
        // To ext
        .o_full(o_full),
        .o_avail(o_avail)
    );
    
    (* dont_touch = "yes" *)
    qpl_deallocator #(
        .BLOCK_D(BLOCK_D),                          // Number of lines per block in heap / Search space
        .UDATA_W(UDATA_W)                            // User side channel width
    ) qpl_dealloc_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        // From PU
        .i_rep_dealloc_rdy(i_rep_dealloc_rdy),      // Ready signal from dealloc reply stream
        .i_req_dealloc_vld(i_req_dealloc_vld),
        .i_req_dealloc_data(i_req_dealloc_data),
        // From SCB file
        .i_scb(w_scb_rd_data),
        
        // To SCB file and allocator
        .o_scb_wr_en(w_scb_wr_en),
        .o_scb(w_scb_wr_data),
        .o_dealloc_new_free_ptr(w_dealloc_new_free_ptr),
        
        // To PU
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        .o_rep_dealloc_vld(o_rep_dealloc_vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(o_rep_dealloc_data)
    );
    
endmodule
