`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 03:38:36
// Design Name: 
// Module Name: icon_dtree
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


module icon_dtree #(
        parameter PIPELINE          = 0,
        parameter CHANS             = 4,
        parameter DATA_W            = 7,
        parameter ADDR_W            = 9,
        localparam OUTPUTS          = 4*CHANS,
        localparam NODES            = OUTPUTS/2,
        localparam STAGES           = $clog2(OUTPUTS)
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [CHANS-1:0][ADDR_W-1:0]     i_addr,
        input wire  [CHANS-1:0][DATA_W-1:0]     i_data,
        
        output wire [STAGES-1:0][NODES-1:0]     o_scb,
        output wire [OUTPUTS-1:0][ADDR_W-1:0]   o_addr,
        output wire [OUTPUTS-1:0][DATA_W-1:0]   o_data
    );
    
    wire    [OUTPUTS-1:0]               w_valid;
    wire    [OUTPUTS-1:0][ADDR_W-1:0]   w_addr;
    wire    [OUTPUTS-1:0][DATA_W-1:0]   w_data;
    wire    [STAGES-1:0][NODES-1:0]     w_stg_scb;
    wire    [STAGES-1:0][OUTPUTS-1:0]   w_stg_valid;
    wire    [OUTPUTS-1:0][ADDR_W-1:0]   w_stg_addr[0:STAGES-1];
    wire    [OUTPUTS-1:0][DATA_W-1:0]   w_stg_data[0:STAGES-1];
    
    reg     [OUTPUTS-1:0][ADDR_W-1:0]   r_addr;
    reg     [OUTPUTS-1:0][DATA_W-1:0]   r_data;
    
    genvar i;
    
    assign o_scb = w_stg_scb;
    assign o_addr = r_addr;
    assign o_data = r_data;
    
    generate
        for (i = 0; i < OUTPUTS; i = i+1) begin     :   gen_valid
            //localparam q = i/CHANS;
            //localparam r = i%CHANS;
            if (i%CHANS == 0) begin
                assign w_valid[i] = 1'b1;
                assign w_addr[i] = i_addr[i/CHANS];
                assign w_data[i] = i_data[i/CHANS];
            end
            else begin
                assign w_valid[i] = 1'b0;
                assign w_addr[i] = {ADDR_W{1'b0}};
                assign w_data[i] = {DATA_W{1'b0}};
            end
        end
    endgenerate
    
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_butt_stage
            if (i == 0) begin
                icon_dstage #(
                    .PIPELINE(PIPELINE),
                    .STAGE_NUM(i),
                    .INPUTS(OUTPUTS),
                    .DATA_W(DATA_W),
                    .ADDR_W(ADDR_W)
                ) icon_dstage_i (
                    .i_clk(i_clk),
                    .i_rst(i_rst),
                    .i_valid(w_valid),
                    .i_addr(w_addr),
                    .i_data(w_data),
                    
                    .o_scb(w_stg_scb[i]),
                    .o_valid(w_stg_valid[i]),
                    .o_addr(w_stg_addr[i]),
                    .o_data(w_stg_data[i])
                );
            end
            else begin
                icon_dstage #(
                    .PIPELINE(PIPELINE),
                    .STAGE_NUM(i),
                    .INPUTS(OUTPUTS),
                    .DATA_W(DATA_W),
                    .ADDR_W(ADDR_W)
                ) icon_dstage_i (
                    .i_clk(i_clk),
                    .i_rst(i_rst),
                    .i_valid(w_stg_valid[i-1]),
                    .i_addr(w_stg_addr[i-1]),
                    .i_data(w_stg_data[i-1]),
                    
                    .o_scb(w_stg_scb[i]),
                    .o_valid(w_stg_valid[i]),
                    .o_addr(w_stg_addr[i]),
                    .o_data(w_stg_data[i])
                );
            end
        end
    endgenerate
    
    initial begin
        r_addr = {ADDR_W{1'b0}};
        r_data = {DATA_W{1'b0}};
    end
    
    always @(posedge i_clk) begin
        r_addr <= w_stg_addr[STAGES-1];
        r_data <= w_stg_data[STAGES-1];
    end
    
endmodule
