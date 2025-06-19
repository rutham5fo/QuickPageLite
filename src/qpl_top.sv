`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 16:30:37
// Design Name: 
// Module Name: qpl_top
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


(* DONT_TOUCH = "YES" *)
module qpl_top #(
        //------------ STREAM -------------------
        parameter BUF_D                 = 7,                    // Stream buffer depth | Valid values for BUFFER_D = 7, 15, ...
        parameter BUF_OREG_EN           = 1,                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        parameter TBUF_OREG_EN          = 0,                    // Add a output register before translaotr stage
        parameter MEM_OREG_EN           = 1,                    // Register QPL translator address outputs
        parameter CHANS                 = 2,                    // Total number of address channels per block
        parameter DUAL_PORT             = 1,                    // Enable for Dual port per channel | Disable for single port per channel
        //------------ ALLOCATOR ----------------
        parameter LINE_BYTE             = 64,                   // Number of bytes per line
        parameter LINE_WORD             = 16,                   // Number of words per line
        parameter BLOCK_D               = 8,                  // Number of lines per block
        parameter UDATA_W               = 8,                    // User data width reserved within req/rep
        //------------ DERIVED ------------------
        localparam LINE_W               = $clog2(LINE_BYTE),
        localparam BLOCK_W              = $clog2(BLOCK_D),
        localparam NODES                = BLOCK_D >> 1,
        localparam REQ_S                = BLOCK_D * LINE_BYTE,             // Max allocable bytes
        localparam REQ_W                = UDATA_W + $clog2(REQ_S) + 1,
        localparam REP_W                = UDATA_W + 2*BLOCK_W + 1,       // Reply width is the user_data + base_addr + size (additional 1 bit for full resolution)
        localparam STAGES               = $clog2(BLOCK_D),
        localparam WORD_W               = $clog2(LINE_WORD),
        localparam VADDR_W              = BLOCK_W + WORD_W,     // {line [BLOCK_W], word [WORD_W]}
        localparam PADDR_W              = BLOCK_W + WORD_W
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        // Alloc req stream
        input wire                              i_req_alloc_vld,
        input wire  [REQ_W-1:0]                 i_req_alloc_data,
        output wire                             o_req_alloc_rdy,
        // Dealloc req stream
        input wire                              i_req_dealloc_vld,
        input wire  [REP_W-1:0]                 i_req_dealloc_data,
        output wire                             o_req_dealloc_rdy,
        // Alloc rep stream
        input wire                              i_rep_alloc_rdy,        // Ready signal from alloc reply stream
        output wire                             o_rep_alloc_vld,        // 1 for valid reply
        output wire [REP_W-1:0]                 o_rep_alloc_data,
        // Dealloc rep stream
        input wire                              i_rep_dealloc_rdy,      // Ready signal from dealloc reply stream
        output wire                             o_rep_dealloc_vld,      // 1 for valid dealloc
        output wire [REP_W-1:0]                 o_rep_dealloc_data,
        
        // Translator sigs
        // Auxiliary Channels
        input wire  [CHANS-1:0]                 i_aux_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_aux_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_aux_user,
        input wire  [CHANS-1:0]                 i_aux_last,
        output wire [CHANS-1:0]                 o_aux_rdy,
        // Base Channels
        input wire  [CHANS-1:0]                 i_base_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_base_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_base_user,
        input wire  [CHANS-1:0]                 i_base_last,
        output wire [CHANS-1:0]                 o_base_rdy,

        // To Ext
        output wire                             o_blk_full,
        output wire [BLOCK_W:0]                 o_blk_avail,
        // To memory
        output wire [CHANS-1:0]                 o_blk_aux_we,
        output wire [CHANS-1:0]                 o_blk_base_we,
        output wire [CHANS-1:0][PADDR_W-1:0]    o_blk_aux_addr,
        output wire [CHANS-1:0][PADDR_W-1:0]    o_blk_base_addr
    );
    
    wire    [STAGES-1:0][NODES-1:0]     w_scb;
    wire                                w_req_alloc_strm_rdy;
    wire                                w_req_alloc_strm_vld;
    wire    [REQ_W-1:0]                 w_req_alloc_strm_data;
    wire                                w_req_dealloc_strm_rdy;
    wire                                w_req_dealloc_strm_vld;
    wire    [REP_W-1:0]                 w_req_dealloc_strm_data;
    wire                                w_rep_alloc_strm_rdy;
    wire                                w_rep_alloc_strm_vld;
    wire    [REP_W-1:0]                 w_rep_alloc_strm_data;
    wire                                w_rep_dealloc_strm_rdy;
    wire                                w_rep_dealloc_strm_vld;
    wire    [REP_W-1:0]                 w_rep_dealloc_strm_data;
    
    wire    [CHANS-1:0]                 w_vaddr_base_vld;
    wire    [CHANS-1:0]                 w_vaddr_aux_vld;
    wire    [CHANS-1:0]                 w_key_en;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_key;
    wire    [CHANS-1:0][VADDR_W-1:0]    w_vaddr_base;
    wire    [CHANS-1:0][VADDR_W-1:0]    w_vaddr_aux;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_blk_offset;
    
    wire    [CHANS-1:0][PADDR_W-1:0]    w_blk_aux_addr;
    wire    [CHANS-1:0][PADDR_W-1:0]    w_blk_base_addr;
    
    genvar i;
    
    generate
        for (i = 0; i < CHANS; i = i+1) begin   :   gen_blk_out
            assign o_blk_aux_addr[i][0 +: PADDR_W] = w_blk_aux_addr[i][0 +: PADDR_W];
            assign o_blk_base_addr[i][0 +: PADDR_W] = w_blk_base_addr[i][0 +: PADDR_W];
        end
    endgenerate
    
    // Instantiate QPL manager
    //(* dont_touch = "yes" *)
    qpl_manager #(
        .LINE_S(LINE_BYTE),
        .BLOCK_D(BLOCK_D),
        .UDATA_W(UDATA_W)
    ) manager_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        // From PU
        .i_rep_alloc_rdy(w_rep_alloc_strm_rdy),        // Ready signal from alloc reply stream
        .i_req_alloc_vld(w_req_alloc_strm_vld),
        .i_req_alloc_data(w_req_alloc_strm_data),
        .i_rep_dealloc_rdy(w_rep_dealloc_strm_rdy),      // Ready signal from dealloc reply stream
        .i_req_dealloc_vld(w_req_dealloc_strm_vld),
        .i_req_dealloc_data(w_req_dealloc_strm_data),
        
        // To Translators
        .o_scb(w_scb),
        // To PU
        .o_req_alloc_rdy(w_req_alloc_strm_rdy),
        .o_rep_alloc_vld(w_rep_alloc_strm_vld),        // 1 for valid reply
        .o_rep_alloc_data(w_rep_alloc_strm_data),
        .o_req_dealloc_rdy(w_req_dealloc_strm_rdy),
        .o_rep_dealloc_vld(w_rep_dealloc_strm_vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(w_rep_dealloc_strm_data),
        // To ext
        .o_full(o_blk_full),
        .o_avail(o_blk_avail)
    );
    
    // Instantiate QPL Transactor
    //(* dont_touch = "yes" *)
    qpl_transactor #(
        .IREG_EN(TBUF_OREG_EN),
        .OREG_EN(MEM_OREG_EN),
        .DUAL_PORT(DUAL_PORT),
        .CHANS(CHANS),
        .BLOCK_D(BLOCK_D),
        .WORD_W(WORD_W)                // User data width
    ) transactor_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_scb(w_scb),
        .i_base_vld(w_vaddr_base_vld),
        .i_aux_vld(w_vaddr_aux_vld),                    // Key_en
        .i_key_en(w_key_en),
        .i_key(w_key),
        .i_base_vaddr(w_vaddr_base),
        .i_aux_vaddr(w_vaddr_aux),
        
        .o_blk_offset(w_blk_offset),               // Base address offset for virtual address generation in PU
        .o_blk_base_we(o_blk_base_we),
        .o_blk_aux_we(o_blk_aux_we),
        .o_blk_base_addr(w_blk_base_addr),
        .o_blk_aux_addr(w_blk_aux_addr)
    );
    
    // Manager channels
    //(* dont_touch = "yes" *)
    manager_channel #(
        .RESET_N(0),
        .BUF_OREG_EN(BUF_OREG_EN),
        .BUF_D(BUF_D),
        .REQ_W(REQ_W),
        .REP_W(REP_W),
        .BLOCK_W(BLOCK_W)
    ) man_chan_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .s_req_alloc_vld(i_req_alloc_vld),
        .s_req_alloc_data(i_req_alloc_data),
        .m_req_alloc_rdy(w_req_alloc_strm_rdy),
        .s_req_dealloc_vld(i_req_dealloc_vld),
        .s_req_dealloc_data(i_req_dealloc_data),
        .m_req_dealloc_rdy(w_req_dealloc_strm_rdy),
        .s_rep_alloc_vld(w_rep_alloc_strm_vld),
        .s_rep_alloc_data(w_rep_alloc_strm_data),
        .m_rep_alloc_rdy(i_rep_alloc_rdy),
        .s_rep_dealloc_vld(w_rep_dealloc_strm_vld),
        .s_rep_dealloc_data(w_rep_dealloc_strm_data),
        .m_rep_dealloc_rdy(i_rep_dealloc_rdy),
        
        .s_req_alloc_rdy(o_req_alloc_rdy),
        .m_req_alloc_vld(w_req_alloc_strm_vld),
        .m_req_alloc_data(w_req_alloc_strm_data),
        .s_req_dealloc_rdy(o_req_dealloc_rdy),
        .m_req_dealloc_vld(w_req_dealloc_strm_vld),
        .m_req_dealloc_data(w_req_dealloc_strm_data),
        .s_rep_alloc_rdy(w_rep_alloc_strm_rdy),
        .m_rep_alloc_vld(o_rep_alloc_vld),
        .m_rep_alloc_data(o_rep_alloc_data),
        .s_rep_dealloc_rdy(w_rep_dealloc_strm_rdy),
        .m_rep_dealloc_vld(o_rep_dealloc_vld),
        .m_rep_dealloc_data(o_rep_dealloc_data)
    );
    
    // Only the Base channel's TUSER is connected to the ptv decoder to
    // generate the base_pointer address. Hence any memory access must 
    // start with a dummy write to the object of interest to obtain the 
    // base pointer to facilitate further vtp translations.
    
    //(* dont_touch = "yes" *)
	transactor_channel #(
	   .OREG_EN(TBUF_OREG_EN),
	   .DUAL_PORT(DUAL_PORT),
	   .CHANS(CHANS),
	   .VADDR_W(VADDR_W),
	   .BLOCK_W(BLOCK_W),
	   .WORD_W(WORD_W)
	) trans_chan_i (
	   .i_clk(i_clk),
	   .i_rst(i_rst),
	   .i_base_ptr(w_blk_offset),
	   // AUX AXIS
	   .aux_s_tvalid(i_aux_vld),
	   .aux_s_tdata(i_aux_data),
	   .aux_s_tuser(i_aux_user),
	   .aux_s_tlast(i_aux_last),
	   .aux_m_tready(-1),
	   // BASE AXIS
	   .base_s_tvalid(i_base_vld),
	   .base_s_tdata(i_base_data),
	   .base_s_tuser(i_base_user),
	   .base_s_tlast(i_base_last),
	   .base_m_tready(-1),
	   
	   // AUX Axis
	   .aux_s_tready(o_aux_rdy),
	   .aux_m_tvalid(w_vaddr_aux_vld),
	   .aux_m_tdata(w_vaddr_aux),
	   .aux_m_tuser(),
	   .aux_p_tvalid(),
	   // BASE Axis
	   .base_s_tready(o_base_rdy),
	   .base_m_tvalid(w_vaddr_base_vld),
	   .base_m_tdata(w_vaddr_base),
	   .base_m_tuser(w_key),         // Key
	   .base_p_tvalid(w_key_en)      // Key_en
	);
    
endmodule
