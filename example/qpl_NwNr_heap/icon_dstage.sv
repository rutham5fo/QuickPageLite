`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 03:38:36
// Design Name: 
// Module Name: icon_dstage
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


module icon_dstage #(
        parameter PIPELINE          = 1,
        parameter STAGE_NUM         = 0,
        parameter INPUTS            = 32,
        parameter DATA_W            = 1,
        parameter ADDR_W            = 9,
        localparam NODES            = INPUTS/2,
        localparam STAGES           = $clog2(INPUTS)
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [INPUTS-1:0]                i_valid,
        input wire  [INPUTS-1:0][ADDR_W-1:0]    i_addr,
        input wire  [INPUTS-1:0][DATA_W-1:0]    i_data,
        
        output wire [NODES-1:0]                 o_scb,
        output wire [INPUTS-1:0]                o_valid,
        output wire [INPUTS-1:0][ADDR_W-1:0]    o_addr,
        output wire [INPUTS-1:0][DATA_W-1:0]    o_data
    );
    
    localparam SPLIT            = (STAGE_NUM < STAGES-1) ? 2**(STAGE_NUM+1) : 2**STAGE_NUM;
    
    wire    [NODES-1:0]                 w_scb;
    wire    [INPUTS-1:0]                w_valid;
    wire    [INPUTS-1:0][ADDR_W-1:0]    w_addr;
    wire    [INPUTS-1:0][DATA_W-1:0]    w_data;
    
    genvar i;
    
    assign o_scb = w_scb;
    
    // Stage output mapping
    generate      
        if (STAGE_NUM < STAGES-1) begin
            for (i = 0; i < INPUTS; i = i+1) begin
                if ((i/SPLIT)%2 == 0) begin
                    if (i%2 == 0) begin
                        assign o_valid[i] = w_valid[i];
                        assign o_addr[i] = w_addr[i];
                        assign o_data[i] = w_data[i];
                    end
                    else begin
                        assign o_valid[i] = w_valid[i+SPLIT-1];
                        assign o_addr[i] = w_addr[i+SPLIT-1];
                        assign o_data[i] = w_data[i+SPLIT-1];
                    end
                end
                else begin
                    if (i%2 == 0) begin
                        assign o_valid[i] = w_valid[i-SPLIT+1];
                        assign o_addr[i] = w_addr[i-SPLIT+1];
                        assign o_data[i] = w_data[i-SPLIT+1];
                    end
                    else begin
                        assign o_valid[i] = w_valid[i];
                        assign o_addr[i] = w_addr[i];
                        assign o_data[i] = w_data[i];
                    end
                end
            end
        end
        else begin
            for (i = 0; i < INPUTS; i = i+1) begin
                if (i < SPLIT) begin
                    assign o_valid[i] = w_valid[2*i];
                    assign o_addr[i] = w_addr[2*i];
                    assign o_data[i] = w_data[2*i];
                end
                else begin
                    assign o_valid[i] = w_valid[2*(i-SPLIT)+1];
                    assign o_addr[i] = w_addr[2*(i-SPLIT)+1];
                    assign o_data[i] = w_data[2*(i-SPLIT)+1];
                end
            end
        end
    endgenerate
    
    // Node generation
    generate
        for (i = 0; i < NODES; i = i+1) begin
            icon_node #(
                .PIPELINE(PIPELINE),
                .GEN_SCB(1),
                .DATA_W(DATA_W),
                .ADDR_W(ADDR_W),
                .STAGE(STAGE_NUM)
            ) icon_node_i (
                .i_clk(i_clk),
                .i_rst(i_rst),
                .i_valid_0(i_valid[2*i]),
                .i_valid_1(i_valid[2*i+1]),
                .i_data_0(i_data[2*i]),
                .i_data_1(i_data[2*i+1]),
                .i_scb(1'b0),
                
                .o_scb(w_scb[i]),
                .o_valid_0(w_valid[2*i]),
                .o_valid_1(w_valid[2*i+1]),
                .o_addr_0(w_addr[2*i]),
                .o_addr_1(w_addr[2*i+1]),
                .o_data_0(w_data[2*i]),
                .o_data_1(w_data[2*i+1])
            );
        end
    endgenerate
    
endmodule
