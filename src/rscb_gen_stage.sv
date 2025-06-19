`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 11:56:32
// Design Name: 
// Module Name: rscb_gen_stage
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


module rscb_gen_stage #(
        parameter BITMAP            = 128,
        parameter STAGE             = 6,
        parameter DATA_W            = 8,
        localparam MAP_W            = 1 << STAGE,
        localparam NODES            = BITMAP >> (STAGE+1)
    )(
        input wire  [NODES*MAP_W-1:0]   i_scb,
        input wire  [DATA_W-1:0]        i_rotate,
        
        output wire [NODES*MAP_W-1:0]   o_scb
    );
    
    wire    [MAP_W-1:0]             wi_scb[0:NODES-1];
    wire    [MAP_W-1:0]             wo_scb[0:NODES-1];
    
    genvar i;
    
    generate
        for (i = 0; i < NODES; i = i+1) begin           :   gen_rscb_nodes
            
            assign wi_scb[i] = i_scb[i*MAP_W +: MAP_W];
            assign o_scb[i*MAP_W +: MAP_W] = wo_scb[i];
            
            rscb_gen_node #(
                .STAGE(STAGE),
                .DATA_W(DATA_W)
            ) rscb_gen_node_i (
                .i_scb(wi_scb[i]),
                .i_rotate(i_rotate),
                
                .o_scb(wo_scb[i])
            );
        end
    endgenerate
    
endmodule
