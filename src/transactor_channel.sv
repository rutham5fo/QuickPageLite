`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 18:44:23
// Design Name: 
// Module Name: transactor_channel
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


module transactor_channel #(
        parameter OREG_EN           = 0,
        parameter DUAL_PORT         = 1,
        parameter CHANS             = 4,
        parameter VADDR_W           = 8,
        parameter BLOCK_W           = 8,
        parameter WORD_W            = 8
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    i_base_ptr,
        // Auxiliary AXIS
        input wire  [CHANS-1:0]                 aux_s_tvalid,
        input wire  [CHANS-1:0][VADDR_W-1:0]    aux_s_tdata,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    aux_s_tuser,
        input wire  [CHANS-1:0]                 aux_s_tlast,
        input wire  [CHANS-1:0]                 aux_m_tready,
        // Base AXIS
        input wire  [CHANS-1:0]                 base_s_tvalid,
        input wire  [CHANS-1:0][VADDR_W-1:0]    base_s_tdata,
        input wire  [CHANS-1:0][BLOCK_W-1:0]    base_s_tuser,
        input wire  [CHANS-1:0]                 base_s_tlast,
        input wire  [CHANS-1:0]                 base_m_tready,
        
        // Auxiliary Axis
        output wire [CHANS-1:0]                 aux_s_tready,
        output wire [CHANS-1:0]                 aux_m_tvalid,
        output wire [CHANS-1:0][VADDR_W-1:0]    aux_m_tdata,
        output wire [CHANS-1:0][BLOCK_W-1:0]    aux_m_tuser,             // Key
        output wire [CHANS-1:0]                 aux_p_tvalid,            // Pass through of rd_s_tvalid | Used as Key_en
        // Base Axis
        output wire [CHANS-1:0]                 base_s_tready,
        output wire [CHANS-1:0]                 base_m_tvalid,
        output wire [CHANS-1:0][VADDR_W-1:0]    base_m_tdata,
        output wire [CHANS-1:0][BLOCK_W-1:0]    base_m_tuser,
        output wire [CHANS-1:0]                 base_p_tvalid
    );
    
    genvar i;
    
    // Only the write channel's TUSER is connected to the ptv decoder to
    // generate the base_pointer address. Hence any memory access must 
    // start with a dummy write to the object of interest to obtain the 
    // base pointer to facilitate further vtp translations.
    generate
        for (i = 0; i < CHANS; i = i+1) begin       :   gen_chans
			// Channel Base AXIS
			//(* dont_touch = "yes" *)
			trans_port #(
                .OREG_EN(OREG_EN),            // Output reg enable
                .VADDR_W(VADDR_W),           // Stream data width
                .BLOCK_W(BLOCK_W),            // Custom inputs data width
                .WORD_W(WORD_W)
            ) tran_base_port_i (
                .i_clk(i_clk),
                .i_rst(i_rst),
                .i_base_ptr(i_base_ptr[i][0 +: BLOCK_W]),
                // AXI stream slave
                .s_tvalid(base_s_tvalid[i]),
                .s_tdata(base_s_tdata[i][0 +: VADDR_W]),
                .s_tuser(base_s_tuser[i][0 +: BLOCK_W]),
                .s_tlast(base_s_tlast[i]),
                // AXI stream master
                .m_tready(base_m_tready[i]),
                
                // AXI stream slave
                .s_tready(base_s_tready[i]),
                // AXI stream master
                .m_tvalid(base_m_tvalid[i]),
                .m_tdata(base_m_tdata[i][0 +: VADDR_W]),
                .m_tuser(base_m_tuser[i][0 +: BLOCK_W]),
                .p_tvalid(base_p_tvalid[i])
            );
            
            if (DUAL_PORT) begin        :   gen_Dport_chan
                // Channel Auxiliary AXIS
			    //(* dont_touch = "yes" *)
			    trans_port #(
                    .OREG_EN(OREG_EN),            // Output reg enable
                    .VADDR_W(VADDR_W),           // Stream data width
                    .BLOCK_W(BLOCK_W),             // Custom inputs data width
                    .WORD_W(WORD_W)
                ) tran_aux_port_i (
                    .i_clk(i_clk),
                    .i_rst(i_rst),
                    .i_base_ptr(i_base_ptr[i][0 +: BLOCK_W]),
                    // AXI stream slave
                    .s_tvalid(aux_s_tvalid[i]),
                    .s_tdata(aux_s_tdata[i][0 +: VADDR_W]),
                    .s_tuser(aux_s_tuser[i][0 +: BLOCK_W]),
                    .s_tlast(aux_s_tlast[i]),
                    // AXI stream master
                    .m_tready(aux_m_tready[i]),
                    
                    // AXI stream slave
                    .s_tready(aux_s_tready[i]),
                    // AXI stream master
                    .m_tvalid(aux_m_tvalid[i]),
                    .m_tdata(aux_m_tdata[i][0 +: VADDR_W]),
                    .m_tuser(aux_m_tuser[i][0 +: BLOCK_W]),            // Key
                    .p_tvalid(aux_p_tvalid[i])                         // Key_en
                );
            end
            else begin              :   gen_Sport_chan
                assign aux_s_tready[i] = 'b0;
                assign aux_m_tvalid[i] = 'b0;
                assign aux_m_tdata[i] = 'b0;
                assign aux_m_tuser[i] = 'b0;
                assign aux_p_tvalid[i] = 'b0;
            end
        end
    endgenerate
    
endmodule
