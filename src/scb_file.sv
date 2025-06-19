`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 12:09:18
// Design Name: 
// Module Name: scb_file
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


module scb_file #(
        parameter BLOCK_D               = 128,
        localparam BLOCK_W              = $clog2(BLOCK_D),
        localparam NODES                = BLOCK_D >> 1,
        localparam DATA_W               = NODES * BLOCK_W
    )(
        input wire                          i_clk,
        input wire                          i_reset,
        input wire                          i_we,
        input wire  [DATA_W-1:0]            i_wr_data,
        
        output wire [DATA_W-1:0]            o_rd_data
    );
    
    reg     [DATA_W-1:0]                    r_scb;
    
    genvar i;
    
    assign o_rd_data = r_scb;
    
    always @(posedge i_clk) begin
        r_scb <= (i_reset) ? 0 : (i_we) ? i_wr_data : r_scb;
    end
    
endmodule
