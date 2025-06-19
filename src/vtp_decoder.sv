`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 11:11:54
// Design Name: 
// Module Name: vtp_decoder
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


module vtp_decoder #(
        parameter PIPE              = 0,
        parameter BITMAP            = 128,
        
        localparam ADDR_W                               = $clog2(BITMAP),
        localparam DATA_W                               = 1,
        localparam NODES                                = BITMAP/2,
        localparam STAGES                               = ADDR_W
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        input wire  [ADDR_W-1:0]            i_chan_addr,
        
        output wire [ADDR_W-1:0]            o_chan_addr
    );
    
    genvar i, j;
    integer k;
    
    // Nets
    wire    [BITMAP-1:0]        w_dec_mask_clean;
    wire    [BITMAP-1:0]        w_dswitch_out;
    reg     [ADDR_W-1:0]        w_addr_out;
    
    // Regs
    reg     [ADDR_W-1:0]                    r_addr_out;
    
    assign w_dec_mask_clean = 1'b1 << i_chan_addr;
    
    // Outputs
    assign o_chan_addr = r_addr_out;
    
    // Virtual to physical address decoder
    switch_down #(
        .PIPE(PIPE),
        .INPUTS(BITMAP),
        .NODES(NODES),
        .DATA_W(DATA_W),
        .STAGES(STAGES)
    ) vtp_trans_i (
        .i_clk(i_clk),
        .i_reset(i_rst),
        .i_data(w_dec_mask_clean),
        .i_scb(i_scb),
        
        .o_data(w_dswitch_out)
    );
    
    always @(*) begin
        w_addr_out = 0;
        for (k = 0; k < BITMAP; k = k+1) begin
            if (w_dswitch_out[k]) w_addr_out = k;
        end
    end
            
    // Generate dec_regs
    always @(posedge i_clk) begin
        r_addr_out <= w_addr_out;
    end
    
    // Init on power
    initial begin
        r_addr_out = 0;
    end
    
endmodule
