`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2025 11:41:54
// Design Name: 
// Module Name: qpl_base_translator
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


module qpl_base_translator #(
        parameter BLOCK_D           = 128,
        localparam BLOCK_W          = $clog2(BLOCK_D),
        localparam NODES            = BLOCK_D/2,
        localparam STAGES           = $clog2(BLOCK_D)
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        input wire                          i_oreg_en,
        input wire  [BLOCK_W-1:0]           i_vaddr_base,       // Base address of object
        
        output wire [1:0]                   o_rdwr_ignore,
        output wire [BLOCK_W-1:0]           o_vaddr_base        // Intermediate base pointer
    );
    
    wire                                w_ignore;
    wire    [1:0]                       w_rdwr_ignore;
    wire    [BLOCK_W-1:0]               w_trans_base;
    
    reg                                 r_ignore;
    reg     [BLOCK_W-1:0]               r_vaddr_base;
    
    assign w_ignore = (r_vaddr_base != i_vaddr_base) ? 1'b1 : 1'b0;
    assign w_rdwr_ignore = {r_ignore, w_ignore};
    
    assign o_rdwr_ignore = w_rdwr_ignore;
    assign o_vaddr_base = w_trans_base;
    
    //(* dont_touch = "yes" *)
    dec_ptv #(
        .BITMAP(BLOCK_D)
    ) trans_ptv_dec_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_oreg_en(i_oreg_en),
        .i_paddr(i_vaddr_base),
        .i_scb(i_scb),
        
        .o_vaddr(w_trans_base)
    );
    
    initial begin
        r_vaddr_base = 0;
        r_ignore = 0;
    end
    
    always @(posedge i_clk) begin
        r_vaddr_base <= i_vaddr_base;
        r_ignore <= w_ignore;
    end
    
endmodule
