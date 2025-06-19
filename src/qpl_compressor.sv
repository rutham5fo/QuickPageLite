`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 12:06:34
// Design Name: 
// Module Name: qpl_compressor
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


module qpl_compressor #(
        parameter BITMAP            = 256,
        localparam BLOCK_W          = $clog2(BITMAP),
        localparam NODES            = BITMAP >> 1,
        localparam STAGES           = $clog2(BITMAP)
    )(
        input wire                      i_dealloc_vld,
        input wire  [BLOCK_W-1:0]       i_dealloc_addr,
        input wire  [BLOCK_W:0]         i_dealloc_size,                 // Size is not zero indexed and hence requires 1 additional bit for full reolution
        input wire  [NODES*STAGES-1:0]  i_scb,
        
        output wire                     o_scb_vld,
        output wire [NODES*STAGES-1:0]  o_scb
    );
    
    localparam MAX_SCB                  = NODES * STAGES;
    
    wire    [NODES*STAGES-1:0]          w_rscb;
    wire    [NODES*STAGES-1:0]          w_pscb;
    wire    [NODES*STAGES-1:0]          w_cscb;
    
    genvar i;
    
    assign o_scb_vld = i_dealloc_vld;
    assign o_scb = w_cscb;
        
    generate
        for (i = 0; i < MAX_SCB; i = i+1) begin                :   gen_cscb
            assign w_cscb[i] = (w_pscb[i]) ? i_scb[i] : w_rscb[i];
        end
    endgenerate
    
    //(* dont_touch = "yes" *)
    rscb_gen_tree #(
        .BITMAP(BITMAP),
        .DATA_W(BLOCK_W+1)                 // 1 additional bit for full resolution
    ) rscb_gen_tree_i (
        .i_scb(i_scb),
        .i_rotate(i_dealloc_size),
        
        .o_scb(w_rscb)
    );
    
    //(* dont_touch = "yes" *)
    pscb_gen_tree #(
        .INPUTS(BITMAP),
        .DATA_W(BLOCK_W)
    ) pscb_gen_tree_i (
        .i_scb(i_scb),
        .i_pass_start(i_dealloc_addr),
        
        .o_pass(w_pscb)
    );
      
endmodule
