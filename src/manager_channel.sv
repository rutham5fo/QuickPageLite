`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 13:24:21
// Design Name: 
// Module Name: manager_channel
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


module manager_channel #(
        parameter RESET_N               = 0,
        parameter BUF_OREG_EN           = 0,
        parameter BUF_D                 = 7,
        parameter REQ_W                 = 8,
        parameter REP_W                 = 8,
        parameter BLOCK_W               = 8
    )(
        input wire                      i_clk,
        input wire                      i_rst,
        input wire                      s_req_alloc_vld,
        input wire  [REQ_W-1:0]         s_req_alloc_data,
        input wire                      m_req_alloc_rdy,
        input wire                      s_req_dealloc_vld,
        input wire  [REP_W-1:0]         s_req_dealloc_data,
        input wire                      m_req_dealloc_rdy,
        input wire                      s_rep_alloc_vld,
        input wire  [REP_W-1:0]         s_rep_alloc_data,
        input wire                      m_rep_alloc_rdy,
        input wire                      s_rep_dealloc_vld,
        input wire  [REP_W-1:0]         s_rep_dealloc_data,
        input wire                      m_rep_dealloc_rdy,
        
        output wire                     s_req_alloc_rdy,
        output wire                     m_req_alloc_vld,
        output wire [REQ_W-1:0]         m_req_alloc_data,
        output wire                     s_req_dealloc_rdy,
        output wire                     m_req_dealloc_vld,
        output wire [REP_W-1:0]         m_req_dealloc_data,
        output wire                     s_rep_alloc_rdy,
        output wire                     m_rep_alloc_vld,
        output wire [REP_W-1:0]         m_rep_alloc_data,
        output wire                     s_rep_dealloc_rdy,
        output wire                     m_rep_dealloc_vld,
        output wire [REP_W-1:0]         m_rep_dealloc_data
    );
    
    // Alloc req AXIS
    //(* dont_touch = "yes" *)
    axis_fifo #(
        .RESET_N(RESET_N),
        .OREG_EN(BUF_OREG_EN),
        .DATA_W(REQ_W),
        .BUFFER_D(BUF_D)
    ) alloc_req_axis (
        .s_aclk(i_clk),
        .s_areset(i_rst),
        // AXI stream slave
        .s_tvalid(s_req_alloc_vld),
        .s_tdata(s_req_alloc_data),
        // AXI stream master
        .m_tready(m_req_alloc_rdy),
        
        // AXI stream slave
        .s_tready(s_req_alloc_rdy),
        // AXI stream master
        .m_tvalid(m_req_alloc_vld),
        .m_tdata(m_req_alloc_data)
    );
    
    // Dealloc req AXIS
    //(* dont_touch = "yes" *)
    axis_fifo #(
        .RESET_N(RESET_N),
        .OREG_EN(BUF_OREG_EN),
        .DATA_W(REP_W),
        .BUFFER_D(BUF_D)
    ) dealloc_req_axis (
        .s_aclk(i_clk),
        .s_areset(i_rst),
        // AXI stream slave
        .s_tvalid(s_req_dealloc_vld),
        .s_tdata(s_req_dealloc_data),
        // AXI stream master
        .m_tready(m_req_dealloc_rdy),
        
        // AXI stream slave
        .s_tready(s_req_dealloc_rdy),
        // AXI stream master
        .m_tvalid(m_req_dealloc_vld),
        .m_tdata(m_req_dealloc_data)
    );
    
    // Alloc rep AXIS
    //(* dont_touch = "yes" *)
    axis_fifo #(
        .RESET_N(RESET_N),
        .OREG_EN(BUF_OREG_EN),
        .DATA_W(REP_W),
        .BUFFER_D(BUF_D)
    ) alloc_rep_axis (
        .s_aclk(i_clk),
        .s_areset(i_rst),
        // AXI stream slave
        .s_tvalid(s_rep_alloc_vld),
        .s_tdata(s_rep_alloc_data),
        // AXI stream master
        .m_tready(m_rep_alloc_rdy),
        
        // AXI stream slave
        .s_tready(s_rep_alloc_rdy),
        // AXI stream master
        .m_tvalid(m_rep_alloc_vld),
        .m_tdata(m_rep_alloc_data)
    );
    
    // Dealloc rep AXIS
    //(* dont_touch = "yes" *)
    axis_fifo #(
        .RESET_N(RESET_N),
        .OREG_EN(BUF_OREG_EN),
        .DATA_W(REP_W),
        .BUFFER_D(BUF_D)
    ) dealloc_rep_axis (
        .s_aclk(i_clk),
        .s_areset(i_rst),
        // AXI stream slave
        .s_tvalid(s_rep_dealloc_vld),
        .s_tdata(s_rep_dealloc_data),
        // AXI stream master
        .m_tready(m_rep_dealloc_rdy),
        
        // AXI stream slave
        .s_tready(s_rep_dealloc_rdy),
        // AXI stream master
        .m_tvalid(m_rep_dealloc_vld),
        .m_tdata(m_rep_dealloc_data)
    );
    
endmodule
