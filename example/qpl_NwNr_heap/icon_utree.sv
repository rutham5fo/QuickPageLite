`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 03:38:36
// Design Name: 
// Module Name: icon_utree
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


module icon_utree #(
        parameter PIPELINE          = 0,
        parameter CHANS             = 4,
        parameter DATA_W            = 7,
        parameter ADDR_W            = 8,
        localparam INPUTS           = 4*CHANS,
        localparam NODES            = INPUTS/2,
        localparam STAGES           = $clog2(INPUTS)
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [INPUTS-1:0][ADDR_W-1:0]    i_addr,
        input wire  [INPUTS-1:0][DATA_W-1:0]    i_data,
        input wire  [STAGES-1:0][NODES-1:0]     i_scb,
        
        output wire [STAGES-1:0][NODES-1:0]     o_scb,
        output wire [CHANS-1:0][ADDR_W-1:0]     o_addr,
        output wire [CHANS-1:0][DATA_W-1:0]     o_data
    );
    
    wire    [INPUTS-1:0]                w_valid;
    wire    [INPUTS-1:0][ADDR_W-1:0]    w_addr;
    wire    [INPUTS-1:0][DATA_W-1:0]    w_data;
    wire    [STAGES-1:0][NODES-1:0]     w_stg_scb;
    wire    [STAGES-1:0][INPUTS-1:0]    w_stg_valid;
    wire    [INPUTS-1:0][ADDR_W-1:0]    w_stg_addr[0:STAGES-1];
    wire    [INPUTS-1:0][DATA_W-1:0]    w_stg_data[0:STAGES-1];
    wire    [INPUTS-1:0][ADDR_W-1:0]    wo_addr;
    wire    [INPUTS-1:0][DATA_W-1:0]    wo_data;
    
    reg     [INPUTS-1:0][ADDR_W-1:0]    r_addr;
    reg     [INPUTS-1:0][DATA_W-1:0]    r_data;
            
    genvar i;
    
    assign w_valid = {INPUTS{1'b0}};
    assign wo_addr = w_stg_addr[0];
    assign wo_data = w_stg_data[0];
    
    assign o_scb = w_stg_scb;
    
    generate
        for (i = 0; i < CHANS; i = i+1) begin     :   gen_data
            //assign o_addr[i] = r_addr[4*i];
            //assign o_data[i] = r_data[4*i];
            assign o_addr[i] = wo_addr[4*i];
            assign o_data[i] = wo_data[4*i];
        end
    endgenerate
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_butt_stage
            if (i == STAGES-1) begin
                icon_ustage #(
                    .PIPELINE(PIPELINE),
                    .STAGE_NUM(i),
                    .INPUTS(INPUTS),
                    .DATA_W(DATA_W),
                    .ADDR_W(ADDR_W)
                ) icon_ustage_i (
                    .i_clk(i_clk),
                    .i_rst(i_rst),
                    .i_valid(w_valid),
                    .i_addr(i_addr),
                    .i_data(i_data),
                    .i_scb(i_scb[i]),
                    
                    .o_scb(w_stg_scb[i]),
                    .o_valid(w_stg_valid[i]),
                    .o_addr(w_stg_addr[i]),
                    .o_data(w_stg_data[i])
                );
            end
            else begin
                icon_ustage #(
                    .PIPELINE(PIPELINE),
                    .STAGE_NUM(i),
                    .INPUTS(INPUTS),
                    .DATA_W(DATA_W),
                    .ADDR_W(ADDR_W)
                ) icon_ustage_i (
                    .i_clk(i_clk),
                    .i_rst(i_rst),
                    .i_valid(w_stg_valid[i+1]),
                    .i_addr(w_stg_addr[i+1]),
                    .i_data(w_stg_data[i+1]),
                    .i_scb(i_scb[i]),
                    
                    .o_scb(w_stg_scb[i]),
                    .o_valid(w_stg_valid[i]),
                    .o_addr(w_stg_addr[i]),
                    .o_data(w_stg_data[i])
                );
            end
        end
    endgenerate
    
    //initial begin
    //    r_addr = {ADDR_W{1'b0}};
    //    r_data = {DATA_W{1'b0}};
    //end
    
    //always @(posedge i_clk) begin
    //    r_addr <= wo_addr;
    //    r_data <= wo_data;
    //end
    
endmodule
