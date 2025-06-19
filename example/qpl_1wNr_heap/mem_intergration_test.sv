`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 01:33:28
// Design Name: 
// Module Name: mem_intergration_test
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


module mem_intergration_test #(
        //------------ STREAM -------------------
        parameter BUF_D                 = 7,                    // Stream buffer depth | Valid values for BUFFER_D = 7, 15, ...
        parameter BUF_OREG_EN           = 1,                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        parameter TBUF_OREG_EN          = 0,                    // Add a output register before translaotr stage
        parameter MEM_OREG_EN           = 0,                    // Register QPL translator address outputs
        parameter CHANS                 = 4,                    // Total number of address channels per block
        parameter DUAL_PORT             = 0,                    // Enable for Dual port per channel | Disable for single port per channel
        //------------ ALLOCATOR ----------------
        parameter LINE_BYTE             = 32,                   // Number of bytes per line
        parameter LINE_WORD             = 4,                   // Number of words per line
        parameter BLOCK_D               = 128,                  // Number of lines per block
        parameter UDATA_W               = 8,                    // User data width reserved within req/rep
        //------------ MEM ----------------------
        parameter MEM_DATA_W            = 64,                   // 64bit BRAM DATA_W
        parameter MEM_ADDR_W            = 9,                    // 512 elem BRAM ADDR_W
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
        input wire                              i_qpl_clk,
        input wire                              i_mem_clk,
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
        output wire [PADDR_W-1:0]               o_ps_paddr,
        // Memory
        input wire                              i_mem_wr_en,
        input wire  [MEM_ADDR_W-1:0]            i_mem_wr_addr,
        input wire  [MEM_DATA_W-1:0]            i_mem_wr_data,
        output wire [CHANS-2:0][MEM_DATA_W-1:0] o_mem_rd_data
    );
    
    wire    [CHANS-1:0]                 blk_aux_we;
    wire    [CHANS-1:0]                 blk_base_we;
    wire    [CHANS-1:0][PADDR_W-1:0]    blk_aux_addr;
    wire    [CHANS-1:0][PADDR_W-1:0]    blk_base_addr;
    wire    [CHANS-2:0][PADDR_W-1:0]    mem_base_addr;
    
    reg     [PADDR_W-1:0]               r_ps_paddr;
    
    genvar i;
    
    assign o_ps_paddr = r_ps_paddr;
    
    generate
        for (i = 0; i < CHANS-1; i = i+1) begin
            assign mem_base_addr[i] = blk_base_addr[i];
        end
    endgenerate
    
    qpl_top #(
        //------------ STREAM -------------------
        .BUF_D(BUF_D),                                  // Stream buffer depth | Valid values for BUFFER_D = 1, 3, 7, 15, ...
        .BUF_OREG_EN(BUF_OREG_EN),                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        .TBUF_OREG_EN(TBUF_OREG_EN),
        .MEM_OREG_EN(MEM_OREG_EN),
        .CHANS(CHANS),                    // Total number of address channels per block
        .DUAL_PORT(DUAL_PORT),
        //------------ ALLOCATOR ----------------
        .LINE_BYTE(LINE_BYTE),                   // Number of bytes per line
        .LINE_WORD(LINE_WORD),
        .BLOCK_D(BLOCK_D),                  // Number of lines per block
        .UDATA_W(UDATA_W)                    // User data width reserved within req/rep
    ) qpl_i (
        .i_clk(i_qpl_clk),
        .i_rst(i_rst),
        // Alloc req stream
        .i_req_alloc_vld(i_req_alloc_vld),
        .i_req_alloc_data(i_req_alloc_data),
        .o_req_alloc_rdy(o_req_alloc_rdy),
        // Dealloc req stream
        .i_req_dealloc_vld(i_req_dealloc_vld),
        .i_req_dealloc_data(i_req_dealloc_data),
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        // Alloc rep stream
        .i_rep_alloc_rdy(i_rep_alloc_rdy),        // Ready signal from alloc reply stream
        .o_rep_alloc_vld(o_rep_alloc_vld),        // 1 for valid reply
        .o_rep_alloc_data(o_rep_alloc_data),
        // Dealloc rep stream
        .i_rep_dealloc_rdy(i_rep_dealloc_rdy),      // Ready signal from dealloc reply stream
        .o_rep_dealloc_vld(o_rep_dealloc_vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(o_rep_dealloc_data),
        
        // Translator sigs
        // Read Channels
        .i_aux_vld(i_aux_vld),
        .i_aux_data(i_aux_data),
        .i_aux_user(i_aux_user),
        .i_aux_last(i_aux_last),
        .o_aux_rdy(o_aux_rdy),
        // Write Channels
        .i_base_vld(i_base_vld),
        .i_base_data(i_base_data),
        .i_base_user(i_base_user),
        .i_base_last(i_base_last),
        .o_base_rdy(o_base_rdy),
        
        // To Ext
        .o_blk_full(o_blk_full),
        .o_blk_avail(o_blk_avail),
        // To memory
        .o_blk_aux_we(blk_aux_we),
        .o_blk_base_we(blk_base_we),
        .o_blk_aux_addr(blk_aux_addr),
        .o_blk_base_addr(blk_base_addr)
    );
    
    mem_heap #(
        .CHANS(CHANS-1),
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W)
    ) heap_i (
        .i_wr_clk(i_mem_clk),
        .i_rd_clk(i_qpl_clk),
        .i_rst(i_rst),
        .i_wr_en(i_mem_wr_en),
        .i_wr_addr(i_mem_wr_addr),
        .i_wr_data(i_mem_wr_data),
        .i_rd_addr(mem_base_addr),
        
        .o_rd_data(o_mem_rd_data)
    );
    
    initial begin
        r_ps_paddr = 0;
    end
    
    always @(posedge i_qpl_clk) begin
        r_ps_paddr <= blk_base_addr[CHANS-1];
    end
    
endmodule
