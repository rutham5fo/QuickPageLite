`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 03:38:36
// Design Name: 
// Module Name: heap_interconnect
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


module heap_interconnect #(
        parameter PIPELINE          = 0,
        parameter CHANS             = 4,
        parameter DATA_W            = 7,
        parameter ADDR_W            = 9,
        localparam INPUTS           = 4*CHANS,
        localparam OUTPUTS          = 4*CHANS
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [CHANS-1:0]                 i_wr_en,
        input wire  [CHANS-1:0][ADDR_W-1:0]     i_rd_addr,
        input wire  [CHANS-1:0][ADDR_W-1:0]     i_wr_addr,
        input wire  [CHANS-1:0][DATA_W-1:0]     i_wr_data,
        input wire  [INPUTS-1:0][DATA_W-1:0]    i_rd_data,
        
        output wire [OUTPUTS-1:0]               o_wr_en,
        output wire [OUTPUTS-1:0][ADDR_W-1:0]   o_rd_addr,
        output wire [OUTPUTS-1:0][ADDR_W-1:0]   o_wr_addr,
        output wire [OUTPUTS-1:0][DATA_W-1:0]   o_wr_data,
        output wire [CHANS-1:0][DATA_W-1:0]     o_rd_data
    );
    
    localparam NODES                = OUTPUTS / 2;
    localparam STAGES               = $clog2(OUTPUTS);
    localparam NDATA_W              = DATA_W + 1;           // Absorb write enable into data payload
    
    wire    [STAGES-1:0][NODES-1:0]         w_rd_scb;
    wire    [CHANS-1:0][NDATA_W-1:0]        wi_wr_data;
    wire    [OUTPUTS-1:0][NDATA_W-1:0]      wo_wr_data;
    
    genvar i;
    
    generate
        for (i = 0; i < CHANS; i = i+1) begin       :   gen_wi_wr_data
            assign wi_wr_data[i][0 +: DATA_W] = i_wr_data[i];
            assign wi_wr_data[i][NDATA_W-1] = i_wr_en[i];
        end
    endgenerate
    
    generate
        for (i = 0; i < OUTPUTS; i = i+1) begin
            assign o_wr_data[i] = wo_wr_data[i][0 +: DATA_W];
            assign o_wr_en[i] = wo_wr_data[i][NDATA_W-1];
        end
    endgenerate
    
    // Write channel down tree
    icon_dtree #(
        .PIPELINE(PIPELINE),
        .CHANS(CHANS),
        .DATA_W(NDATA_W),
        .ADDR_W(ADDR_W)
    ) icond_wr_ch (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_addr(i_wr_addr),
        .i_data(wi_wr_data),
        
        .o_scb(),
        .o_addr(o_wr_addr),
        .o_data(wo_wr_data)
    );
    
    // Read channel down tree
    icon_dtree #(
        .PIPELINE(PIPELINE),
        .CHANS(CHANS),
        .DATA_W(DATA_W),
        .ADDR_W(ADDR_W)
    ) icond_rd_ch (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_addr(i_rd_addr),
        .i_data({DATA_W*CHANS{1'b0}}),
        
        .o_scb(w_rd_scb),
        .o_addr(o_rd_addr),
        .o_data()
    );
    
    // Read channel up tree
    icon_utree #(
        .PIPELINE(PIPELINE),
        .CHANS(CHANS),
        .DATA_W(DATA_W),
        .ADDR_W(ADDR_W)
    ) iconu_rd_ch (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_addr({ADDR_W*INPUTS{1'b0}}),
        .i_data(i_rd_data),
        .i_scb(w_rd_scb),
        
        .o_scb(),
        .o_addr(),
        .o_data(o_rd_data)
    );
    
endmodule
