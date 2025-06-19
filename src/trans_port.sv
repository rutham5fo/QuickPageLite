`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 14:41:44
// Design Name: 
// Module Name: trans_port
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


module trans_port #(
        parameter OREG_EN           = 0,            // Output reg enable
        parameter VADDR_W           = 64,           // Stream data width
        parameter BLOCK_W           = 8,            // Custom inputs data width
        parameter WORD_W            = 8
    )(
        input wire                  i_clk,
        input wire                  i_rst,
        input wire  [BLOCK_W-1:0]   i_base_ptr,
        // AXI stream slave
        input wire                  s_tvalid,           // Incoming Key enable
        input wire  [VADDR_W-1:0]   s_tdata,            // Incoming vaddr
        input wire  [BLOCK_W-1:0]   s_tuser,            // Incoming Key
        input wire                  s_tlast,            // Incoming port_en / wr_en / rd_en
        // AXI stream master
        input wire                  m_tready,
                
        // AXI stream slave
        output wire                 s_tready,
        // AXI stream master
        output wire                 m_tvalid,           // Used as Port_en / Wr_en / rd_en
        output wire [VADDR_W-1:0]   m_tdata,
        output wire [BLOCK_W-1:0]   m_tuser,            // Key
        output wire                 p_tvalid            // Passthrough of s_tvalid | Used as Key_en
    );
    
    wire    [BLOCK_W-1:0]           w_vaddr_oline;
    wire    [BLOCK_W-1:0]           w_vaddr_nline;
    wire    [WORD_W-1:0]            w_vaddr_word;
    wire    [VADDR_W-1:0]           w_vaddr;
    wire                            w_ovld;
    wire                            w_pvld;
    
    assign w_ovld = s_tlast;
    assign w_pvld = s_tvalid;
    assign w_vaddr_word = s_tdata[0 +: WORD_W];
    assign w_vaddr_oline = s_tdata[WORD_W +: BLOCK_W];
    assign w_vaddr_nline = i_base_ptr - w_vaddr_oline;
    assign w_vaddr = {w_vaddr_nline, w_vaddr_word};
    
    assign s_tready = 1'b1;
    assign p_tvalid = w_pvld;
    assign m_tuser = s_tuser;
    
    generate
        if (OREG_EN) begin
            reg                     r_mtvalid;
            reg     [VADDR_W-1:0]   r_mtdata;
            
            assign m_tvalid = r_mtvalid;
            assign m_tdata = r_mtdata;
            
            always @(posedge i_clk) begin
                r_mtvalid <= (i_rst) ? 0 : w_ovld;
                r_mtdata <= (i_rst) ? 0 : w_vaddr;
            end
        end
        else begin
            assign m_tvalid = w_ovld;
            assign m_tdata = w_vaddr;
        end
    endgenerate
    
endmodule
