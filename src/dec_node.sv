`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 16:08:32
// Design Name: 
// Module Name: dec_node
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


module dec_node (
        input wire          i_scb,
        input wire          i_pactv,
        input wire          i_inv,
        
        output wire         o_scb,
        output wire         o_lcactv,
        output wire         o_lractv
    );
    
    assign o_scb = i_pactv & i_scb;
    assign o_lcactv = i_pactv & ~(i_scb ^ i_inv);
    assign o_lractv = i_pactv & (i_scb ^ i_inv);
    
endmodule
