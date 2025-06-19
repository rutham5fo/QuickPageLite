`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 21:36:12
// Design Name: 
// Module Name: MUX
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

/*
module MUX #(
        parameter OREG_EN           = 1,
        parameter DATA_W            = 64,
        parameter ADDR_W            = 9,
        parameter CHANS             = 4
    )(
        input wire                      i_clk,
        input wire                      i_rst,
        input wire                      i_en,
        input wire  [3:0][ADDR_W-1:0]   i_base_addr,
        input wire  [3:0][ADDR_W-1:0]   i_aux_addr,
        input wire  [3:0]               i_base_wen,
        input wire  [3:0]               i_aux_wen,
        input wire  [3:0][DATA_W-1:0]   i_base_data,
        input wire  [DATA_W-1:0]        i_aux_data,
        
        output wire [ADDR_W-1:0]        o_base_addr,
        output wire [ADDR_W-1:0]        o_aux_addr,
        output wire                     o_base_wen,
        output wire                     o_aux_wen,
        output wire [DATA_W-1:0]        o_base_data,
        output wire [3:0][DATA_W-1:0]   o_aux_data
    );
    
    localparam MUX_CFG              = 64'h11001010cccc4444;
    localparam COUNTER_CFG          = 64'h6666cccc5555aaaa;
    
    wire    [ADDR_W-1:0]            w_base_addr;
    wire    [ADDR_W-1:0]            w_aux_addr;
    wire    [DATA_W-1:0]            w_base_data;
    //wire    [DATA_W-1:0]            w_aux_data;
    wire                            w_base_wen;
    wire                            w_aux_wen;
    
    wire    [1:0]                   w_mux_sel;
    
    reg     [1:0]                   r_mux_sel;
    reg                             r_aux_sel;
    reg     [4*DATA_W-1:0]          r_aux_data_ping;
    reg     [4*DATA_W-1:0]          r_aux_data_pong;
    
    genvar i;
    
    assign o_aux_data = (r_aux_sel) ? r_aux_data_ping : r_aux_data_pong;
    
    generate
        if (OREG_EN) begin
            reg     [ADDR_W-1:0]        r_base_addr;
            reg     [ADDR_W-1:0]        r_aux_addr;
            reg     [DATA_W-1:0]        r_base_data;
            //reg     [DATA_W-1:0]        r_aux_data;
            reg                         r_base_wen;
            reg                         r_aux_wen;
            
            assign o_base_addr = r_base_addr;
            assign o_aux_addr = r_aux_addr;
            assign o_base_data = r_base_data;
            //assign o_aux_data = r_aux_data;
            assign o_base_wen = r_base_wen;
            assign o_aux_wen = r_aux_wen;
            
            always @(posedge i_clk) begin
                r_base_addr <= w_base_addr;
                r_aux_addr <= w_aux_addr;
                r_base_data <= w_base_data;
                //r_aux_data <= w_aux_data;
                r_base_wen <= w_base_wen;
                r_aux_wen <= w_aux_wen;
            end
        end
        else begin
            assign o_base_addr = w_base_addr;
            assign o_aux_addr = w_aux_addr;
            assign o_base_data = w_base_data;
            //assign o_aux_data = w_aux_data;
            assign o_base_wen = w_base_wen;
            assign o_aux_wen = w_aux_wen;
        end
    endgenerate
    
    // ADDR_MUX
    generate
        for (i = 0; i < ADDR_W; i = i+1) begin              :   gen_addr_mux
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) base_addr_mux_i (
                .O6(w_base_addr[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_base_addr[0]), // 1-bit LUT input
                .I1(i_base_addr[1]), // 1-bit LUT input
                .I2(i_base_addr[2]), // 1-bit LUT input
                .I3(i_base_addr[3]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
            
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) aux_addr_mux_i (
                .O6(w_aux_addr[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_aux_addr[0]), // 1-bit LUT input
                .I1(i_aux_addr[1]), // 1-bit LUT input
                .I2(i_aux_addr[2]), // 1-bit LUT input
                .I3(i_aux_addr[3]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
        end
    endgenerate
    
    // DATA_MUX
    generate
        for (i = 0; i < DATA_W; i = i+1) begin              :   gen_data_mux
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) base_data_mux_i (
                .O6(w_base_data[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_base_data[0]), // 1-bit LUT input
                .I1(i_base_data[1]), // 1-bit LUT input
                .I2(i_base_data[2]), // 1-bit LUT input
                .I3(i_base_data[3]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
            
            //LUT6_2 #(
            //    .INIT(MUX_CFG) // Specify LUT Contents
            //) aux_data_mux_i (
            //    .O6(w_aux_data[i]), // 1-bit LUT6 output
            //    .O5(), // 1-bit lower LUT5 output
            //    .I0(i_aux_data[0]), // 1-bit LUT input
            //    .I1(i_aux_data[1]), // 1-bit LUT input
            //    .I2(i_aux_data[2]), // 1-bit LUT input
            //    .I3(i_aux_data[3]), // 1-bit LUT input
            //    .I4(r_mux_sel[0]), // 1-bit LUT input
            //    .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            //);
        end
    endgenerate
    
    // Base Write Enable
    LUT6_2 #(
        .INIT(MUX_CFG) // Specify LUT Contents
    ) base_wen_mux_i (
        .O6(w_base_wen), // 1-bit LUT6 output
        .O5(), // 1-bit lower LUT5 output
        .I0(i_base_wen[0]), // 1-bit LUT input
        .I1(i_base_wen[1]), // 1-bit LUT input
        .I2(i_base_wen[2]), // 1-bit LUT input
        .I3(i_base_wen[3]), // 1-bit LUT input
        .I4(r_mux_sel[0]), // 1-bit LUT input
        .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
    );
    
    // Aux Write Enable
    LUT6_2 #(
        .INIT(MUX_CFG) // Specify LUT Contents
    ) aux_wen_mux_i (
        .O6(w_aux_wen), // 1-bit LUT6 output
        .O5(), // 1-bit lower LUT5 output
        .I0(i_aux_wen[0]), // 1-bit LUT input
        .I1(i_aux_wen[1]), // 1-bit LUT input
        .I2(i_aux_wen[2]), // 1-bit LUT input
        .I3(i_aux_wen[3]), // 1-bit LUT input
        .I4(r_mux_sel[0]), // 1-bit LUT input
        .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
    );
    
    // Mux Counter
    LUT6_2 #(
        .INIT(COUNTER_CFG) // Specify LUT Contents
    ) mux_sel_i (
        .O6(w_mux_sel[1]), // 1-bit LUT6 output
        .O5(w_mux_sel[0]), // 1-bit lower LUT5 output
        .I0(r_mux_sel[0]), // 1-bit LUT input
        .I1(r_mux_sel[1]), // 1-bit LUT input
        .I2(1'b0), // 1-bit LUT input
        .I3(1'b0), // 1-bit LUT input
        .I4(i_en), // 1-bit LUT input
        .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
    );
	
	always @(posedge i_clk) begin
	   r_mux_sel <= (i_rst || r_mux_sel == CHANS-1) ? 0 : w_mux_sel;
	   r_aux_sel <= (i_rst) ? 0 : (r_mux_sel == CHANS-1) ? ~r_aux_sel : r_aux_sel;
	   r_aux_data_ping <= (!r_mux_sel) ? {r_aux_data_ping[0 +: 3*DATA_W], i_aux_data} : r_aux_data_ping;
	   r_aux_data_pong <= (r_mux_sel) ? {r_aux_data_pong[0 +: 3*DATA_W], i_aux_data} : r_aux_data_pong;
	end
	
endmodule
*/

module MUX #(
        parameter OREG_EN           = 1,
        parameter DATA_W            = 64,
        parameter ADDR_W            = 9,
        parameter WE_W              = 2,
        parameter CHANS             = 4
    )(
        input wire                      i_clk,
        input wire                      i_rst,
        input wire                      i_en,
        input wire  [3:0][WE_W-1:0]     i_wr_en,
        input wire  [3:0][ADDR_W-1:0]   i_wr_addr,
        input wire  [3:0][ADDR_W-1:0]   i_rd_addr,
        input wire  [3:0][DATA_W-1:0]   i_wr_data,
        input wire  [DATA_W-1:0]        i_rd_data,
        
        output wire [ADDR_W-1:0]        o_wr_addr,
        output wire [ADDR_W-1:0]        o_rd_addr,
        output wire [WE_W-1:0]          o_wr_en,
        output wire [DATA_W-1:0]        o_wr_data,
        output wire [3:0][DATA_W-1:0]   o_rd_data
    );
    
    localparam MUX_CFG              = 64'h11001010cccc4444;
    localparam COUNTER_CFG          = 64'h6666cccc5555aaaa;
    
    wire    [ADDR_W-1:0]            w_wr_addr;
    wire    [ADDR_W-1:0]            w_rd_addr;
    wire    [DATA_W-1:0]            w_wr_data;
    wire    [WE_W-1:0]              w_wr_en;
    
    wire    [1:0]                   w_mux_sel;
    
    reg     [1:0]                   r_mux_sel;
    //reg                             r_rd_sel;
    reg     [3:0][DATA_W-1:0]       r_rd_data;
    //reg     [4*DATA_W-1:0]          r_rd_data_ping;
    //reg     [4*DATA_W-1:0]          r_rd_data_pong;
    
    genvar i;
    integer k;
    
    //assign o_rd_data = (r_rd_sel) ? r_rd_data_ping : r_rd_data_pong;
    assign o_rd_data = r_rd_data;
    
    generate
        if (OREG_EN) begin
            reg     [ADDR_W-1:0]        r_wr_addr;
            reg     [ADDR_W-1:0]        r_rd_addr;
            reg     [DATA_W-1:0]        r_wr_data;
            reg     [WE_W-1:0]          r_wr_en;
            
            assign o_wr_addr = r_wr_addr;
            assign o_rd_addr = r_rd_addr;
            assign o_wr_data = r_wr_data;
            assign o_wr_en = r_wr_en;
            
            always @(posedge i_clk) begin
                r_wr_addr <= w_wr_addr;
                r_rd_addr <= w_rd_addr;
                r_wr_data <= w_wr_data;
                r_wr_en <= w_wr_en;
            end
        end
        else begin
            assign o_wr_addr = w_wr_addr;
            assign o_rd_addr = w_rd_addr;
            assign o_wr_data = w_wr_data;
            assign o_wr_en = w_wr_en;
        end
    endgenerate
    
    // ADDR_MUX
    generate
        for (i = 0; i < ADDR_W; i = i+1) begin              :   gen_addr_mux
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) wr_addr_mux_i (
                .O6(w_wr_addr[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_wr_addr[0][i]), // 1-bit LUT input
                .I1(i_wr_addr[1][i]), // 1-bit LUT input
                .I2(i_wr_addr[2][i]), // 1-bit LUT input
                .I3(i_wr_addr[3][i]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
            
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) rd_addr_mux_i (
                .O6(w_rd_addr[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_rd_addr[0][i]), // 1-bit LUT input
                .I1(i_rd_addr[1][i]), // 1-bit LUT input
                .I2(i_rd_addr[2][i]), // 1-bit LUT input
                .I3(i_rd_addr[3][i]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
        end
    endgenerate
    
    // DATA_MUX
    generate
        for (i = 0; i < DATA_W; i = i+1) begin              :   gen_data_mux
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) wr_data_mux_i (
                .O6(w_wr_data[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_wr_data[0][i]), // 1-bit LUT input
                .I1(i_wr_data[1][i]), // 1-bit LUT input
                .I2(i_wr_data[2][i]), // 1-bit LUT input
                .I3(i_wr_data[3][i]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
        end
    endgenerate
    
    // WRITE_EN_MUX
    generate
        for (i = 0; i < WE_W; i = i+1) begin              :   gen_wen_mux
            LUT6_2 #(
                .INIT(MUX_CFG) // Specify LUT Contents
            ) wr_en_mux_i (
                .O6(w_wr_en[i]), // 1-bit LUT6 output
                .O5(), // 1-bit lower LUT5 output
                .I0(i_wr_en[0][i]), // 1-bit LUT input
                .I1(i_wr_en[1][i]), // 1-bit LUT input
                .I2(i_wr_en[2][i]), // 1-bit LUT input
                .I3(i_wr_en[3][i]), // 1-bit LUT input
                .I4(r_mux_sel[0]), // 1-bit LUT input
                .I5(r_mux_sel[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
            );
        end
    endgenerate
    
    // Mux Counter
    LUT6_2 #(
        .INIT(COUNTER_CFG) // Specify LUT Contents
    ) mux_sel_i (
        .O6(w_mux_sel[1]), // 1-bit LUT6 output
        .O5(w_mux_sel[0]), // 1-bit lower LUT5 output
        .I0(r_mux_sel[0]), // 1-bit LUT input
        .I1(r_mux_sel[1]), // 1-bit LUT input
        .I2(1'b0), // 1-bit LUT input
        .I3(1'b0), // 1-bit LUT input
        .I4(i_en), // 1-bit LUT input
        .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
    );
	
	always @(posedge i_clk) begin
	   r_mux_sel <= (i_rst || r_mux_sel == CHANS-1) ? 0 : w_mux_sel;
	   //r_rd_sel <= (i_rst) ? 0 : (r_mux_sel == CHANS-1) ? ~r_rd_sel : r_rd_sel;
	   //r_rd_data_ping <= (!r_mux_sel) ? {r_rd_data_ping[0 +: 3*DATA_W], i_rd_data} : r_rd_data_ping;
	   //r_rd_data_pong <= (r_mux_sel) ? {r_rd_data_pong[0 +: 3*DATA_W], i_rd_data} : r_rd_data_pong;
	end
	
	always @(posedge i_clk) begin
	   for (k = 0; k < 4; k = k+1) begin
	       if (k < CHANS) begin
	           r_rd_data[k] <= (r_mux_sel == k) ? i_rd_data : r_rd_data;
	       end
	       else begin
	           r_rd_data[k] <= 0;
	       end
	   end
	end
	
endmodule
