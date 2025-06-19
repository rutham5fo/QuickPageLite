`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 11:56:32
// Design Name: 
// Module Name: rscb_gen_node
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


module rscb_gen_node #(
        parameter STAGE                 = 6,
        parameter DATA_W                = 8,
        localparam MAP_W                = 1 << STAGE
    )(
        input wire  [MAP_W-1:0]         i_scb,
        input wire  [DATA_W-1:0]        i_rotate,
        
        output wire [MAP_W-1:0]         o_scb
    );
    
    //--------------------------------------------------------------------
    //  The template for pmap is Big endian -> 0, 1, 2, 3, ..., MSB
    //  Shift rights are specified according to big endian format
    //  But, the shifters are little endian, hence simply switch the
    //  right shift to a left shift to reflect the endianess.
    //--------------------------------------------------------------------
    localparam TRUNC_W              = (MAP_W == 1) ? 1 : $clog2(MAP_W);
    
    wire    [TRUNC_W-1:0]               w_rot_trunc;
    wire    [TRUNC_W-1:0][MAP_W-1:0]    w_stg_out;
    
    genvar i;
    
    assign w_rot_trunc = i_rotate[0 +: TRUNC_W];
    
    assign o_scb = w_stg_out[TRUNC_W-1][0 +: MAP_W];
    
    generate
        for (i = 0; i < TRUNC_W; i = i+1) begin      :   gen_rot
            if (i == 0) begin
                shftr_stg #(
                    .DATA_W(MAP_W),
                    .STAGE(i)
                ) shftr_stg_i (
                    .i_en(w_rot_trunc[i]),
                    .i_data(i_scb),
                    
                    .o_data(w_stg_out[i][0 +: MAP_W])
                );
            end
            else begin
                shftr_stg #(
                    .DATA_W(MAP_W),
                    .STAGE(i)
                ) shftr_stg_i (
                    .i_en(w_rot_trunc[i]),
                    .i_data(w_stg_out[i-1]),
                    
                    .o_data(w_stg_out[i][0 +: MAP_W])
                );
            end
        end
    endgenerate
    
endmodule
