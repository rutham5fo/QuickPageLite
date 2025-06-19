`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 01:11:09
// Design Name: 
// Module Name: qpl_transactor
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



module qpl_transactor #(
        parameter IREG_EN           = 0,
        parameter OREG_EN           = 1,
        parameter DUAL_PORT         = 1,
        parameter CHANS             = 8,
        parameter BLOCK_D           = 256,
        parameter WORD_W            = 8,                // User data width
        localparam BLOCK_W          = $clog2(BLOCK_D),
        localparam NODES            = BLOCK_D/2,
        localparam STAGES           = $clog2(BLOCK_D),
        localparam VADDR_W          = BLOCK_W + WORD_W,     // {line [BLOCK_W], word [WORD_W]}
        localparam PADDR_W          = BLOCK_W + WORD_W
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [STAGES-1:0][NODES-1:0]     i_scb,
        input wire  [CHANS-1:0]                 i_base_vld,
        input wire  [CHANS-1:0]                 i_aux_vld,
        input wire  [CHANS-1:0]                 i_key_en,               // Used to enable vtp decoder register
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_key,                  // Used to decode the target object's virtual base pointer
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_base_vaddr,
        input wire  [CHANS-1:0][VADDR_W-1:0]    i_aux_vaddr,
        
        output wire [CHANS-1:0][BLOCK_W-1:0]    o_blk_offset,               // Base address offset for virtual address generation in PU
        output wire [CHANS-1:0]                 o_blk_base_we,
        output wire [CHANS-1:0]                 o_blk_aux_we,
        output wire [CHANS-1:0][PADDR_W-1:0]    o_blk_base_addr,
        output wire [CHANS-1:0][PADDR_W-1:0]    o_blk_aux_addr
    );
    
    wire    [CHANS-1:0]                 w_vaddr_base_we;
    wire    [CHANS-1:0]                 w_vaddr_aux_we;
    wire    [CHANS-1:0]                 w_key_en;
    wire    [CHANS-1:0][1:0]            w_rdwr_ignore_pre;
    wire    [CHANS-1:0]                 w_rdwr_ignore_post;
    wire    [CHANS-1:0][WORD_W-1:0]     w_vaddr_base_word;
    wire    [CHANS-1:0][WORD_W-1:0]     w_vaddr_aux_word;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_vaddr_base_line;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_vaddr_aux_line;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_vaddr_base;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_vaddr_offset;
    wire    [CHANS-1:0]                 w_paddr_base_we;
    wire    [CHANS-1:0]                 w_paddr_aux_we;
    wire    [CHANS-1:0][WORD_W-1:0]     w_paddr_base_word;
    wire    [CHANS-1:0][WORD_W-1:0]     w_paddr_aux_word;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_paddr_base_line;
    wire    [CHANS-1:0][BLOCK_W-1:0]    w_paddr_aux_line;
    
    genvar i;
    
    generate
        for (i = 0; i < CHANS; i = i+1) begin       :   gen_chan_wires
            assign w_vaddr_base_we[i] = i_base_vld[i];
            assign w_vaddr_aux_we[i] = i_aux_vld[i];
            assign w_key_en[i] = i_key_en[i];
            assign w_rdwr_ignore_post[i] = w_rdwr_ignore_pre[i][IREG_EN];
            assign w_vaddr_base_word[i][0 +: WORD_W] = i_base_vaddr[i][0 +: WORD_W];
            assign w_vaddr_aux_word[i][0 +: WORD_W] = i_aux_vaddr[i][0 +: WORD_W];
            assign w_vaddr_base_line[i][0 +: BLOCK_W] = i_base_vaddr[i][WORD_W +: BLOCK_W];
            assign w_vaddr_aux_line[i][0 +: BLOCK_W] = i_aux_vaddr[i][WORD_W +: BLOCK_W];
            assign w_vaddr_base[i][0 +: BLOCK_W] = i_key[i][0 +: BLOCK_W];
            
            assign o_blk_base_we[i] = w_paddr_base_we[i]; 
            assign o_blk_aux_we[i] = w_paddr_aux_we[i];
            assign o_blk_base_addr[i][0 +: WORD_W] = w_paddr_base_word[i][0 +: WORD_W];
            assign o_blk_aux_addr[i][0 +: WORD_W] = w_paddr_aux_word[i][0 +: WORD_W];
            assign o_blk_base_addr[i][WORD_W +: BLOCK_W] = w_paddr_base_line[i][0 +: BLOCK_W];
            assign o_blk_aux_addr[i][WORD_W +: BLOCK_W] = w_paddr_aux_line[i][0 +: BLOCK_W];
            assign o_blk_offset[i][0 +: BLOCK_W] = w_vaddr_offset[i][0 +: BLOCK_W];
        end
    endgenerate
    
    generate
        for (i = 0; i < CHANS; i = i+1) begin                   :   gen_trans_chan
            //(* dont_touch = "yes" *)
            qpl_base_translator #(
                //.IREG_EN(IREG_EN),
                .BLOCK_D(BLOCK_D)
            ) base_Tobject_i (
                .i_clk(i_clk),
                .i_rst(i_rst),
                .i_scb(i_scb),
                .i_oreg_en(w_key_en[i]),
                .i_vaddr_base(w_vaddr_base[i][0 +: BLOCK_W]),       // Base address of object
                
                .o_rdwr_ignore(w_rdwr_ignore_pre[i][0 +: 1]),
                .o_vaddr_base(w_vaddr_offset[i][0 +: BLOCK_W])        // Intermediate base pointer
            );
            			
			//(* dont_touch = "yes" *)
			qpl_addr_translator #(
			    .OREG_EN(OREG_EN),
				.BLOCK_D(BLOCK_D),
				.WORD_W(WORD_W)
			) base_Taddr_i (
				.i_clk(i_clk),
				.i_rst(i_rst),
				.i_scb(i_scb),
				.i_ignore(w_rdwr_ignore_post[i]),
				.i_vaddr_we(w_vaddr_base_we[i]),      // Passthrough of write enable signal (if used)
				.i_vaddr_word(w_vaddr_base_word[i][0 +: WORD_W]),
				.i_vaddr_line(w_vaddr_base_line[i][0 +: BLOCK_W]),    // Offset line from base addr.
				
				.o_paddr_we(w_paddr_base_we[i]),      // Passthrough we signal
				.o_paddr_word(w_paddr_base_word[i][0 +: WORD_W]),
				.o_paddr_line(w_paddr_base_line[i][0 +: BLOCK_W])     // Translated base addr
			);
			
			if (DUAL_PORT) begin                     :   gen_Dport_trans
			    //(* dont_touch = "yes" *)
                qpl_addr_translator #(
                    .OREG_EN(OREG_EN),
				    .BLOCK_D(BLOCK_D),
				    .WORD_W(WORD_W)
			    ) aux_Taddr_i (
				    .i_clk(i_clk),
				    .i_rst(i_rst),
				    .i_scb(i_scb),
				    .i_ignore(w_rdwr_ignore_post[i]),
				    .i_vaddr_we(w_vaddr_aux_we[i]),      // Passthrough of read enable signal (if used)
				    .i_vaddr_word(w_vaddr_aux_word[i][0 +: WORD_W]),
				    .i_vaddr_line(w_vaddr_aux_line[i][0 +: BLOCK_W]),    // Offset line from base addr.
				    
				    .o_paddr_we(w_paddr_aux_we[i]),      // Passthrough we signal
				    .o_paddr_word(w_paddr_aux_word[i][0 +: WORD_W]),
				    .o_paddr_line(w_paddr_aux_line[i][0 +: BLOCK_W])     // Translated base addr
			    );
			end
			else begin                               :   gen_Sport_trans
			    assign w_paddr_aux_we[i] = 'b0;
			    assign w_paddr_aux_word[i] = 'b0;
			    assign w_paddr_aux_line[i] = 'b0;
			end
		end
    endgenerate
    
endmodule
