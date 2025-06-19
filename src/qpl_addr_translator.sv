`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2025 13:00:09
// Design Name: 
// Module Name: qpl_addr_translator
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


module qpl_addr_translator #(
        parameter OREG_EN           = 1,
        parameter BLOCK_D           = 128,
        parameter WORD_W            = 8,
        localparam BLOCK_W          = $clog2(BLOCK_D),
        localparam NODES            = BLOCK_D/2,
        localparam STAGES           = $clog2(BLOCK_D)
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        input wire                          i_ignore,
        input wire                          i_vaddr_we,      // Passthrough of we signal
        input wire  [WORD_W-1:0]            i_vaddr_word,    // Passthrough of word signal
        input wire  [BLOCK_W-1:0]           i_vaddr_line,    // Offset line from base addr.
        
        output wire                         o_paddr_we,      // Passthrough we signal
        output wire [WORD_W-1:0]            o_paddr_word,    // Passthrough word
        output wire [BLOCK_W-1:0]           o_paddr_line     // Translated base addr
    );
    
    wire    [BLOCK_W-1:0]               w_paddr_line;
    
    assign o_paddr_line = w_paddr_line;
    
    generate
        if (OREG_EN) begin
            reg                                 r_paddr_we;
            reg     [WORD_W-1:0]                r_paddr_word;
            
            assign o_paddr_we = r_paddr_we;
            assign o_paddr_word = r_paddr_word;
            
            initial begin
                r_paddr_we = 0;
                r_paddr_word = 0;
            end
            
            always @(posedge i_clk) begin
                r_paddr_we <= (i_ignore) ? 0 : i_vaddr_we;
                r_paddr_word <= i_vaddr_word;
            end
        end
        else begin
            assign o_paddr_we = (i_ignore) ? 0 : i_vaddr_we;
            assign o_paddr_word = i_vaddr_word;
        end
    endgenerate
    
    //(* dont_touch = "yes" *)
    dec_vtp #(
        .OREG_EN(OREG_EN),
        .BITMAP(BLOCK_D)
    ) trans_rd_vtp_dec_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_vaddr(i_vaddr_line),
        .i_scb(i_scb),
        
        .o_paddr(w_paddr_line)
    );
    
endmodule
