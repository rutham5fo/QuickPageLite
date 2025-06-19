`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 23:23:56
// Design Name: 
// Module Name: skids
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


module skids #(
        parameter DATA_W            = 32
    )(
        input wire                  i_clk,
        input wire                  i_reset,
        input wire                  i_skid_en,
        input wire  [DATA_W-1:0]    i_din,
        
        output wire [DATA_W-1:0]    o_dout
    );
    
    wire    [DATA_W-1:0]        w_din;
    
    reg     [DATA_W-1:0]        r_sreg;
    
    assign w_din = (i_skid_en) ? i_din : r_sreg;
    assign o_dout = (i_skid_en) ? i_din : r_sreg;
    
    always @(posedge i_clk) begin
        r_sreg <= (i_reset) ? 0 : w_din;
    end
    
endmodule
