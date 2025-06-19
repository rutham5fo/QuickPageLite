`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 03:38:36
// Design Name: 
// Module Name: icon_node
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


module icon_node #(
        parameter PIPELINE          = 1,
        parameter GEN_SCB           = 1,
        parameter DATA_W            = 1,
        parameter ADDR_W            = 9,
        parameter STAGE             = 8
    )(
        input wire                      i_clk,
        input wire                      i_rst,
        input wire                      i_valid_0,
        input wire                      i_valid_1,
        input wire  [ADDR_W-1:0]        i_addr_0,
        input wire  [ADDR_W-1:0]        i_addr_1,
        input wire  [DATA_W-1:0]        i_data_0,
        input wire  [DATA_W-1:0]        i_data_1,
        input wire                      i_scb,
        
        output wire                     o_scb,
        output wire                     o_valid_0,
        output wire                     o_valid_1,
        output wire [ADDR_W-1:0]        o_addr_0,
        output wire [ADDR_W-1:0]        o_addr_1,
        output wire [DATA_W-1:0]        o_data_0,
        output wire [DATA_W-1:0]        o_data_1
    );
    
    wire                        w_valid_0;
    wire                        w_valid_1;
    wire    [ADDR_W-1:0]        w_addr_0;
    wire    [ADDR_W-1:0]        w_addr_1;
    wire    [DATA_W-1:0]        w_data_0;
    wire    [DATA_W-1:0]        w_data_1;
    wire                        w_scb;
    
    reg                         r_scb;
    
    assign w_valid_0 = (w_scb) ? i_valid_1 : i_valid_0;
    assign w_valid_1 = (w_scb) ? i_valid_0 : i_valid_1;
    assign w_addr_0 = (w_scb) ? i_addr_1 : i_addr_0;
    assign w_addr_1 = (w_scb) ? i_addr_0 : i_addr_1;
    assign w_data_0 = (w_scb) ? i_data_1 : i_data_0;
    assign w_data_1 = (w_scb) ? i_data_0 : i_data_1;
    
    assign o_scb = r_scb;
    
    generate
        if (GEN_SCB) assign w_scb = (i_valid_0) ? i_addr_0[STAGE] : i_addr_1[STAGE];
        else assign w_scb = i_scb;
    endgenerate
    
    generate
        if (PIPELINE) begin
            reg                         r_valid_0;
            reg                         r_valid_1;
            reg     [ADDR_W-1:0]        r_addr_0;
            reg     [ADDR_W-1:0]        r_addr_1;
            reg     [DATA_W-1:0]        r_data_0;
            reg     [DATA_W-1:0]        r_data_1;
            
            assign o_valid_0 = r_valid_0;
            assign o_valid_1 = r_valid_1;
            assign o_addr_0 = r_addr_0;
            assign o_addr_1 = r_addr_1;
            assign o_data_0 = r_data_0;
            assign o_data_1 = r_data_1;
            
            initial begin
                r_valid_0 = 0;
                r_valid_1 = 0;
                r_addr_0 = 0;
                r_addr_1 = 0;
                r_data_0 = 0;
                r_data_1 = 0;
            end
            
            always @(posedge i_clk) begin
                r_valid_0 <= w_valid_0;
                r_valid_1 <= w_valid_1;
                r_addr_0 <= w_addr_0;
                r_addr_1 <= w_addr_1;
                r_data_0 <= w_data_0;
                r_data_1 <= w_data_1;
            end
        end
        else begin
            assign o_valid_0 = w_valid_0;
            assign o_valid_1 = w_valid_1;
            assign o_addr_0 = w_addr_0;
            assign o_addr_1 = w_addr_1;
            assign o_data_0 = w_data_0;
            assign o_data_1 = w_data_1;
        end
    endgenerate
    
    initial begin
        r_scb <= 0;
    end
    
    always @(posedge i_clk) begin
        r_scb <= w_scb;
    end
    
endmodule
