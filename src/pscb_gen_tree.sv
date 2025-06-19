`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 12:01:48
// Design Name: 
// Module Name: pscb_gen_tree
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


module pscb_gen_tree #(
        parameter INPUTS            = 128,
        parameter DATA_W            = 8,
        localparam NODES            = INPUTS/2,
        localparam STAGES           = $clog2(INPUTS)
    )(
        input wire  [NODES*STAGES-1:0]      i_scb,
        input wire  [DATA_W-1:0]            i_pass_start,
        
        output wire [NODES*STAGES-1:0]      o_pass
    );
    
    wire    [INPUTS-1:0]                w_pass_mask;
    wire    [INPUTS-1:0]                w_stg_data[0:STAGES-1];
    wire    [NODES-1:0]                 w_stg_pass[0:STAGES-1];
    wire    [NODES-1:0]                 w_stg_scb[0:STAGES-1];
    wire    [NODES*STAGES-1:0]          w_pass;
    
    genvar i;
    
    assign w_pass_mask = {INPUTS{1'b1}} << (i_pass_start + 1);
    
    assign o_pass = w_pass;
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin          :   gen_out
            assign w_stg_scb[i] = i_scb[i*NODES +: NODES];
            assign w_pass[i*NODES +: NODES] = w_stg_pass[i];
        end
    endgenerate
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_butt_stage
            if (i == STAGES-1) begin
                pscb_gen_stage #(
                    .STAGE_NUM(i),
                    .INPUTS(INPUTS)
                ) pscb_gen_stage_i (
                    .i_scb(w_stg_scb[i]),
                    .i_data(w_pass_mask),
                    
                    .o_pass(w_stg_pass[i]),
                    .o_data(w_stg_data[i])
                );
            end
            else begin
                pscb_gen_stage #(
                    .STAGE_NUM(i),
                    .INPUTS(INPUTS)
                ) pscb_gen_stage_i (
                    .i_scb(w_stg_scb[i]),
                    .i_data(w_stg_data[i+1]),
                    
                    .o_pass(w_stg_pass[i]),
                    .o_data(w_stg_data[i])
                );
            end
        end
    endgenerate
    
endmodule
