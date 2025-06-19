`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 02:41:38
// Design Name: 
// Module Name: qpl_deallocator
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


module qpl_deallocator #(
        parameter BLOCK_D               = 512,                          // Number of lines per block in heap / Search space
        parameter UDATA_W               = 8,                            // User side channel width
        localparam BLOCK_W              = $clog2(BLOCK_D),
        localparam NODES                = BLOCK_D >> 1,
        localparam REP_W                = UDATA_W + 2*BLOCK_W + 1,       // Reply width is the user_data + base_addr + size (additional 1 bit for full resolution)
        localparam STAGES               = $clog2(BLOCK_D)
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        // From PU
        input wire                          i_rep_dealloc_rdy,      // Ready signal from dealloc reply stream
        input wire                          i_req_dealloc_vld,
        input wire  [REP_W-1:0]             i_req_dealloc_data,
        // From SCB file
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        
        // To SCB file and allocator
        output wire                         o_scb_wr_en,
        output wire [STAGES-1:0][NODES-1:0] o_scb,
        output wire [BLOCK_W:0]             o_dealloc_new_free_ptr,
        
        // To PU
        output wire                         o_req_dealloc_rdy,
        output wire                         o_rep_dealloc_vld,      // 1 for valid dealloc
        output wire [REP_W-1:0]             o_rep_dealloc_data
    );
    
    wire                            wi_req_dealloc_vld;
    wire    [REP_W-1:0]             wi_req_dealloc_data;
    
    wire    [REP_W-UDATA_W-1:0]     w_req_dealloc_obj;
    wire    [UDATA_W-1:0]           w_req_dealloc_udata;
    wire    [BLOCK_W:0]             w_dealloc_blk_size;
    wire    [BLOCK_W-1:0]           w_dealloc_blk_base;
    wire    [BLOCK_W-1:0]           w_compr_blk_base;
    
    wire                            w_dealloc_vld;
    wire    [BLOCK_W:0]             w_new_dealloc_free_ptr;                 // dealloc modifier to free ptr
    wire                            w_req_dealloc_rdy;
    
    wire                            w_scb_wr_en;
    wire    [STAGES-1:0][NODES-1:0] w_scb_wr;
    
    reg                             r_req_dealloc_rdy;
    reg                             r_rep_dealloc_vld;
    reg     [REP_W-1:0]             r_rep_dealloc_data;
    reg                             r_dealloc_vld;
    reg     [REP_W-UDATA_W-1:0]     r_dealloc_obj;
    reg     [UDATA_W-1:0]           r_dealloc_udata;
    reg     [BLOCK_W:0]             r_compr_blk_size;
    
    genvar i;
    
    assign w_req_dealloc_obj = wi_req_dealloc_data[0 +: REP_W-UDATA_W];
    assign w_req_dealloc_udata = wi_req_dealloc_data[REP_W-1 -: UDATA_W];
    assign w_dealloc_blk_size = w_req_dealloc_obj[REP_W-UDATA_W-1 -: BLOCK_W+1];
    assign w_dealloc_blk_base = w_req_dealloc_obj[0 +: BLOCK_W];
    assign w_dealloc_vld = wi_req_dealloc_vld & i_rep_dealloc_rdy;
    assign w_req_dealloc_rdy = (wi_req_dealloc_vld && !w_dealloc_vld) ? 1'b0 : 1'b1;
    assign w_new_dealloc_free_ptr = (w_dealloc_vld) ? w_dealloc_blk_size : 'b0;
    
    assign o_scb_wr_en = w_scb_wr_en;
    assign o_scb = w_scb_wr;
    assign o_dealloc_new_free_ptr = w_new_dealloc_free_ptr;
    assign o_rep_dealloc_vld = r_rep_dealloc_vld;
    assign o_rep_dealloc_data = r_rep_dealloc_data;
    assign o_req_dealloc_rdy = r_req_dealloc_rdy;
    
    // Dealloc Rx skid buffer
    assign wi_req_dealloc_vld = i_req_dealloc_vld;
    assign wi_req_dealloc_data = i_req_dealloc_data;
	
    // Physical address to virtual address translator
    (* dont_touch = "yes" *)
    dec_ptv #(
        .BITMAP(BLOCK_D)
    ) dealloc_ptv_dec_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_oreg_en(1'b1),
        .i_paddr(w_dealloc_blk_base),
        .i_scb(i_scb),
        
        .o_vaddr(w_compr_blk_base)
    );
    
    // Virtual map compressor
    (* dont_touch = "yes" *)
    qpl_compressor #(
        .BITMAP(BLOCK_D)
    ) dealloc_compressor_i (
        .i_dealloc_vld(r_dealloc_vld),
        .i_dealloc_addr(w_compr_blk_base),
        .i_dealloc_size(r_compr_blk_size),                 // Size is not zero indexed and hence requires 1 additional bit for full reolution
        .i_scb(i_scb),
        
        .o_scb_vld(w_scb_wr_en),
        .o_scb(w_scb_wr)
    );
    
    // Power init
    initial begin
        r_req_dealloc_rdy = 0;
        r_dealloc_vld = 0;
        r_compr_blk_size = 0;
        r_rep_dealloc_data = 0;
        r_dealloc_udata = 0;
        r_dealloc_obj = 0;
    end
    
    // Pipe regs
    always @(posedge i_clk) begin
        r_compr_blk_size <= w_dealloc_blk_size;
        r_dealloc_udata <= w_req_dealloc_udata;
        r_dealloc_obj <= w_req_dealloc_obj;
        r_req_dealloc_rdy <= (i_rst) ? 0 : w_req_dealloc_rdy;
        r_dealloc_vld <= (i_rst) ? 0 : w_dealloc_vld;
    end
    
    always @(posedge i_clk) begin
        r_rep_dealloc_vld <= r_dealloc_vld;
        r_rep_dealloc_data <= (r_dealloc_vld) ? {r_dealloc_udata, r_dealloc_obj} : r_rep_dealloc_data;
    end
    
endmodule
