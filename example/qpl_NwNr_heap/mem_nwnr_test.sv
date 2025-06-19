`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 23:08:02
// Design Name: 
// Module Name: mem_nwnr_test
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

/*
module mem_nwnr_test #(
        //------------ STREAM -------------------
        parameter BUF_D                 = 7,                    // Stream buffer depth | Valid values for BUFFER_D = 7, 15, ...
        parameter BUF_OREG_EN           = 1,                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        parameter TBUF_OREG_EN          = 0,                    // Add a output register before translaotr stage
        parameter MEM_OREG_EN           = 0,                    // Register QPL translator address outputs
        parameter CHANS                 = 2,                    // Total number of address channels per block
        parameter DUAL_PORT             = 1,                    // Enable for Dual port per channel | Disable for single port per channel
        //------------ ALLOCATOR ----------------
        parameter LINE_BYTE             = 16,                   // Number of bytes per line
        parameter LINE_WORD             = 2,                   // Number of words per line
        parameter BLOCK_D               = 256,                  // Number of lines per block
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
        // Memory
        input wire  [CHANS-1:0][MEM_DATA_W-1:0] i_mem_wr_data,
        output wire [CHANS-1:0][MEM_DATA_W-1:0] o_mem_rd_data
    );
    
    wire    [CHANS-1:0]                 blk_aux_we;
    wire    [CHANS-1:0]                 blk_base_we;
    wire    [CHANS-1:0][PADDR_W-1:0]    blk_aux_addr;
    wire    [CHANS-1:0][PADDR_W-1:0]    blk_base_addr;
    
    wire    [PADDR_W-1:0]               mem_base_addr;
    wire    [PADDR_W-1:0]               mem_aux_addr;
    wire                                mem_base_wen;
    wire                                mem_aux_wen;
    wire    [MEM_DATA_W-1:0]            mem_base_data;
    wire    [MEM_DATA_W-1:0]            mem_aux_data;
    
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
    
    MUX #(
        .OREG_EN(0),
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W),
        .CHANS(CHANS)
    ) mem_mux_i (
        .i_clk(i_mem_clk),
        .i_rst(i_rst),
        .i_en(1'b1),
        .i_base_addr(blk_base_addr),
        .i_aux_addr(blk_aux_addr),
        .i_base_wen(blk_base_we),
        .i_aux_wen(blk_aux_we),
        .i_base_data(i_mem_wr_data),
        .i_aux_data(mem_aux_data),
        
        .o_base_addr(mem_base_addr),
        .o_aux_addr(mem_aux_addr),
        .o_base_wen(mem_base_wen),
        .o_aux_wen(mem_aux_wen),
        .o_base_data(mem_base_data),
        .o_aux_data(o_mem_rd_data)
    );
    
    heap_nwnr #(
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W)
    ) heap_i (
        .i_clk(i_mem_clk),
        .i_rst(i_rst),
        .i_wr_en(mem_base_wen),
        .i_wr_addr(mem_base_addr),
        .i_wr_data(mem_base_data),
        .i_rd_addr(mem_aux_addr),
        
        .o_rd_data(mem_aux_data)
    );
    
endmodule
*/

module mem_nwnr_test #(
        //------------ STREAM -------------------
        parameter BUF_D                 = 7,                    // Stream buffer depth | Valid values for BUFFER_D = 7, 15, ...
        parameter BUF_OREG_EN           = 1,                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        parameter TBUF_OREG_EN          = 0,                    // Add a output register before translaotr stage
        parameter MEM_OREG_EN           = 1,                    // Register QPL translator address outputs
        parameter CHANS                 = 4,                    // Total number of address channels per block
        parameter DUAL_PORT             = 1,                    // Enable for Dual port per channel | Disable for single port per channel
        //------------ ALLOCATOR ----------------
        parameter LINE_BYTE             = 16,                   // Number of bytes per line
        parameter LINE_WORD             = 2,                   // Number of words per line
        parameter BLOCK_D               = 256,                  // Number of lines per block
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
        
        //------------------ QPL_BLOCK_0 ----------------------------------------
        // Alloc req stream
        input wire                              i_req0_alloc_vld,
        input wire  [REQ_W-1:0]                 i_req0_alloc_data,
        output wire                             o_req0_alloc_rdy,
        // Dealloc req stream
        input wire                              i_req0_dealloc_vld,
        input wire  [REP_W-1:0]                 i_req0_dealloc_data,
        output wire                             o_req0_dealloc_rdy,
        // Alloc rep stream
        input wire                              i_rep0_alloc_rdy,        // Ready signal from alloc reply stream
        output wire                             o_rep0_alloc_vld,        // 1 for valid reply
        output wire [REP_W-1:0]                 o_rep0_alloc_data,
        // Dealloc rep stream
        input wire                              i_rep0_dealloc_rdy,      // Ready signal from dealloc reply stream
        output wire                             o_rep0_dealloc_vld,      // 1 for valid dealloc
        output wire [REP_W-1:0]                 o_rep0_dealloc_data,
        
        // Translator sigs
        // Auxiliary Channels
        input wire  [CHANS-1:0]                 i_aux0_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_aux0_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_aux0_user,
        input wire  [CHANS-1:0]                 i_aux0_last,
        output wire [CHANS-1:0]                 o_aux0_rdy,
        // Base Channels
        input wire  [CHANS-1:0]                 i_base0_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_base0_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_base0_user,
        input wire  [CHANS-1:0]                 i_base0_last,
        output wire [CHANS-1:0]                 o_base0_rdy,
        // Network -> Used by block 0 to access addresses generated by block 1 (the below nets provide pre-translated addr)
        input wire                              i_net1_base_we,
        input wire                              i_net1_aux_we,
        input wire  [MEM_ADDR_W-1:0]            i_net1_base_addr,
        input wire  [MEM_ADDR_W-1:0]            i_net1_aux_addr,

        // To Ext
        output wire                             o_blk0_full,
        output wire [BLOCK_W:0]                 o_blk0_avail,
        // Network -> Used by other qpl block_1 to perform translation of objects in block_0
        output wire                             o_net0_base_we,
        output wire                             o_net0_aux_we,
        output wire [MEM_ADDR_W-1:0]            o_net0_base_addr,
        output wire [MEM_ADDR_W-1:0]            o_net0_aux_addr,
        // Memory
        input wire  [CHANS-1:0][MEM_DATA_W-1:0] i_mem0_wr_data,
        output wire [CHANS-1:0][MEM_DATA_W-1:0] o_mem0_rd_data,
        //----------------------------------------------------------------------------
        
        //------------------ QPL_BLOCK_0 ----------------------------------------
        // Alloc req stream
        input wire                              i_req1_alloc_vld,
        input wire  [REQ_W-1:0]                 i_req1_alloc_data,
        output wire                             o_req1_alloc_rdy,
        // Dealloc req stream
        input wire                              i_req1_dealloc_vld,
        input wire  [REP_W-1:0]                 i_req1_dealloc_data,
        output wire                             o_req1_dealloc_rdy,
        // Alloc rep stream
        input wire                              i_rep1_alloc_rdy,        // Ready signal from alloc reply stream
        output wire                             o_rep1_alloc_vld,        // 1 for valid reply
        output wire [REP_W-1:0]                 o_rep1_alloc_data,
        // Dealloc rep stream
        input wire                              i_rep1_dealloc_rdy,      // Ready signal from dealloc reply stream
        output wire                             o_rep1_dealloc_vld,      // 1 for valid dealloc
        output wire [REP_W-1:0]                 o_rep1_dealloc_data,
        
        // Translator sigs
        // Auxiliary Channels
        input wire  [CHANS-1:0]                 i_aux1_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_aux1_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_aux1_user,
        input wire  [CHANS-1:0]                 i_aux1_last,
        output wire [CHANS-1:0]                 o_aux1_rdy,
        // Base Channels
        input wire  [CHANS-1:0]                 i_base1_vld,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_base1_data,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_base1_user,
        input wire  [CHANS-1:0]                 i_base1_last,
        output wire [CHANS-1:0]                 o_base1_rdy,
        // Network -> Used by block 1 to access addresses generated by block 0 (the below nets provide pre-translated addr)
        input wire                              i_net0_base_we,
        input wire                              i_net0_aux_we,
        input wire  [MEM_ADDR_W-1:0]            i_net0_base_addr,
        input wire  [MEM_ADDR_W-1:0]            i_net0_aux_addr,

        // To Ext
        output wire                             o_blk1_full,
        output wire [BLOCK_W:0]                 o_blk1_avail,
        // Network -> Used by other qpl block_0 to perform translation of objects in block_1
        output wire                             o_net1_base_we,
        output wire                             o_net1_aux_we,
        output wire [PADDR_W-1:0]               o_net1_base_addr,
        output wire [PADDR_W-1:0]               o_net1_aux_addr,
        // Memory
        input wire  [CHANS-1:0][MEM_DATA_W-1:0] i_mem1_wr_data,
        output wire [CHANS-1:0][MEM_DATA_W-1:0] o_mem1_rd_data
        //----------------------------------------------------------------------------
    );
    
    localparam BLOCKS                   = 2;                                    // Heap is shared by two QPL blocks
    localparam ADDR_EXT                 = (BLOCKS == 1) ? 0 : $clog2(BLOCKS);   // Address field extension
    localparam EXT_ADDR_W               = PADDR_W + ADDR_EXT;                   // Extended address towards memory
    localparam ICON_OUT                 = 4*CHANS;
    localparam ICON_IN                  = 4*CHANS;
    localparam MUX_CH                   = 2;
    localparam MUX_DW                   = ICON_OUT*MEM_DATA_W;
    localparam MUX_AW                   = ICON_OUT*MEM_ADDR_W;
    
    wire    [CHANS-1:0]                     w_blk0_aux_we;
    wire    [CHANS-1:0]                     w_blk0_base_we;
    wire    [CHANS-1:0][PADDR_W-1:0]        w_blk0_aux_addr;
    wire    [CHANS-1:0][PADDR_W-1:0]        w_blk0_base_addr;
    
    wire    [CHANS-1:0]                     w_blk1_aux_we;
    wire    [CHANS-1:0]                     w_blk1_base_we;
    wire    [CHANS-1:0][PADDR_W-1:0]        w_blk1_aux_addr;
    wire    [CHANS-1:0][PADDR_W-1:0]        w_blk1_base_addr;
    
    wire    [CHANS-1:0]                     wt_blk0_aux_we;
    wire    [CHANS-1:0]                     wt_blk0_base_we;
    wire    [CHANS-1:0][MEM_ADDR_W-1:0]     wt_blk0_aux_addr;
    wire    [CHANS-1:0][MEM_ADDR_W-1:0]     wt_blk0_base_addr;
    
    wire    [CHANS-1:0]                     wt_blk1_aux_we;
    wire    [CHANS-1:0]                     wt_blk1_base_we;
    wire    [CHANS-1:0][MEM_ADDR_W-1:0]     wt_blk1_aux_addr;
    wire    [CHANS-1:0][MEM_ADDR_W-1:0]     wt_blk1_base_addr;
    
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_icon0_base_addr;
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_icon0_aux_addr;
    wire    [ICON_OUT-1:0]                  w_icon0_aux_we;
    wire    [ICON_OUT-1:0][MEM_DATA_W-1:0]  w_icon0_aux_data;
    
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_icon1_base_addr;
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_icon1_aux_addr;
    wire    [ICON_OUT-1:0]                  w_icon1_aux_we;
    wire    [ICON_OUT-1:0][MEM_DATA_W-1:0]  w_icon1_aux_data;
    
    wire    [MUX_CH-1:0][ICON_OUT-1:0]      w_mux_wr_en;
    wire    [MUX_CH-1:0][MUX_AW-1:0]        w_mux_wr_addr;
    wire    [MUX_CH-1:0][MUX_DW-1:0]        w_mux_wr_data;
    wire    [MUX_CH-1:0][MUX_AW-1:0]        w_mux_rd_addr;
    wire    [MUX_CH-1:0][MUX_DW-1:0]        w_mux_rd_data;
    
    wire    [ICON_OUT-1:0]                  w_mem_wr_en;
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_mem_wr_addr;
    wire    [ICON_OUT-1:0][MEM_DATA_W-1:0]  w_mem_wr_data;
    wire    [ICON_OUT-1:0][MEM_ADDR_W-1:0]  w_mem_rd_addr;
    wire    [ICON_OUT-1:0][MEM_DATA_W-1:0]  w_mem_rd_data;
    
    genvar i;
    
    // Append the corresponding Block select bit to each translated address going out to network
    assign o_net0_aux_we = w_blk0_aux_we[CHANS-1];
    assign o_net0_aux_addr = {1'b0, w_blk0_aux_addr[CHANS-1]};
    assign o_net0_base_we = w_blk0_base_we[CHANS-1];
    assign o_net0_base_addr = {1'b0, w_blk0_base_addr[CHANS-1]};
        
    assign o_net1_aux_we = w_blk1_aux_we[CHANS-1];
    assign o_net1_aux_addr = {1'b1, w_blk1_aux_addr[CHANS-1]};
    assign o_net1_base_we = w_blk1_base_we[CHANS-1];
    assign o_net1_base_addr = {1'b1, w_blk1_base_addr[CHANS-1]};
    
    // Set mux inputs
    assign w_mux_wr_en[0] = w_icon0_aux_we;
    assign w_mux_wr_en[1] = w_icon1_aux_we;
    assign w_mux_wr_addr[0] = w_icon0_aux_addr;
    assign w_mux_wr_addr[1] = w_icon1_aux_addr;
    assign w_mux_wr_data[0] = w_icon0_aux_data;
    assign w_mux_wr_data[1] = w_icon1_aux_data;
    assign w_mux_rd_addr[0] = w_icon0_base_addr;
    assign w_mux_rd_addr[1] = w_icon1_base_addr;
        
    generate
        for (i = 0; i < CHANS; i = i+1) begin       :   gen_blk_nets
            if (i == CHANS-1) begin
                assign wt_blk0_aux_we[i] = i_net1_aux_we;
                assign wt_blk0_base_we[i] = i_net1_base_we;
                assign wt_blk0_aux_addr[i] = i_net1_aux_addr;
                assign wt_blk0_base_addr[i] = i_net1_base_addr;
                
                assign wt_blk1_aux_we[i] = i_net0_aux_we;
                assign wt_blk1_base_we[i] = i_net0_base_we;
                assign wt_blk1_aux_addr[i] = i_net0_aux_addr;
                assign wt_blk1_base_addr[i] = i_net0_base_addr;
            end
            else begin
                assign wt_blk0_aux_we[i] = w_blk0_aux_we[i];
                assign wt_blk0_base_we[i] = w_blk0_base_we[i];
                assign wt_blk0_aux_addr[i] = {1'b0, w_blk0_aux_addr[i]};
                assign wt_blk0_base_addr[i] = {1'b0, w_blk0_base_addr[i]};
                
                assign wt_blk1_aux_we[i] = w_blk1_aux_we[i];
                assign wt_blk1_base_we[i] = w_blk1_base_we[i];
                assign wt_blk1_aux_addr[i] = {1'b1, w_blk1_aux_addr[i]};
                assign wt_blk1_base_addr[i] = {1'b1, w_blk1_base_addr[i]};
            end
        end
    endgenerate
    
    // BLOCK 0
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
    ) qpl_0_i (
        .i_clk(i_qpl_clk),
        .i_rst(i_rst),
        // Alloc req stream
        .i_req_alloc_vld(i_req0_alloc_vld),
        .i_req_alloc_data(i_req0_alloc_data),
        .o_req_alloc_rdy(o_req0_alloc_rdy),
        // Dealloc req stream
        .i_req_dealloc_vld(i_req0_dealloc_vld),
        .i_req_dealloc_data(i_req0_dealloc_data),
        .o_req_dealloc_rdy(o_req0_dealloc_rdy),
        // Alloc rep stream
        .i_rep_alloc_rdy(i_rep0_alloc_rdy),        // Ready signal from alloc reply stream
        .o_rep_alloc_vld(o_rep0_alloc_vld),        // 1 for valid reply
        .o_rep_alloc_data(o_rep0_alloc_data),
        // Dealloc rep stream
        .i_rep_dealloc_rdy(i_rep0_dealloc_rdy),      // Ready signal from dealloc reply stream
        .o_rep_dealloc_vld(o_rep0_dealloc_vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(o_rep0_dealloc_data),
        
        // Translator sigs
        // Read Channels
        .i_aux_vld(i_aux0_vld),
        .i_aux_data(i_aux0_data),
        .i_aux_user(i_aux0_user),
        .i_aux_last(i_aux0_last),
        .o_aux_rdy(o_aux0_rdy),
        // Write Channels
        .i_base_vld(i_base0_vld),
        .i_base_data(i_base0_data),
        .i_base_user(i_base0_user),
        .i_base_last(i_base0_last),
        .o_base_rdy(o_base0_rdy),
        
        // To Ext
        .o_blk_full(o_blk0_full),
        .o_blk_avail(o_blk0_avail),
        // To memory
        .o_blk_aux_we(w_blk0_aux_we),
        .o_blk_base_we(w_blk0_base_we),
        .o_blk_aux_addr(w_blk0_aux_addr),
        .o_blk_base_addr(w_blk0_base_addr)
    );
    
    // BLOCK 1
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
    ) qpl_1_i (
        .i_clk(i_qpl_clk),
        .i_rst(i_rst),
        // Alloc req stream
        .i_req_alloc_vld(i_req1_alloc_vld),
        .i_req_alloc_data(i_req1_alloc_data),
        .o_req_alloc_rdy(o_req1_alloc_rdy),
        // Dealloc req stream
        .i_req_dealloc_vld(i_req1_dealloc_vld),
        .i_req_dealloc_data(i_req1_dealloc_data),
        .o_req_dealloc_rdy(o_req1_dealloc_rdy),
        // Alloc rep stream
        .i_rep_alloc_rdy(i_rep1_alloc_rdy),        // Ready signal from alloc reply stream
        .o_rep_alloc_vld(o_rep1_alloc_vld),        // 1 for valid reply
        .o_rep_alloc_data(o_rep1_alloc_data),
        // Dealloc rep stream
        .i_rep_dealloc_rdy(i_rep1_dealloc_rdy),      // Ready signal from dealloc reply stream
        .o_rep_dealloc_vld(o_rep1_dealloc_vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(o_rep1_dealloc_data),
        
        // Translator sigs
        // Read Channels
        .i_aux_vld(i_aux1_vld),
        .i_aux_data(i_aux1_data),
        .i_aux_user(i_aux1_user),
        .i_aux_last(i_aux1_last),
        .o_aux_rdy(o_aux1_rdy),
        // Write Channels
        .i_base_vld(i_base1_vld),
        .i_base_data(i_base1_data),
        .i_base_user(i_base1_user),
        .i_base_last(i_base1_last),
        .o_base_rdy(o_base1_rdy),
        
        // To Ext
        .o_blk_full(o_blk1_full),
        .o_blk_avail(o_blk1_avail),
        // To memory
        .o_blk_aux_we(w_blk1_aux_we),
        .o_blk_base_we(w_blk1_base_we),
        .o_blk_aux_addr(w_blk1_aux_addr),
        .o_blk_base_addr(w_blk1_base_addr)
    );
    
    // QPL Block_0 Interconnect
    (* dont_touch = "yes" *)
    heap_interconnect #(
        .PIPELINE(0),
        .CHANS(CHANS),
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W)
    ) heap_icon0_i (
        .i_clk(i_qpl_clk),
        .i_rst(i_rst),
        .i_wr_en(wt_blk0_aux_we),
        .i_rd_addr(wt_blk0_base_addr),
        .i_wr_addr(wt_blk0_aux_addr),
        .i_wr_data(i_mem0_wr_data),
        .i_rd_data(w_mux_rd_data[0]),
        
        .o_wr_en(w_icon0_aux_we),
        .o_rd_addr(w_icon0_base_addr),
        .o_wr_addr(w_icon0_aux_addr),
        .o_wr_data(w_icon0_aux_data),
        .o_rd_data(o_mem0_rd_data)
    );
    
    // QPL Block_1 Interconnect
    (* dont_touch = "yes" *)
    heap_interconnect #(
        .PIPELINE(0),
        .CHANS(CHANS),
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W)
    ) heap_icon1_i (
        .i_clk(i_qpl_clk),
        .i_rst(i_rst),
        .i_wr_en(wt_blk1_aux_we),
        .i_rd_addr(wt_blk1_base_addr),
        .i_wr_addr(wt_blk1_aux_addr),
        .i_wr_data(i_mem1_wr_data),
        .i_rd_data(w_mux_rd_data[1]),
        
        .o_wr_en(w_icon1_aux_we),
        .o_rd_addr(w_icon1_base_addr),
        .o_wr_addr(w_icon1_aux_addr),
        .o_wr_data(w_icon1_aux_data),
        .o_rd_data(o_mem1_rd_data)
    );
    
    // Heap Block MUX
    (* dont_touch = "yes" *)
    MUX #(
        .OREG_EN(0),
        .DATA_W(MUX_DW),
        .ADDR_W(MUX_AW),
        .WE_W(ICON_OUT),
        .CHANS(MUX_CH)
    ) heap_mux_i (
        .i_clk(i_mem_clk),
        .i_rst(i_rst),
        .i_en(1'b1),
        .i_wr_en(w_mux_wr_en),
        .i_wr_addr(w_mux_wr_addr),
        .i_rd_addr(w_mux_rd_addr),
        .i_wr_data(w_mux_wr_data),
        .i_rd_data(w_mem_rd_data),
        
        .o_wr_addr(w_mem_wr_addr),
        .o_rd_addr(w_mem_rd_addr),
        .o_wr_en(w_mem_wr_en),
        .o_wr_data(w_mem_wr_data),
        .o_rd_data(w_mux_rd_data)
    );
    
    // QPL HEAP
    (* dont_touch = "yes" *)
    heap_nwnr #(
        .MEM_D(ICON_OUT),
        .DATA_W(MEM_DATA_W),
        .ADDR_W(MEM_ADDR_W)
    ) heap_i (
        .i_clk(i_mem_clk),
        .i_rst(i_rst),
        .i_wr_en(w_mem_wr_en),
        .i_wr_addr(w_mem_wr_addr),
        .i_wr_data(w_mem_wr_data),
        .i_rd_addr(w_mem_rd_addr),
        
        .o_rd_data(w_mem_rd_data)
    );
    
endmodule
