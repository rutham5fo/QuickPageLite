`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 22:22:31
// Design Name: 
// Module Name: qpl_allocator
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


module qpl_allocator #(
        parameter LINE_S                = 256,                          // Number of bytes per line
        parameter BLOCK_D               = 512,                          // Number of lines per block in heap / Search space
        parameter UDATA_W               = 8,                            // User side channel width
        localparam LINE_W               = $clog2(LINE_S),
        localparam BLOCK_W              = $clog2(BLOCK_D),
        localparam NODES                = BLOCK_D >> 1,
        localparam REQ_S                = BLOCK_D * LINE_S,             // Max allocable bytes
        localparam REQ_W                = UDATA_W + $clog2(REQ_S) + 1,
        localparam REP_W                = UDATA_W + 2*BLOCK_W + 1,       // Reply width is the user_data + base_addr + size (additional 1 bit for full resolution)
        localparam STAGES               = $clog2(BLOCK_D)
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        // From PU
        input wire                          i_rep_alloc_rdy,        // Ready signal from alloc reply stream
        input wire                          i_req_alloc_vld,
        input wire  [REQ_W-1:0]             i_req_alloc_data,
        // From SCB file
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        // From deallocator
        input wire  [BLOCK_W:0]             i_dealloc_new_free_ptr,
        
        // To PU
        output wire                         o_req_alloc_rdy,
        output wire                         o_rep_alloc_vld,        // 1 for valid reply
        output wire [REP_W-1:0]             o_rep_alloc_data,
        // To ext
        output wire                         o_full,
        output wire [BLOCK_W:0]             o_avail                 // Available space in block
    );
    
    wire                            wi_req_alloc_vld;
    wire    [REQ_W-1:0]             wi_req_alloc_data;
    
    wire    [REQ_W-UDATA_W-1:0]     w_req_alloc_size;
    wire    [UDATA_W-1:0]           w_req_alloc_udata;
    wire    [BLOCK_W:0]             w_req_quo;
    wire    [BLOCK_W:0]             w_req_rem;
    wire    [BLOCK_W:0]             w_req_lines;
    
    wire                            w_alloc_blk_found;
    wire                            w_alloc_vld;
    wire                            w_block_overflow;                       // True when free_ptr is negative, i.e, r_free_ptr lt 0 and block is full
    
    wire    [BLOCK_W-1:0]           w_alloc_blk_base;
    wire    [BLOCK_W:0]             w_new_alloc_free_ptr;                   // alloc modifier to free ptr
    wire    [BLOCK_W:0]             w_new_dealloc_free_ptr;                 // dealloc modifier to free ptr
    
    wire                            w_req_alloc_rdy;
    
    //reg     [BLOCK_W-1:0]           r_alloc_blk_base;                       // Physical base address of current free pointer
    reg     [BLOCK_W:0]             r_free_ptr;                            // Reg holding free ptr location within block | MSB marks overflow/block full
    reg                             r_rep_alloc_vld;
    reg     [REP_W-1:0]             r_rep_alloc_data;
    reg                             r_req_alloc_rdy;
        
    reg                             r_alloc_vld;
    reg     [UDATA_W-1:0]           r_alloc_udata;
    reg     [BLOCK_W:0]             r_req_lines;
    
    genvar i;
    
    integer k;
    
    assign w_req_alloc_size = wi_req_alloc_data[0 +: REQ_W-UDATA_W];
    assign w_req_alloc_udata = wi_req_alloc_data[REQ_W-1 -: UDATA_W];
    
    assign w_req_rem = w_req_alloc_size & (LINE_S - 1);
    assign w_req_quo = w_req_alloc_size >> LINE_W;
    assign w_req_lines = w_req_quo + w_req_rem;
    
    assign w_new_alloc_free_ptr = (w_alloc_vld) ? -(w_req_lines) : 'b0;
    assign w_new_dealloc_free_ptr = i_dealloc_new_free_ptr;
    
    assign w_block_overflow = r_free_ptr[BLOCK_W];
    assign w_alloc_blk_found = ((r_free_ptr + 1) >= w_req_lines && !w_block_overflow) ? (wi_req_alloc_vld & |w_req_lines) : 'b0;
    assign w_alloc_vld = w_alloc_blk_found & i_rep_alloc_rdy;
    assign w_req_alloc_rdy = (wi_req_alloc_vld && !w_alloc_vld) ? 1'b0 : 1'b1;
    
    assign o_full = r_free_ptr[BLOCK_W];
    assign o_avail = r_free_ptr[0 +: BLOCK_W] + 1;
    assign o_rep_alloc_vld = r_rep_alloc_vld;
    assign o_rep_alloc_data = r_rep_alloc_data;
    assign o_req_alloc_rdy = r_req_alloc_rdy;
    
    // Alloc Rx skid buffer
    assign wi_req_alloc_vld = i_req_alloc_vld;
    assign wi_req_alloc_data = i_req_alloc_data;
	
    // Virtual free ptr to Physical base address decoder
    (* dont_touch = "yes" *)
    dec_vtp #(
        .OREG_EN(1),
        .BITMAP(BLOCK_D)
    ) alloc_vtp_dec_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_vaddr(r_free_ptr),
        .i_scb(i_scb),
        
        .o_paddr(w_alloc_blk_base)
    );
    
    // Free ptr to keep track of available space in each block
    always @(posedge i_clk) begin
        r_free_ptr <= (i_rst) ? BLOCK_D - 1 : r_free_ptr + w_new_alloc_free_ptr + w_new_dealloc_free_ptr;
    end
    
    // Power init
    initial begin
        r_alloc_vld = 0;
        r_rep_alloc_vld = 0;
        r_rep_alloc_data = 0;
        r_req_alloc_rdy = 0;
        for (k = 0; k < 2; k = k+1) begin
            r_req_lines[k] = 0;
            r_alloc_udata[k] = 0;
        end
    end
    
    // Pipe regs
    always @(posedge i_clk) begin
        r_req_lines <= w_req_lines;
        r_alloc_udata <= w_req_alloc_udata;
        r_alloc_vld <= (i_rst) ? 0 : w_alloc_vld;
        r_req_alloc_rdy <= (i_rst) ? 0 : w_req_alloc_rdy;
    end
    
    always @(posedge i_clk) begin
        r_rep_alloc_vld <= r_alloc_vld;
        r_rep_alloc_data <= (r_alloc_vld) ? {r_alloc_udata, r_req_lines, w_alloc_blk_base} : r_rep_alloc_data;
    end
    
endmodule
