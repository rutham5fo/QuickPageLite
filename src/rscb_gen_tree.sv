`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 11:56:32
// Design Name: 
// Module Name: rscb_gen_tree
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


module rscb_gen_tree #(
        parameter BITMAP            = 128,
        parameter DATA_W            = 8,
        localparam STAGES           = $clog2(BITMAP),
        localparam MAX_NODES        = BITMAP >> 1
    )(
        input wire  [MAX_NODES*STAGES-1:0]  i_scb,
        input wire  [DATA_W-1:0]            i_rotate,
        
        output wire [MAX_NODES*STAGES-1:0]  o_scb
    );
    
    wire    [MAX_NODES-1:0]         wi_scb[0:STAGES-1];
    wire    [MAX_NODES-1:0]         wo_scb[0:STAGES-1];
    
    genvar i;
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin          :   gen_outputs
            assign wi_scb[i] = i_scb[i*MAX_NODES +: MAX_NODES];
            assign o_scb[i*MAX_NODES +: MAX_NODES] = wo_scb[i];
        end
    endgenerate
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin          :   gen_scb_stage
            localparam NODES        = BITMAP >> (i+1);
            localparam MAP_W        = 1 << i;
            
            //(* dont_touch = "yes" *)
            rscb_gen_stage #(
                .BITMAP(BITMAP),
                .STAGE(i),
                .DATA_W(DATA_W)
            ) rscb_gen_stage_i (
                .i_scb(wi_scb[i]),
                .i_rotate(i_rotate),
                
                .o_scb(wo_scb[i])
            );
        end
    endgenerate
    
endmodule
