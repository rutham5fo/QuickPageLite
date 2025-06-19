// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 13 18:02:27 2025
// Host        : LAPTOP-SRGHD2GT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/VivadoProjects/quick_page_lite/qpl_v2/qpl_v2.sim/sim_1/synth/func/xsim/qpl_synth_tb_func_synth.v
// Design      : qpl_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axis_fifo
   (i_req_alloc_vld,
    r_sready_reg_0,
    i_req_alloc_data,
    i_rst_IBUF,
    i_clk_IBUF_BUFG,
    o_req_alloc_rdy,
    i_req_alloc_vld_IBUF,
    D);
  output i_req_alloc_vld;
  output r_sready_reg_0;
  output [17:0]i_req_alloc_data;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;
  input o_req_alloc_rdy;
  input i_req_alloc_vld_IBUF;
  input [17:0]D;

  wire [17:0]D;
  wire data0;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire i_clk_IBUF_BUFG;
  wire [17:0]i_req_alloc_data;
  wire i_req_alloc_vld;
  wire i_req_alloc_vld_IBUF;
  wire i_rst_IBUF;
  wire o_req_alloc_rdy;
  wire [3:0]p_0_in;
  wire p_14_in;
  wire p_1_in14_in;
  wire p_3_in10_in;
  wire p_5_in7_in;
  wire r_almost_full;
  wire r_almost_full_i_1_n_0;
  wire \r_data_buf[0][17]_i_1_n_0 ;
  wire \r_data_buf[1][17]_i_1_n_0 ;
  wire \r_data_buf[2][17]_i_1_n_0 ;
  wire \r_data_buf[3][17]_i_1_n_0 ;
  wire [17:0]\r_data_buf_reg[0] ;
  wire [17:0]\r_data_buf_reg[1] ;
  wire [17:0]\r_data_buf_reg[2] ;
  wire [17:0]\r_data_buf_reg[3] ;
  wire [17:0]\r_data_buf_reg[4] ;
  wire [17:0]\r_data_buf_reg[5] ;
  wire [17:0]\r_data_buf_reg[6] ;
  wire [17:0]\r_data_buf_reg[7] ;
  wire [2:0]r_rd_ptr;
  wire \r_rd_ptr[0]_i_1_n_0 ;
  wire \r_rd_ptr[1]_i_1_n_0 ;
  wire \r_rd_ptr[2]_i_1_n_0 ;
  wire \r_skid_cntr[3]_i_1_n_0 ;
  wire [3:0]r_skid_cntr_reg;
  wire r_sready_i_1_n_0;
  wire r_sready_reg_0;
  wire \r_valid_buf[0]_i_1_n_0 ;
  wire \r_valid_buf[0]_i_2_n_0 ;
  wire \r_valid_buf[1]_i_1_n_0 ;
  wire \r_valid_buf[1]_i_2_n_0 ;
  wire \r_valid_buf[2]_i_1_n_0 ;
  wire \r_valid_buf[2]_i_2_n_0 ;
  wire \r_valid_buf[3]_i_1_n_0 ;
  wire \r_valid_buf[3]_i_2_n_0 ;
  wire \r_valid_buf[4]_i_1_n_0 ;
  wire \r_valid_buf[5]_i_1_n_0 ;
  wire \r_valid_buf[6]_i_1_n_0 ;
  wire \r_valid_buf[7]_i_1_n_0 ;
  wire \r_valid_buf_reg_n_0_[7] ;
  wire [2:0]r_wr_ptr;
  wire \r_wr_ptr[0]_i_1_n_0 ;
  wire \r_wr_ptr[1]_i_1_n_0 ;
  wire \r_wr_ptr[2]_i_1_n_0 ;
  wire skid_mst_vld_i_n_1;
  wire skid_mst_vld_i_n_2;
  wire w_rd_valid;
  wire w_wr_valid;

  LUT6 #(
    .INIT(64'h0440800801102002)) 
    r_almost_full_i_1
       (.I0(r_rd_ptr[1]),
        .I1(r_rd_ptr[0]),
        .I2(r_rd_ptr[2]),
        .I3(r_wr_ptr[2]),
        .I4(r_wr_ptr[1]),
        .I5(r_wr_ptr[0]),
        .O(r_almost_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_almost_full_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_almost_full_i_1_n_0),
        .Q(r_almost_full),
        .R(i_rst_IBUF));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_data_buf[0][17]_i_1 
       (.I0(r_wr_ptr[1]),
        .I1(w_wr_valid),
        .I2(r_wr_ptr[0]),
        .I3(r_wr_ptr[2]),
        .O(\r_data_buf[0][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \r_data_buf[1][17]_i_1 
       (.I0(r_wr_ptr[1]),
        .I1(r_wr_ptr[0]),
        .I2(w_wr_valid),
        .I3(r_wr_ptr[2]),
        .O(\r_data_buf[1][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[2][17]_i_1 
       (.I0(w_wr_valid),
        .I1(r_wr_ptr[0]),
        .I2(r_wr_ptr[1]),
        .I3(r_wr_ptr[2]),
        .O(\r_data_buf[2][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_data_buf[3][17]_i_1 
       (.I0(r_wr_ptr[0]),
        .I1(w_wr_valid),
        .I2(r_wr_ptr[1]),
        .I3(r_wr_ptr[2]),
        .O(\r_data_buf[3][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[4][17]_i_1 
       (.I0(r_wr_ptr[2]),
        .I1(r_wr_ptr[1]),
        .I2(w_wr_valid),
        .I3(r_wr_ptr[0]),
        .O(p_5_in7_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \r_data_buf[5][17]_i_1 
       (.I0(r_wr_ptr[2]),
        .I1(r_wr_ptr[1]),
        .I2(r_wr_ptr[0]),
        .I3(w_wr_valid),
        .O(p_3_in10_in));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_data_buf[6][17]_i_1 
       (.I0(r_wr_ptr[2]),
        .I1(w_wr_valid),
        .I2(r_wr_ptr[0]),
        .I3(r_wr_ptr[1]),
        .O(p_1_in14_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_data_buf[7][17]_i_1 
       (.I0(r_wr_ptr[2]),
        .I1(r_wr_ptr[0]),
        .I2(w_wr_valid),
        .I3(r_wr_ptr[1]),
        .O(p_14_in));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\r_data_buf_reg[0] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\r_data_buf_reg[0] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\r_data_buf_reg[0] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\r_data_buf_reg[0] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\r_data_buf_reg[0] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\r_data_buf_reg[0] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\r_data_buf_reg[0] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\r_data_buf_reg[0] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[17]),
        .Q(\r_data_buf_reg[0] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\r_data_buf_reg[0] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\r_data_buf_reg[0] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\r_data_buf_reg[0] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\r_data_buf_reg[0] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\r_data_buf_reg[0] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\r_data_buf_reg[0] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\r_data_buf_reg[0] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\r_data_buf_reg[0] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\r_data_buf_reg[0] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\r_data_buf_reg[1] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\r_data_buf_reg[1] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\r_data_buf_reg[1] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\r_data_buf_reg[1] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\r_data_buf_reg[1] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\r_data_buf_reg[1] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\r_data_buf_reg[1] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\r_data_buf_reg[1] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[17]),
        .Q(\r_data_buf_reg[1] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\r_data_buf_reg[1] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\r_data_buf_reg[1] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\r_data_buf_reg[1] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\r_data_buf_reg[1] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\r_data_buf_reg[1] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\r_data_buf_reg[1] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\r_data_buf_reg[1] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\r_data_buf_reg[1] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\r_data_buf_reg[1] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\r_data_buf_reg[2] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\r_data_buf_reg[2] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\r_data_buf_reg[2] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\r_data_buf_reg[2] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\r_data_buf_reg[2] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\r_data_buf_reg[2] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\r_data_buf_reg[2] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\r_data_buf_reg[2] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[17]),
        .Q(\r_data_buf_reg[2] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\r_data_buf_reg[2] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\r_data_buf_reg[2] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\r_data_buf_reg[2] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\r_data_buf_reg[2] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\r_data_buf_reg[2] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\r_data_buf_reg[2] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\r_data_buf_reg[2] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\r_data_buf_reg[2] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\r_data_buf_reg[2] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\r_data_buf_reg[3] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\r_data_buf_reg[3] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\r_data_buf_reg[3] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\r_data_buf_reg[3] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\r_data_buf_reg[3] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\r_data_buf_reg[3] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\r_data_buf_reg[3] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\r_data_buf_reg[3] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[17]),
        .Q(\r_data_buf_reg[3] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\r_data_buf_reg[3] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\r_data_buf_reg[3] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\r_data_buf_reg[3] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\r_data_buf_reg[3] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\r_data_buf_reg[3] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\r_data_buf_reg[3] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\r_data_buf_reg[3] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\r_data_buf_reg[3] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\r_data_buf_reg[3] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[0]),
        .Q(\r_data_buf_reg[4] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[10]),
        .Q(\r_data_buf_reg[4] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[11]),
        .Q(\r_data_buf_reg[4] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[12]),
        .Q(\r_data_buf_reg[4] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[13]),
        .Q(\r_data_buf_reg[4] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[14]),
        .Q(\r_data_buf_reg[4] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[15]),
        .Q(\r_data_buf_reg[4] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[16]),
        .Q(\r_data_buf_reg[4] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[17]),
        .Q(\r_data_buf_reg[4] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[1]),
        .Q(\r_data_buf_reg[4] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[2]),
        .Q(\r_data_buf_reg[4] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[3]),
        .Q(\r_data_buf_reg[4] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[4]),
        .Q(\r_data_buf_reg[4] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[5]),
        .Q(\r_data_buf_reg[4] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[6]),
        .Q(\r_data_buf_reg[4] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[7]),
        .Q(\r_data_buf_reg[4] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[8]),
        .Q(\r_data_buf_reg[4] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(D[9]),
        .Q(\r_data_buf_reg[4] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[0]),
        .Q(\r_data_buf_reg[5] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[10]),
        .Q(\r_data_buf_reg[5] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[11]),
        .Q(\r_data_buf_reg[5] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[12]),
        .Q(\r_data_buf_reg[5] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[13]),
        .Q(\r_data_buf_reg[5] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[14]),
        .Q(\r_data_buf_reg[5] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[15]),
        .Q(\r_data_buf_reg[5] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[16]),
        .Q(\r_data_buf_reg[5] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[17]),
        .Q(\r_data_buf_reg[5] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[1]),
        .Q(\r_data_buf_reg[5] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[2]),
        .Q(\r_data_buf_reg[5] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[3]),
        .Q(\r_data_buf_reg[5] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[4]),
        .Q(\r_data_buf_reg[5] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[5]),
        .Q(\r_data_buf_reg[5] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[6]),
        .Q(\r_data_buf_reg[5] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[7]),
        .Q(\r_data_buf_reg[5] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[8]),
        .Q(\r_data_buf_reg[5] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(D[9]),
        .Q(\r_data_buf_reg[5] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[0]),
        .Q(\r_data_buf_reg[6] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[10]),
        .Q(\r_data_buf_reg[6] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[11]),
        .Q(\r_data_buf_reg[6] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[12]),
        .Q(\r_data_buf_reg[6] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[13]),
        .Q(\r_data_buf_reg[6] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[14]),
        .Q(\r_data_buf_reg[6] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[15]),
        .Q(\r_data_buf_reg[6] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[16]),
        .Q(\r_data_buf_reg[6] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[17]),
        .Q(\r_data_buf_reg[6] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[1]),
        .Q(\r_data_buf_reg[6] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[2]),
        .Q(\r_data_buf_reg[6] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[3]),
        .Q(\r_data_buf_reg[6] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[4]),
        .Q(\r_data_buf_reg[6] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[5]),
        .Q(\r_data_buf_reg[6] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[6]),
        .Q(\r_data_buf_reg[6] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[7]),
        .Q(\r_data_buf_reg[6] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[8]),
        .Q(\r_data_buf_reg[6] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(D[9]),
        .Q(\r_data_buf_reg[6] [9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[0]),
        .Q(\r_data_buf_reg[7] [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[10]),
        .Q(\r_data_buf_reg[7] [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[11]),
        .Q(\r_data_buf_reg[7] [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[12]),
        .Q(\r_data_buf_reg[7] [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[13]),
        .Q(\r_data_buf_reg[7] [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[14]),
        .Q(\r_data_buf_reg[7] [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[15]),
        .Q(\r_data_buf_reg[7] [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[16]),
        .Q(\r_data_buf_reg[7] [16]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[17]),
        .Q(\r_data_buf_reg[7] [17]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[1]),
        .Q(\r_data_buf_reg[7] [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[2]),
        .Q(\r_data_buf_reg[7] [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[3]),
        .Q(\r_data_buf_reg[7] [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[4]),
        .Q(\r_data_buf_reg[7] [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[5]),
        .Q(\r_data_buf_reg[7] [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[6]),
        .Q(\r_data_buf_reg[7] [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[7]),
        .Q(\r_data_buf_reg[7] [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[8]),
        .Q(\r_data_buf_reg[7] [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(D[9]),
        .Q(\r_data_buf_reg[7] [9]),
        .R(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \r_rd_ptr[0]_i_1 
       (.I0(w_rd_valid),
        .I1(r_rd_ptr[0]),
        .O(\r_rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rd_ptr[1]_i_1 
       (.I0(r_rd_ptr[0]),
        .I1(w_rd_valid),
        .I2(r_rd_ptr[1]),
        .O(\r_rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rd_ptr[2]_i_1 
       (.I0(r_rd_ptr[0]),
        .I1(r_rd_ptr[1]),
        .I2(w_rd_valid),
        .I3(r_rd_ptr[2]),
        .O(\r_rd_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A88A08080880)) 
    \r_rd_ptr[2]_i_2 
       (.I0(o_req_alloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(r_rd_ptr[2]),
        .I3(r_rd_ptr[0]),
        .I4(r_rd_ptr[1]),
        .I5(skid_mst_vld_i_n_1),
        .O(w_rd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[0]_i_1_n_0 ),
        .Q(r_rd_ptr[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[1]_i_1_n_0 ),
        .Q(r_rd_ptr[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[2]_i_1_n_0 ),
        .Q(r_rd_ptr[2]),
        .R(i_rst_IBUF));
  LUT3 #(
    .INIT(8'h56)) 
    \r_skid_cntr[0]_i_1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(i_req_alloc_vld_IBUF),
        .I2(r_sready_reg_0),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5BA4)) 
    \r_skid_cntr[1]_i_1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(i_req_alloc_vld_IBUF),
        .I2(r_sready_reg_0),
        .I3(r_skid_cntr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77EF8810)) 
    \r_skid_cntr[2]_i_1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(r_skid_cntr_reg[1]),
        .I2(i_req_alloc_vld_IBUF),
        .I3(r_sready_reg_0),
        .I4(r_skid_cntr_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFFFFFDFE)) 
    \r_skid_cntr[3]_i_1 
       (.I0(r_sready_reg_0),
        .I1(r_skid_cntr_reg[3]),
        .I2(r_skid_cntr_reg[2]),
        .I3(r_skid_cntr_reg[0]),
        .I4(r_skid_cntr_reg[1]),
        .O(\r_skid_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFEFF80800100)) 
    \r_skid_cntr[3]_i_2 
       (.I0(r_skid_cntr_reg[1]),
        .I1(r_skid_cntr_reg[0]),
        .I2(r_skid_cntr_reg[2]),
        .I3(i_req_alloc_vld_IBUF),
        .I4(r_sready_reg_0),
        .I5(r_skid_cntr_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(r_skid_cntr_reg[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(r_skid_cntr_reg[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(r_skid_cntr_reg[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(r_skid_cntr_reg[3]),
        .R(i_rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    r_sready_i_1
       (.I0(w_wr_valid),
        .I1(r_sready_reg_0),
        .I2(r_almost_full),
        .I3(w_rd_valid),
        .I4(i_rst_IBUF),
        .O(r_sready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sready_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_sready_i_1_n_0),
        .Q(r_sready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[0]_i_1 
       (.I0(data0),
        .I1(\r_data_buf[0][17]_i_1_n_0 ),
        .I2(\r_valid_buf[0]_i_2_n_0 ),
        .I3(r_rd_ptr[2]),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444000)) 
    \r_valid_buf[0]_i_2 
       (.I0(r_rd_ptr[0]),
        .I1(o_req_alloc_rdy),
        .I2(skid_mst_vld_i_n_2),
        .I3(r_rd_ptr[2]),
        .I4(skid_mst_vld_i_n_1),
        .I5(r_rd_ptr[1]),
        .O(\r_valid_buf[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[1]_i_1 
       (.I0(data7),
        .I1(\r_data_buf[1][17]_i_1_n_0 ),
        .I2(\r_valid_buf[1]_i_2_n_0 ),
        .I3(r_rd_ptr[2]),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000800)) 
    \r_valid_buf[1]_i_2 
       (.I0(o_req_alloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(r_rd_ptr[2]),
        .I3(r_rd_ptr[0]),
        .I4(skid_mst_vld_i_n_1),
        .I5(r_rd_ptr[1]),
        .O(\r_valid_buf[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[2]_i_1 
       (.I0(data6),
        .I1(\r_data_buf[2][17]_i_1_n_0 ),
        .I2(\r_valid_buf[2]_i_2_n_0 ),
        .I3(r_rd_ptr[2]),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000400000)) 
    \r_valid_buf[2]_i_2 
       (.I0(r_rd_ptr[0]),
        .I1(o_req_alloc_rdy),
        .I2(skid_mst_vld_i_n_2),
        .I3(r_rd_ptr[2]),
        .I4(r_rd_ptr[1]),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[3]_i_1 
       (.I0(data5),
        .I1(\r_data_buf[3][17]_i_1_n_0 ),
        .I2(\r_valid_buf[3]_i_2_n_0 ),
        .I3(r_rd_ptr[2]),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800000008000000)) 
    \r_valid_buf[3]_i_2 
       (.I0(o_req_alloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(r_rd_ptr[2]),
        .I3(r_rd_ptr[0]),
        .I4(r_rd_ptr[1]),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[4]_i_1 
       (.I0(data4),
        .I1(p_5_in7_in),
        .I2(r_rd_ptr[2]),
        .I3(\r_valid_buf[0]_i_2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[5]_i_1 
       (.I0(data3),
        .I1(p_3_in10_in),
        .I2(r_rd_ptr[2]),
        .I3(\r_valid_buf[1]_i_2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[6]_i_1 
       (.I0(data2),
        .I1(p_1_in14_in),
        .I2(r_rd_ptr[2]),
        .I3(\r_valid_buf[2]_i_2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[7]_i_1 
       (.I0(\r_valid_buf_reg_n_0_[7] ),
        .I1(p_14_in),
        .I2(r_rd_ptr[2]),
        .I3(\r_valid_buf[3]_i_2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[0]_i_1_n_0 ),
        .Q(data0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[1]_i_1_n_0 ),
        .Q(data7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[2]_i_1_n_0 ),
        .Q(data6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[3]_i_1_n_0 ),
        .Q(data5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[4]_i_1_n_0 ),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[5]_i_1_n_0 ),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[6]_i_1_n_0 ),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[7]_i_1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_wr_ptr[0]_i_1 
       (.I0(w_wr_valid),
        .I1(r_wr_ptr[0]),
        .O(\r_wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wr_ptr[1]_i_1 
       (.I0(r_wr_ptr[0]),
        .I1(w_wr_valid),
        .I2(r_wr_ptr[1]),
        .O(\r_wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wr_ptr[2]_i_1 
       (.I0(r_wr_ptr[0]),
        .I1(r_wr_ptr[1]),
        .I2(w_wr_valid),
        .I3(r_wr_ptr[2]),
        .O(\r_wr_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_wr_ptr[2]_i_2 
       (.I0(i_req_alloc_vld_IBUF),
        .I1(r_skid_cntr_reg[1]),
        .I2(r_skid_cntr_reg[0]),
        .I3(r_skid_cntr_reg[3]),
        .I4(r_skid_cntr_reg[2]),
        .I5(r_sready_reg_0),
        .O(w_wr_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[0]_i_1_n_0 ),
        .Q(r_wr_ptr[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[1]_i_1_n_0 ),
        .Q(r_wr_ptr[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[2]_i_1_n_0 ),
        .Q(r_wr_ptr[2]),
        .R(i_rst_IBUF));
  skids__parameterized0 skid_mst_data_i
       (.Q(\r_data_buf_reg[3] ),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_alloc_data(i_req_alloc_data),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_alloc_rdy(o_req_alloc_rdy),
        .r_rd_ptr(r_rd_ptr),
        .\r_sreg_reg[17]_0 (\r_data_buf_reg[2] ),
        .\r_sreg_reg[17]_1 (\r_data_buf_reg[1] ),
        .\r_sreg_reg[17]_2 (\r_data_buf_reg[0] ),
        .\r_sreg_reg[17]_3 (\r_data_buf_reg[7] ),
        .\r_sreg_reg[17]_4 (\r_data_buf_reg[6] ),
        .\r_sreg_reg[17]_5 (\r_data_buf_reg[5] ),
        .\r_sreg_reg[17]_6 (\r_data_buf_reg[4] ));
  skids_12 skid_mst_vld_i
       (.data0(data0),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_alloc_vld(i_req_alloc_vld),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_alloc_rdy(o_req_alloc_rdy),
        .r_rd_ptr(r_rd_ptr),
        .\r_sreg_reg[0]_0 (\r_valid_buf_reg_n_0_[7] ),
        .\r_valid_buf_reg[3] (skid_mst_vld_i_n_2),
        .\r_valid_buf_reg[7] (skid_mst_vld_i_n_1));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module axis_fifo__parameterized0
   (o_rep_alloc_vld_OBUF,
    r_sready_reg_0,
    o_rep_alloc_data_OBUF,
    i_rst_IBUF,
    i_clk_IBUF_BUFG,
    i_rep_alloc_rdy_IBUF,
    o_rep_alloc_vld,
    o_rep_alloc_data);
  output o_rep_alloc_vld_OBUF;
  output r_sready_reg_0;
  output [14:0]o_rep_alloc_data_OBUF;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;
  input i_rep_alloc_rdy_IBUF;
  input o_rep_alloc_vld;
  input [14:0]o_rep_alloc_data;

  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire [14:0]o_rep_alloc_data;
  wire [14:0]o_rep_alloc_data_OBUF;
  wire o_rep_alloc_vld;
  wire o_rep_alloc_vld_OBUF;
  wire [3:0]p_0_in__1;
  wire p_14_in;
  wire p_1_in14_in;
  wire p_3_in10_in;
  wire p_5_in7_in;
  wire r_almost_full;
  wire r_almost_full_i_1__1_n_0;
  wire \r_data_buf[0][14]_i_1__0_n_0 ;
  wire \r_data_buf[1][14]_i_1__0_n_0 ;
  wire \r_data_buf[2][14]_i_1__0_n_0 ;
  wire \r_data_buf[3][14]_i_1__0_n_0 ;
  wire \r_data_buf_reg_n_0_[0][0] ;
  wire \r_data_buf_reg_n_0_[0][10] ;
  wire \r_data_buf_reg_n_0_[0][11] ;
  wire \r_data_buf_reg_n_0_[0][12] ;
  wire \r_data_buf_reg_n_0_[0][13] ;
  wire \r_data_buf_reg_n_0_[0][14] ;
  wire \r_data_buf_reg_n_0_[0][1] ;
  wire \r_data_buf_reg_n_0_[0][2] ;
  wire \r_data_buf_reg_n_0_[0][3] ;
  wire \r_data_buf_reg_n_0_[0][4] ;
  wire \r_data_buf_reg_n_0_[0][5] ;
  wire \r_data_buf_reg_n_0_[0][6] ;
  wire \r_data_buf_reg_n_0_[0][7] ;
  wire \r_data_buf_reg_n_0_[0][8] ;
  wire \r_data_buf_reg_n_0_[0][9] ;
  wire \r_data_buf_reg_n_0_[1][0] ;
  wire \r_data_buf_reg_n_0_[1][10] ;
  wire \r_data_buf_reg_n_0_[1][11] ;
  wire \r_data_buf_reg_n_0_[1][12] ;
  wire \r_data_buf_reg_n_0_[1][13] ;
  wire \r_data_buf_reg_n_0_[1][14] ;
  wire \r_data_buf_reg_n_0_[1][1] ;
  wire \r_data_buf_reg_n_0_[1][2] ;
  wire \r_data_buf_reg_n_0_[1][3] ;
  wire \r_data_buf_reg_n_0_[1][4] ;
  wire \r_data_buf_reg_n_0_[1][5] ;
  wire \r_data_buf_reg_n_0_[1][6] ;
  wire \r_data_buf_reg_n_0_[1][7] ;
  wire \r_data_buf_reg_n_0_[1][8] ;
  wire \r_data_buf_reg_n_0_[1][9] ;
  wire \r_data_buf_reg_n_0_[2][0] ;
  wire \r_data_buf_reg_n_0_[2][10] ;
  wire \r_data_buf_reg_n_0_[2][11] ;
  wire \r_data_buf_reg_n_0_[2][12] ;
  wire \r_data_buf_reg_n_0_[2][13] ;
  wire \r_data_buf_reg_n_0_[2][14] ;
  wire \r_data_buf_reg_n_0_[2][1] ;
  wire \r_data_buf_reg_n_0_[2][2] ;
  wire \r_data_buf_reg_n_0_[2][3] ;
  wire \r_data_buf_reg_n_0_[2][4] ;
  wire \r_data_buf_reg_n_0_[2][5] ;
  wire \r_data_buf_reg_n_0_[2][6] ;
  wire \r_data_buf_reg_n_0_[2][7] ;
  wire \r_data_buf_reg_n_0_[2][8] ;
  wire \r_data_buf_reg_n_0_[2][9] ;
  wire \r_data_buf_reg_n_0_[3][0] ;
  wire \r_data_buf_reg_n_0_[3][10] ;
  wire \r_data_buf_reg_n_0_[3][11] ;
  wire \r_data_buf_reg_n_0_[3][12] ;
  wire \r_data_buf_reg_n_0_[3][13] ;
  wire \r_data_buf_reg_n_0_[3][14] ;
  wire \r_data_buf_reg_n_0_[3][1] ;
  wire \r_data_buf_reg_n_0_[3][2] ;
  wire \r_data_buf_reg_n_0_[3][3] ;
  wire \r_data_buf_reg_n_0_[3][4] ;
  wire \r_data_buf_reg_n_0_[3][5] ;
  wire \r_data_buf_reg_n_0_[3][6] ;
  wire \r_data_buf_reg_n_0_[3][7] ;
  wire \r_data_buf_reg_n_0_[3][8] ;
  wire \r_data_buf_reg_n_0_[3][9] ;
  wire \r_data_buf_reg_n_0_[4][0] ;
  wire \r_data_buf_reg_n_0_[4][10] ;
  wire \r_data_buf_reg_n_0_[4][11] ;
  wire \r_data_buf_reg_n_0_[4][12] ;
  wire \r_data_buf_reg_n_0_[4][13] ;
  wire \r_data_buf_reg_n_0_[4][14] ;
  wire \r_data_buf_reg_n_0_[4][1] ;
  wire \r_data_buf_reg_n_0_[4][2] ;
  wire \r_data_buf_reg_n_0_[4][3] ;
  wire \r_data_buf_reg_n_0_[4][4] ;
  wire \r_data_buf_reg_n_0_[4][5] ;
  wire \r_data_buf_reg_n_0_[4][6] ;
  wire \r_data_buf_reg_n_0_[4][7] ;
  wire \r_data_buf_reg_n_0_[4][8] ;
  wire \r_data_buf_reg_n_0_[4][9] ;
  wire \r_data_buf_reg_n_0_[5][0] ;
  wire \r_data_buf_reg_n_0_[5][10] ;
  wire \r_data_buf_reg_n_0_[5][11] ;
  wire \r_data_buf_reg_n_0_[5][12] ;
  wire \r_data_buf_reg_n_0_[5][13] ;
  wire \r_data_buf_reg_n_0_[5][14] ;
  wire \r_data_buf_reg_n_0_[5][1] ;
  wire \r_data_buf_reg_n_0_[5][2] ;
  wire \r_data_buf_reg_n_0_[5][3] ;
  wire \r_data_buf_reg_n_0_[5][4] ;
  wire \r_data_buf_reg_n_0_[5][5] ;
  wire \r_data_buf_reg_n_0_[5][6] ;
  wire \r_data_buf_reg_n_0_[5][7] ;
  wire \r_data_buf_reg_n_0_[5][8] ;
  wire \r_data_buf_reg_n_0_[5][9] ;
  wire \r_data_buf_reg_n_0_[6][0] ;
  wire \r_data_buf_reg_n_0_[6][10] ;
  wire \r_data_buf_reg_n_0_[6][11] ;
  wire \r_data_buf_reg_n_0_[6][12] ;
  wire \r_data_buf_reg_n_0_[6][13] ;
  wire \r_data_buf_reg_n_0_[6][14] ;
  wire \r_data_buf_reg_n_0_[6][1] ;
  wire \r_data_buf_reg_n_0_[6][2] ;
  wire \r_data_buf_reg_n_0_[6][3] ;
  wire \r_data_buf_reg_n_0_[6][4] ;
  wire \r_data_buf_reg_n_0_[6][5] ;
  wire \r_data_buf_reg_n_0_[6][6] ;
  wire \r_data_buf_reg_n_0_[6][7] ;
  wire \r_data_buf_reg_n_0_[6][8] ;
  wire \r_data_buf_reg_n_0_[6][9] ;
  wire \r_data_buf_reg_n_0_[7][0] ;
  wire \r_data_buf_reg_n_0_[7][10] ;
  wire \r_data_buf_reg_n_0_[7][11] ;
  wire \r_data_buf_reg_n_0_[7][12] ;
  wire \r_data_buf_reg_n_0_[7][13] ;
  wire \r_data_buf_reg_n_0_[7][14] ;
  wire \r_data_buf_reg_n_0_[7][1] ;
  wire \r_data_buf_reg_n_0_[7][2] ;
  wire \r_data_buf_reg_n_0_[7][3] ;
  wire \r_data_buf_reg_n_0_[7][4] ;
  wire \r_data_buf_reg_n_0_[7][5] ;
  wire \r_data_buf_reg_n_0_[7][6] ;
  wire \r_data_buf_reg_n_0_[7][7] ;
  wire \r_data_buf_reg_n_0_[7][8] ;
  wire \r_data_buf_reg_n_0_[7][9] ;
  wire \r_rd_ptr[0]_i_1_n_0 ;
  wire \r_rd_ptr[1]_i_1_n_0 ;
  wire \r_rd_ptr[2]_i_1_n_0 ;
  wire \r_rd_ptr_reg_n_0_[0] ;
  wire \r_rd_ptr_reg_n_0_[1] ;
  wire \r_rd_ptr_reg_n_0_[2] ;
  wire \r_skid_cntr[3]_i_1__1_n_0 ;
  wire [3:0]r_skid_cntr_reg;
  wire r_sready_i_1__1_n_0;
  wire r_sready_reg_0;
  wire \r_valid_buf[0]_i_1__1_n_0 ;
  wire \r_valid_buf[0]_i_2__1_n_0 ;
  wire \r_valid_buf[1]_i_1__1_n_0 ;
  wire \r_valid_buf[1]_i_2__1_n_0 ;
  wire \r_valid_buf[2]_i_1__1_n_0 ;
  wire \r_valid_buf[2]_i_2__1_n_0 ;
  wire \r_valid_buf[3]_i_1__1_n_0 ;
  wire \r_valid_buf[3]_i_2__1_n_0 ;
  wire \r_valid_buf[4]_i_1__1_n_0 ;
  wire \r_valid_buf[5]_i_1__1_n_0 ;
  wire \r_valid_buf[6]_i_1__1_n_0 ;
  wire \r_valid_buf[7]_i_1__1_n_0 ;
  wire \r_valid_buf_reg_n_0_[0] ;
  wire \r_valid_buf_reg_n_0_[1] ;
  wire \r_valid_buf_reg_n_0_[2] ;
  wire \r_valid_buf_reg_n_0_[3] ;
  wire \r_valid_buf_reg_n_0_[4] ;
  wire \r_valid_buf_reg_n_0_[5] ;
  wire \r_valid_buf_reg_n_0_[6] ;
  wire \r_valid_buf_reg_n_0_[7] ;
  wire \r_wr_ptr[0]_i_1_n_0 ;
  wire \r_wr_ptr[1]_i_1_n_0 ;
  wire \r_wr_ptr[2]_i_1_n_0 ;
  wire \r_wr_ptr_reg_n_0_[0] ;
  wire \r_wr_ptr_reg_n_0_[1] ;
  wire \r_wr_ptr_reg_n_0_[2] ;
  wire skid_mst_vld_i_n_1;
  wire skid_mst_vld_i_n_2;
  wire w_rd_valid;
  wire w_wr_valid;

  LUT6 #(
    .INIT(64'h0440800801102002)) 
    r_almost_full_i_1__1
       (.I0(\r_rd_ptr_reg_n_0_[1] ),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .I4(\r_wr_ptr_reg_n_0_[1] ),
        .I5(\r_wr_ptr_reg_n_0_[0] ),
        .O(r_almost_full_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_almost_full_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_almost_full_i_1__1_n_0),
        .Q(r_almost_full),
        .R(i_rst_IBUF));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_data_buf[0][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[0][14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \r_data_buf[1][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[1][14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[2][14]_i_1__0 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[2][14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_data_buf[3][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[3][14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[4][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[0] ),
        .O(p_5_in7_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \r_data_buf[5][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(w_wr_valid),
        .O(p_3_in10_in));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_data_buf[6][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_1_in14_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_data_buf[7][14]_i_1__0 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_14_in));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[0][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[0][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[0][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[0][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[0][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[0][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[0][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[0][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[0][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[0][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[0][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[0][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[0][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[0][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[0][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[1][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[1][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[1][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[1][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[1][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[1][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[1][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[1][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[1][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[1][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[1][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[1][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[1][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[1][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[1][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[2][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[2][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[2][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[2][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[2][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[2][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[2][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[2][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[2][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[2][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[2][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[2][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[2][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[2][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[2][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[3][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[3][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[3][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[3][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[3][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[3][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[3][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[3][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[3][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[3][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[3][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[3][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[3][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[3][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__0_n_0 ),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[3][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[4][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[4][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[4][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[4][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[4][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[4][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[4][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[4][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[4][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[4][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[4][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[4][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[4][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[4][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[4][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[5][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[5][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[5][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[5][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[5][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[5][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[5][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[5][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[5][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[5][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[5][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[5][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[5][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[5][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[5][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[6][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[6][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[6][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[6][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[6][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[6][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[6][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[6][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[6][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[6][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[6][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[6][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[6][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[6][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[6][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[7][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[7][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[7][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[7][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[7][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[7][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[7][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[7][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[7][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[7][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[7][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[7][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[7][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[7][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_alloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[7][9] ),
        .R(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \r_rd_ptr[0]_i_1 
       (.I0(w_rd_valid),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .O(\r_rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rd_ptr[1]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(w_rd_valid),
        .I2(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rd_ptr[2]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(\r_rd_ptr_reg_n_0_[1] ),
        .I2(w_rd_valid),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .O(\r_rd_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A88A08080880)) 
    \r_rd_ptr[2]_i_2__1 
       (.I0(i_rep_alloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(w_rd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[0]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[1]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[2]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  LUT3 #(
    .INIT(8'h56)) 
    \r_skid_cntr[0]_i_1__1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(o_rep_alloc_vld),
        .I2(r_sready_reg_0),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5BA4)) 
    \r_skid_cntr[1]_i_1__1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(o_rep_alloc_vld),
        .I2(r_sready_reg_0),
        .I3(r_skid_cntr_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77EF8810)) 
    \r_skid_cntr[2]_i_1__1 
       (.I0(r_skid_cntr_reg[0]),
        .I1(r_skid_cntr_reg[1]),
        .I2(o_rep_alloc_vld),
        .I3(r_sready_reg_0),
        .I4(r_skid_cntr_reg[2]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'hFFFFFDFE)) 
    \r_skid_cntr[3]_i_1__1 
       (.I0(r_sready_reg_0),
        .I1(r_skid_cntr_reg[3]),
        .I2(r_skid_cntr_reg[2]),
        .I3(r_skid_cntr_reg[0]),
        .I4(r_skid_cntr_reg[1]),
        .O(\r_skid_cntr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFEFF80800100)) 
    \r_skid_cntr[3]_i_2__1 
       (.I0(r_skid_cntr_reg[1]),
        .I1(r_skid_cntr_reg[0]),
        .I2(r_skid_cntr_reg[2]),
        .I3(o_rep_alloc_vld),
        .I4(r_sready_reg_0),
        .I5(r_skid_cntr_reg[3]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(r_skid_cntr_reg[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(r_skid_cntr_reg[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(r_skid_cntr_reg[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(r_skid_cntr_reg[3]),
        .R(i_rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    r_sready_i_1__1
       (.I0(w_wr_valid),
        .I1(r_sready_reg_0),
        .I2(r_almost_full),
        .I3(w_rd_valid),
        .I4(i_rst_IBUF),
        .O(r_sready_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sready_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_sready_i_1__1_n_0),
        .Q(r_sready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[0]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[0] ),
        .I1(\r_data_buf[0][14]_i_1__0_n_0 ),
        .I2(\r_valid_buf[0]_i_2__1_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444000)) 
    \r_valid_buf[0]_i_2__1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(i_rep_alloc_rdy_IBUF),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[1]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[1] ),
        .I1(\r_data_buf[1][14]_i_1__0_n_0 ),
        .I2(\r_valid_buf[1]_i_2__1_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000800)) 
    \r_valid_buf[1]_i_2__1 
       (.I0(i_rep_alloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[2]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[2] ),
        .I1(\r_data_buf[2][14]_i_1__0_n_0 ),
        .I2(\r_valid_buf[2]_i_2__1_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000400000)) 
    \r_valid_buf[2]_i_2__1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(i_rep_alloc_rdy_IBUF),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[3]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[3] ),
        .I1(\r_data_buf[3][14]_i_1__0_n_0 ),
        .I2(\r_valid_buf[3]_i_2__1_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA800000008000000)) 
    \r_valid_buf[3]_i_2__1 
       (.I0(i_rep_alloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[4]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[4] ),
        .I1(p_5_in7_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[0]_i_2__1_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[5]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[5] ),
        .I1(p_3_in10_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[1]_i_2__1_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[6]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[6] ),
        .I1(p_1_in14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[2]_i_2__1_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[7]_i_1__1 
       (.I0(\r_valid_buf_reg_n_0_[7] ),
        .I1(p_14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[3]_i_2__1_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[0]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[1]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[2]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[3]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[4]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[5]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[6]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[7]_i_1__1_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_wr_ptr[0]_i_1 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .O(\r_wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wr_ptr[1]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .O(\r_wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wr_ptr[2]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_wr_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_wr_ptr[2]_i_2__1 
       (.I0(o_rep_alloc_vld),
        .I1(r_skid_cntr_reg[1]),
        .I2(r_skid_cntr_reg[0]),
        .I3(r_skid_cntr_reg[3]),
        .I4(r_skid_cntr_reg[2]),
        .I5(r_sready_reg_0),
        .O(w_wr_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[0]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[1]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[2]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  skids__parameterized1_13 skid_mst_data_i
       (.Q({\r_data_buf_reg_n_0_[3][14] ,\r_data_buf_reg_n_0_[3][13] ,\r_data_buf_reg_n_0_[3][12] ,\r_data_buf_reg_n_0_[3][11] ,\r_data_buf_reg_n_0_[3][10] ,\r_data_buf_reg_n_0_[3][9] ,\r_data_buf_reg_n_0_[3][8] ,\r_data_buf_reg_n_0_[3][7] ,\r_data_buf_reg_n_0_[3][6] ,\r_data_buf_reg_n_0_[3][5] ,\r_data_buf_reg_n_0_[3][4] ,\r_data_buf_reg_n_0_[3][3] ,\r_data_buf_reg_n_0_[3][2] ,\r_data_buf_reg_n_0_[3][1] ,\r_data_buf_reg_n_0_[3][0] }),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_alloc_rdy_IBUF(i_rep_alloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_alloc_data_OBUF(o_rep_alloc_data_OBUF),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[14]_0 ({\r_data_buf_reg_n_0_[2][14] ,\r_data_buf_reg_n_0_[2][13] ,\r_data_buf_reg_n_0_[2][12] ,\r_data_buf_reg_n_0_[2][11] ,\r_data_buf_reg_n_0_[2][10] ,\r_data_buf_reg_n_0_[2][9] ,\r_data_buf_reg_n_0_[2][8] ,\r_data_buf_reg_n_0_[2][7] ,\r_data_buf_reg_n_0_[2][6] ,\r_data_buf_reg_n_0_[2][5] ,\r_data_buf_reg_n_0_[2][4] ,\r_data_buf_reg_n_0_[2][3] ,\r_data_buf_reg_n_0_[2][2] ,\r_data_buf_reg_n_0_[2][1] ,\r_data_buf_reg_n_0_[2][0] }),
        .\r_sreg_reg[14]_1 ({\r_data_buf_reg_n_0_[1][14] ,\r_data_buf_reg_n_0_[1][13] ,\r_data_buf_reg_n_0_[1][12] ,\r_data_buf_reg_n_0_[1][11] ,\r_data_buf_reg_n_0_[1][10] ,\r_data_buf_reg_n_0_[1][9] ,\r_data_buf_reg_n_0_[1][8] ,\r_data_buf_reg_n_0_[1][7] ,\r_data_buf_reg_n_0_[1][6] ,\r_data_buf_reg_n_0_[1][5] ,\r_data_buf_reg_n_0_[1][4] ,\r_data_buf_reg_n_0_[1][3] ,\r_data_buf_reg_n_0_[1][2] ,\r_data_buf_reg_n_0_[1][1] ,\r_data_buf_reg_n_0_[1][0] }),
        .\r_sreg_reg[14]_2 ({\r_data_buf_reg_n_0_[0][14] ,\r_data_buf_reg_n_0_[0][13] ,\r_data_buf_reg_n_0_[0][12] ,\r_data_buf_reg_n_0_[0][11] ,\r_data_buf_reg_n_0_[0][10] ,\r_data_buf_reg_n_0_[0][9] ,\r_data_buf_reg_n_0_[0][8] ,\r_data_buf_reg_n_0_[0][7] ,\r_data_buf_reg_n_0_[0][6] ,\r_data_buf_reg_n_0_[0][5] ,\r_data_buf_reg_n_0_[0][4] ,\r_data_buf_reg_n_0_[0][3] ,\r_data_buf_reg_n_0_[0][2] ,\r_data_buf_reg_n_0_[0][1] ,\r_data_buf_reg_n_0_[0][0] }),
        .\r_sreg_reg[14]_3 ({\r_data_buf_reg_n_0_[7][14] ,\r_data_buf_reg_n_0_[7][13] ,\r_data_buf_reg_n_0_[7][12] ,\r_data_buf_reg_n_0_[7][11] ,\r_data_buf_reg_n_0_[7][10] ,\r_data_buf_reg_n_0_[7][9] ,\r_data_buf_reg_n_0_[7][8] ,\r_data_buf_reg_n_0_[7][7] ,\r_data_buf_reg_n_0_[7][6] ,\r_data_buf_reg_n_0_[7][5] ,\r_data_buf_reg_n_0_[7][4] ,\r_data_buf_reg_n_0_[7][3] ,\r_data_buf_reg_n_0_[7][2] ,\r_data_buf_reg_n_0_[7][1] ,\r_data_buf_reg_n_0_[7][0] }),
        .\r_sreg_reg[14]_4 ({\r_data_buf_reg_n_0_[6][14] ,\r_data_buf_reg_n_0_[6][13] ,\r_data_buf_reg_n_0_[6][12] ,\r_data_buf_reg_n_0_[6][11] ,\r_data_buf_reg_n_0_[6][10] ,\r_data_buf_reg_n_0_[6][9] ,\r_data_buf_reg_n_0_[6][8] ,\r_data_buf_reg_n_0_[6][7] ,\r_data_buf_reg_n_0_[6][6] ,\r_data_buf_reg_n_0_[6][5] ,\r_data_buf_reg_n_0_[6][4] ,\r_data_buf_reg_n_0_[6][3] ,\r_data_buf_reg_n_0_[6][2] ,\r_data_buf_reg_n_0_[6][1] ,\r_data_buf_reg_n_0_[6][0] }),
        .\r_sreg_reg[14]_5 ({\r_data_buf_reg_n_0_[5][14] ,\r_data_buf_reg_n_0_[5][13] ,\r_data_buf_reg_n_0_[5][12] ,\r_data_buf_reg_n_0_[5][11] ,\r_data_buf_reg_n_0_[5][10] ,\r_data_buf_reg_n_0_[5][9] ,\r_data_buf_reg_n_0_[5][8] ,\r_data_buf_reg_n_0_[5][7] ,\r_data_buf_reg_n_0_[5][6] ,\r_data_buf_reg_n_0_[5][5] ,\r_data_buf_reg_n_0_[5][4] ,\r_data_buf_reg_n_0_[5][3] ,\r_data_buf_reg_n_0_[5][2] ,\r_data_buf_reg_n_0_[5][1] ,\r_data_buf_reg_n_0_[5][0] }),
        .\r_sreg_reg[14]_6 ({\r_data_buf_reg_n_0_[4][14] ,\r_data_buf_reg_n_0_[4][13] ,\r_data_buf_reg_n_0_[4][12] ,\r_data_buf_reg_n_0_[4][11] ,\r_data_buf_reg_n_0_[4][10] ,\r_data_buf_reg_n_0_[4][9] ,\r_data_buf_reg_n_0_[4][8] ,\r_data_buf_reg_n_0_[4][7] ,\r_data_buf_reg_n_0_[4][6] ,\r_data_buf_reg_n_0_[4][5] ,\r_data_buf_reg_n_0_[4][4] ,\r_data_buf_reg_n_0_[4][3] ,\r_data_buf_reg_n_0_[4][2] ,\r_data_buf_reg_n_0_[4][1] ,\r_data_buf_reg_n_0_[4][0] }));
  skids_14 skid_mst_vld_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_alloc_rdy_IBUF(i_rep_alloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_alloc_vld_OBUF(o_rep_alloc_vld_OBUF),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[0]_10 (\r_valid_buf_reg_n_0_[2] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_3 (\r_valid_buf_reg_n_0_[7] ),
        .\r_sreg_reg[0]_4 (\r_valid_buf_reg_n_0_[0] ),
        .\r_sreg_reg[0]_5 (\r_valid_buf_reg_n_0_[5] ),
        .\r_sreg_reg[0]_6 (\r_valid_buf_reg_n_0_[6] ),
        .\r_sreg_reg[0]_7 (\r_valid_buf_reg_n_0_[3] ),
        .\r_sreg_reg[0]_8 (\r_valid_buf_reg_n_0_[4] ),
        .\r_sreg_reg[0]_9 (\r_valid_buf_reg_n_0_[1] ),
        .\r_valid_buf_reg[3] (skid_mst_vld_i_n_2),
        .\r_valid_buf_reg[7] (skid_mst_vld_i_n_1));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module axis_fifo__parameterized0_8
   (o_rep_dealloc_vld_OBUF,
    r_sready_reg_0,
    o_rep_dealloc_data_OBUF,
    i_rst_IBUF,
    i_clk_IBUF_BUFG,
    i_rep_dealloc_rdy_IBUF,
    o_rep_dealloc_vld,
    o_rep_dealloc_data);
  output o_rep_dealloc_vld_OBUF;
  output r_sready_reg_0;
  output [14:0]o_rep_dealloc_data_OBUF;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;
  input i_rep_dealloc_rdy_IBUF;
  input o_rep_dealloc_vld;
  input [14:0]o_rep_dealloc_data;

  wire i_clk_IBUF_BUFG;
  wire i_rep_dealloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire [14:0]o_rep_dealloc_data;
  wire [14:0]o_rep_dealloc_data_OBUF;
  wire o_rep_dealloc_vld;
  wire o_rep_dealloc_vld_OBUF;
  wire [3:0]p_0_in__2;
  wire p_14_in;
  wire p_1_in14_in;
  wire p_3_in10_in;
  wire p_5_in7_in;
  wire r_almost_full;
  wire r_almost_full_i_1__2_n_0;
  wire \r_data_buf[0][14]_i_1__1_n_0 ;
  wire \r_data_buf[1][14]_i_1__1_n_0 ;
  wire \r_data_buf[2][14]_i_1__1_n_0 ;
  wire \r_data_buf[3][14]_i_1__1_n_0 ;
  wire \r_data_buf_reg_n_0_[0][0] ;
  wire \r_data_buf_reg_n_0_[0][10] ;
  wire \r_data_buf_reg_n_0_[0][11] ;
  wire \r_data_buf_reg_n_0_[0][12] ;
  wire \r_data_buf_reg_n_0_[0][13] ;
  wire \r_data_buf_reg_n_0_[0][14] ;
  wire \r_data_buf_reg_n_0_[0][1] ;
  wire \r_data_buf_reg_n_0_[0][2] ;
  wire \r_data_buf_reg_n_0_[0][3] ;
  wire \r_data_buf_reg_n_0_[0][4] ;
  wire \r_data_buf_reg_n_0_[0][5] ;
  wire \r_data_buf_reg_n_0_[0][6] ;
  wire \r_data_buf_reg_n_0_[0][7] ;
  wire \r_data_buf_reg_n_0_[0][8] ;
  wire \r_data_buf_reg_n_0_[0][9] ;
  wire \r_data_buf_reg_n_0_[1][0] ;
  wire \r_data_buf_reg_n_0_[1][10] ;
  wire \r_data_buf_reg_n_0_[1][11] ;
  wire \r_data_buf_reg_n_0_[1][12] ;
  wire \r_data_buf_reg_n_0_[1][13] ;
  wire \r_data_buf_reg_n_0_[1][14] ;
  wire \r_data_buf_reg_n_0_[1][1] ;
  wire \r_data_buf_reg_n_0_[1][2] ;
  wire \r_data_buf_reg_n_0_[1][3] ;
  wire \r_data_buf_reg_n_0_[1][4] ;
  wire \r_data_buf_reg_n_0_[1][5] ;
  wire \r_data_buf_reg_n_0_[1][6] ;
  wire \r_data_buf_reg_n_0_[1][7] ;
  wire \r_data_buf_reg_n_0_[1][8] ;
  wire \r_data_buf_reg_n_0_[1][9] ;
  wire \r_data_buf_reg_n_0_[2][0] ;
  wire \r_data_buf_reg_n_0_[2][10] ;
  wire \r_data_buf_reg_n_0_[2][11] ;
  wire \r_data_buf_reg_n_0_[2][12] ;
  wire \r_data_buf_reg_n_0_[2][13] ;
  wire \r_data_buf_reg_n_0_[2][14] ;
  wire \r_data_buf_reg_n_0_[2][1] ;
  wire \r_data_buf_reg_n_0_[2][2] ;
  wire \r_data_buf_reg_n_0_[2][3] ;
  wire \r_data_buf_reg_n_0_[2][4] ;
  wire \r_data_buf_reg_n_0_[2][5] ;
  wire \r_data_buf_reg_n_0_[2][6] ;
  wire \r_data_buf_reg_n_0_[2][7] ;
  wire \r_data_buf_reg_n_0_[2][8] ;
  wire \r_data_buf_reg_n_0_[2][9] ;
  wire \r_data_buf_reg_n_0_[3][0] ;
  wire \r_data_buf_reg_n_0_[3][10] ;
  wire \r_data_buf_reg_n_0_[3][11] ;
  wire \r_data_buf_reg_n_0_[3][12] ;
  wire \r_data_buf_reg_n_0_[3][13] ;
  wire \r_data_buf_reg_n_0_[3][14] ;
  wire \r_data_buf_reg_n_0_[3][1] ;
  wire \r_data_buf_reg_n_0_[3][2] ;
  wire \r_data_buf_reg_n_0_[3][3] ;
  wire \r_data_buf_reg_n_0_[3][4] ;
  wire \r_data_buf_reg_n_0_[3][5] ;
  wire \r_data_buf_reg_n_0_[3][6] ;
  wire \r_data_buf_reg_n_0_[3][7] ;
  wire \r_data_buf_reg_n_0_[3][8] ;
  wire \r_data_buf_reg_n_0_[3][9] ;
  wire \r_data_buf_reg_n_0_[4][0] ;
  wire \r_data_buf_reg_n_0_[4][10] ;
  wire \r_data_buf_reg_n_0_[4][11] ;
  wire \r_data_buf_reg_n_0_[4][12] ;
  wire \r_data_buf_reg_n_0_[4][13] ;
  wire \r_data_buf_reg_n_0_[4][14] ;
  wire \r_data_buf_reg_n_0_[4][1] ;
  wire \r_data_buf_reg_n_0_[4][2] ;
  wire \r_data_buf_reg_n_0_[4][3] ;
  wire \r_data_buf_reg_n_0_[4][4] ;
  wire \r_data_buf_reg_n_0_[4][5] ;
  wire \r_data_buf_reg_n_0_[4][6] ;
  wire \r_data_buf_reg_n_0_[4][7] ;
  wire \r_data_buf_reg_n_0_[4][8] ;
  wire \r_data_buf_reg_n_0_[4][9] ;
  wire \r_data_buf_reg_n_0_[5][0] ;
  wire \r_data_buf_reg_n_0_[5][10] ;
  wire \r_data_buf_reg_n_0_[5][11] ;
  wire \r_data_buf_reg_n_0_[5][12] ;
  wire \r_data_buf_reg_n_0_[5][13] ;
  wire \r_data_buf_reg_n_0_[5][14] ;
  wire \r_data_buf_reg_n_0_[5][1] ;
  wire \r_data_buf_reg_n_0_[5][2] ;
  wire \r_data_buf_reg_n_0_[5][3] ;
  wire \r_data_buf_reg_n_0_[5][4] ;
  wire \r_data_buf_reg_n_0_[5][5] ;
  wire \r_data_buf_reg_n_0_[5][6] ;
  wire \r_data_buf_reg_n_0_[5][7] ;
  wire \r_data_buf_reg_n_0_[5][8] ;
  wire \r_data_buf_reg_n_0_[5][9] ;
  wire \r_data_buf_reg_n_0_[6][0] ;
  wire \r_data_buf_reg_n_0_[6][10] ;
  wire \r_data_buf_reg_n_0_[6][11] ;
  wire \r_data_buf_reg_n_0_[6][12] ;
  wire \r_data_buf_reg_n_0_[6][13] ;
  wire \r_data_buf_reg_n_0_[6][14] ;
  wire \r_data_buf_reg_n_0_[6][1] ;
  wire \r_data_buf_reg_n_0_[6][2] ;
  wire \r_data_buf_reg_n_0_[6][3] ;
  wire \r_data_buf_reg_n_0_[6][4] ;
  wire \r_data_buf_reg_n_0_[6][5] ;
  wire \r_data_buf_reg_n_0_[6][6] ;
  wire \r_data_buf_reg_n_0_[6][7] ;
  wire \r_data_buf_reg_n_0_[6][8] ;
  wire \r_data_buf_reg_n_0_[6][9] ;
  wire \r_data_buf_reg_n_0_[7][0] ;
  wire \r_data_buf_reg_n_0_[7][10] ;
  wire \r_data_buf_reg_n_0_[7][11] ;
  wire \r_data_buf_reg_n_0_[7][12] ;
  wire \r_data_buf_reg_n_0_[7][13] ;
  wire \r_data_buf_reg_n_0_[7][14] ;
  wire \r_data_buf_reg_n_0_[7][1] ;
  wire \r_data_buf_reg_n_0_[7][2] ;
  wire \r_data_buf_reg_n_0_[7][3] ;
  wire \r_data_buf_reg_n_0_[7][4] ;
  wire \r_data_buf_reg_n_0_[7][5] ;
  wire \r_data_buf_reg_n_0_[7][6] ;
  wire \r_data_buf_reg_n_0_[7][7] ;
  wire \r_data_buf_reg_n_0_[7][8] ;
  wire \r_data_buf_reg_n_0_[7][9] ;
  wire \r_rd_ptr[0]_i_1_n_0 ;
  wire \r_rd_ptr[1]_i_1_n_0 ;
  wire \r_rd_ptr[2]_i_1_n_0 ;
  wire \r_rd_ptr_reg_n_0_[0] ;
  wire \r_rd_ptr_reg_n_0_[1] ;
  wire \r_rd_ptr_reg_n_0_[2] ;
  wire \r_skid_cntr[3]_i_1__2_n_0 ;
  wire [3:0]r_skid_cntr_reg;
  wire r_sready_i_1__2_n_0;
  wire r_sready_reg_0;
  wire \r_valid_buf[0]_i_1__2_n_0 ;
  wire \r_valid_buf[0]_i_2__2_n_0 ;
  wire \r_valid_buf[1]_i_1__2_n_0 ;
  wire \r_valid_buf[1]_i_2__2_n_0 ;
  wire \r_valid_buf[2]_i_1__2_n_0 ;
  wire \r_valid_buf[2]_i_2__2_n_0 ;
  wire \r_valid_buf[3]_i_1__2_n_0 ;
  wire \r_valid_buf[3]_i_2__2_n_0 ;
  wire \r_valid_buf[4]_i_1__2_n_0 ;
  wire \r_valid_buf[5]_i_1__2_n_0 ;
  wire \r_valid_buf[6]_i_1__2_n_0 ;
  wire \r_valid_buf[7]_i_1__2_n_0 ;
  wire \r_valid_buf_reg_n_0_[0] ;
  wire \r_valid_buf_reg_n_0_[1] ;
  wire \r_valid_buf_reg_n_0_[2] ;
  wire \r_valid_buf_reg_n_0_[3] ;
  wire \r_valid_buf_reg_n_0_[4] ;
  wire \r_valid_buf_reg_n_0_[5] ;
  wire \r_valid_buf_reg_n_0_[6] ;
  wire \r_valid_buf_reg_n_0_[7] ;
  wire \r_wr_ptr[0]_i_1_n_0 ;
  wire \r_wr_ptr[1]_i_1_n_0 ;
  wire \r_wr_ptr[2]_i_1_n_0 ;
  wire \r_wr_ptr_reg_n_0_[0] ;
  wire \r_wr_ptr_reg_n_0_[1] ;
  wire \r_wr_ptr_reg_n_0_[2] ;
  wire skid_mst_vld_i_n_1;
  wire skid_mst_vld_i_n_2;
  wire w_rd_valid;
  wire w_wr_valid;

  LUT6 #(
    .INIT(64'h0440800801102002)) 
    r_almost_full_i_1__2
       (.I0(\r_rd_ptr_reg_n_0_[1] ),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .I4(\r_wr_ptr_reg_n_0_[1] ),
        .I5(\r_wr_ptr_reg_n_0_[0] ),
        .O(r_almost_full_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_almost_full_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_almost_full_i_1__2_n_0),
        .Q(r_almost_full),
        .R(i_rst_IBUF));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_data_buf[0][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[0][14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \r_data_buf[1][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[1][14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[2][14]_i_1__1 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[2][14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_data_buf[3][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[3][14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[4][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[0] ),
        .O(p_5_in7_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \r_data_buf[5][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(w_wr_valid),
        .O(p_3_in10_in));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_data_buf[6][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_1_in14_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_data_buf[7][14]_i_1__1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_14_in));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[0][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[0][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[0][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[0][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[0][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[0][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[0][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[0][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[0][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[0][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[0][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[0][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[0][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[0][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[0][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[1][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[1][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[1][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[1][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[1][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[1][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[1][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[1][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[1][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[1][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[1][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[1][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[1][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[1][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[1][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[2][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[2][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[2][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[2][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[2][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[2][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[2][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[2][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[2][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[2][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[2][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[2][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[2][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[2][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[2][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[3][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[3][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[3][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[3][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[3][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[3][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[3][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[3][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[3][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[3][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[3][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[3][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[3][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[3][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1__1_n_0 ),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[3][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[4][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[4][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[4][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[4][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[4][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[4][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[4][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[4][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[4][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[4][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[4][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[4][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[4][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[4][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[4][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[5][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[5][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[5][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[5][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[5][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[5][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[5][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[5][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[5][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[5][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[5][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[5][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[5][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[5][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[5][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[6][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[6][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[6][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[6][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[6][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[6][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[6][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[6][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[6][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[6][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[6][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[6][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[6][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[6][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[6][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[0]),
        .Q(\r_data_buf_reg_n_0_[7][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[10]),
        .Q(\r_data_buf_reg_n_0_[7][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[11]),
        .Q(\r_data_buf_reg_n_0_[7][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[12]),
        .Q(\r_data_buf_reg_n_0_[7][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[13]),
        .Q(\r_data_buf_reg_n_0_[7][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[14]),
        .Q(\r_data_buf_reg_n_0_[7][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[1]),
        .Q(\r_data_buf_reg_n_0_[7][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[2]),
        .Q(\r_data_buf_reg_n_0_[7][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[3]),
        .Q(\r_data_buf_reg_n_0_[7][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[4]),
        .Q(\r_data_buf_reg_n_0_[7][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[5]),
        .Q(\r_data_buf_reg_n_0_[7][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[6]),
        .Q(\r_data_buf_reg_n_0_[7][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[7]),
        .Q(\r_data_buf_reg_n_0_[7][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[8]),
        .Q(\r_data_buf_reg_n_0_[7][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(o_rep_dealloc_data[9]),
        .Q(\r_data_buf_reg_n_0_[7][9] ),
        .R(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \r_rd_ptr[0]_i_1 
       (.I0(w_rd_valid),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .O(\r_rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rd_ptr[1]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(w_rd_valid),
        .I2(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rd_ptr[2]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(\r_rd_ptr_reg_n_0_[1] ),
        .I2(w_rd_valid),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .O(\r_rd_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A88A08080880)) 
    \r_rd_ptr[2]_i_2__2 
       (.I0(i_rep_dealloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(w_rd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[0]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[1]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[2]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  LUT3 #(
    .INIT(8'h56)) 
    \r_skid_cntr[0]_i_1__2 
       (.I0(r_skid_cntr_reg[0]),
        .I1(o_rep_dealloc_vld),
        .I2(r_sready_reg_0),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5BA4)) 
    \r_skid_cntr[1]_i_1__2 
       (.I0(r_skid_cntr_reg[0]),
        .I1(o_rep_dealloc_vld),
        .I2(r_sready_reg_0),
        .I3(r_skid_cntr_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h77EF8810)) 
    \r_skid_cntr[2]_i_1__2 
       (.I0(r_skid_cntr_reg[0]),
        .I1(r_skid_cntr_reg[1]),
        .I2(o_rep_dealloc_vld),
        .I3(r_sready_reg_0),
        .I4(r_skid_cntr_reg[2]),
        .O(p_0_in__2[2]));
  LUT5 #(
    .INIT(32'hFFFFFDFE)) 
    \r_skid_cntr[3]_i_1__2 
       (.I0(r_sready_reg_0),
        .I1(r_skid_cntr_reg[3]),
        .I2(r_skid_cntr_reg[2]),
        .I3(r_skid_cntr_reg[0]),
        .I4(r_skid_cntr_reg[1]),
        .O(\r_skid_cntr[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFEFF80800100)) 
    \r_skid_cntr[3]_i_2__2 
       (.I0(r_skid_cntr_reg[1]),
        .I1(r_skid_cntr_reg[0]),
        .I2(r_skid_cntr_reg[2]),
        .I3(o_rep_dealloc_vld),
        .I4(r_sready_reg_0),
        .I5(r_skid_cntr_reg[3]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__2_n_0 ),
        .D(p_0_in__2[0]),
        .Q(r_skid_cntr_reg[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(r_skid_cntr_reg[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(r_skid_cntr_reg[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(r_skid_cntr_reg[3]),
        .R(i_rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    r_sready_i_1__2
       (.I0(w_wr_valid),
        .I1(r_sready_reg_0),
        .I2(r_almost_full),
        .I3(w_rd_valid),
        .I4(i_rst_IBUF),
        .O(r_sready_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sready_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_sready_i_1__2_n_0),
        .Q(r_sready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[0]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[0] ),
        .I1(\r_data_buf[0][14]_i_1__1_n_0 ),
        .I2(\r_valid_buf[0]_i_2__2_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444000)) 
    \r_valid_buf[0]_i_2__2 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(i_rep_dealloc_rdy_IBUF),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[1]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[1] ),
        .I1(\r_data_buf[1][14]_i_1__1_n_0 ),
        .I2(\r_valid_buf[1]_i_2__2_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000800)) 
    \r_valid_buf[1]_i_2__2 
       (.I0(i_rep_dealloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[2]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[2] ),
        .I1(\r_data_buf[2][14]_i_1__1_n_0 ),
        .I2(\r_valid_buf[2]_i_2__2_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000400000)) 
    \r_valid_buf[2]_i_2__2 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(i_rep_dealloc_rdy_IBUF),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[2]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[3]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[3] ),
        .I1(\r_data_buf[3][14]_i_1__1_n_0 ),
        .I2(\r_valid_buf[3]_i_2__2_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hA800000008000000)) 
    \r_valid_buf[3]_i_2__2 
       (.I0(i_rep_dealloc_rdy_IBUF),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[3]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[4]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[4] ),
        .I1(p_5_in7_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[0]_i_2__2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[5]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[5] ),
        .I1(p_3_in10_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[1]_i_2__2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[5]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[6]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[6] ),
        .I1(p_1_in14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[2]_i_2__2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[6]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[7]_i_1__2 
       (.I0(\r_valid_buf_reg_n_0_[7] ),
        .I1(p_14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[3]_i_2__2_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[7]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[0]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[1]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[2]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[3]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[4]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[5]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[6]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[7]_i_1__2_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_wr_ptr[0]_i_1 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .O(\r_wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wr_ptr[1]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .O(\r_wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wr_ptr[2]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_wr_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_wr_ptr[2]_i_2__2 
       (.I0(o_rep_dealloc_vld),
        .I1(r_skid_cntr_reg[1]),
        .I2(r_skid_cntr_reg[0]),
        .I3(r_skid_cntr_reg[3]),
        .I4(r_skid_cntr_reg[2]),
        .I5(r_sready_reg_0),
        .O(w_wr_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[0]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[1]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[2]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  skids__parameterized1_10 skid_mst_data_i
       (.Q({\r_data_buf_reg_n_0_[3][14] ,\r_data_buf_reg_n_0_[3][13] ,\r_data_buf_reg_n_0_[3][12] ,\r_data_buf_reg_n_0_[3][11] ,\r_data_buf_reg_n_0_[3][10] ,\r_data_buf_reg_n_0_[3][9] ,\r_data_buf_reg_n_0_[3][8] ,\r_data_buf_reg_n_0_[3][7] ,\r_data_buf_reg_n_0_[3][6] ,\r_data_buf_reg_n_0_[3][5] ,\r_data_buf_reg_n_0_[3][4] ,\r_data_buf_reg_n_0_[3][3] ,\r_data_buf_reg_n_0_[3][2] ,\r_data_buf_reg_n_0_[3][1] ,\r_data_buf_reg_n_0_[3][0] }),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_dealloc_rdy_IBUF(i_rep_dealloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_dealloc_data_OBUF(o_rep_dealloc_data_OBUF),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[14]_0 ({\r_data_buf_reg_n_0_[2][14] ,\r_data_buf_reg_n_0_[2][13] ,\r_data_buf_reg_n_0_[2][12] ,\r_data_buf_reg_n_0_[2][11] ,\r_data_buf_reg_n_0_[2][10] ,\r_data_buf_reg_n_0_[2][9] ,\r_data_buf_reg_n_0_[2][8] ,\r_data_buf_reg_n_0_[2][7] ,\r_data_buf_reg_n_0_[2][6] ,\r_data_buf_reg_n_0_[2][5] ,\r_data_buf_reg_n_0_[2][4] ,\r_data_buf_reg_n_0_[2][3] ,\r_data_buf_reg_n_0_[2][2] ,\r_data_buf_reg_n_0_[2][1] ,\r_data_buf_reg_n_0_[2][0] }),
        .\r_sreg_reg[14]_1 ({\r_data_buf_reg_n_0_[1][14] ,\r_data_buf_reg_n_0_[1][13] ,\r_data_buf_reg_n_0_[1][12] ,\r_data_buf_reg_n_0_[1][11] ,\r_data_buf_reg_n_0_[1][10] ,\r_data_buf_reg_n_0_[1][9] ,\r_data_buf_reg_n_0_[1][8] ,\r_data_buf_reg_n_0_[1][7] ,\r_data_buf_reg_n_0_[1][6] ,\r_data_buf_reg_n_0_[1][5] ,\r_data_buf_reg_n_0_[1][4] ,\r_data_buf_reg_n_0_[1][3] ,\r_data_buf_reg_n_0_[1][2] ,\r_data_buf_reg_n_0_[1][1] ,\r_data_buf_reg_n_0_[1][0] }),
        .\r_sreg_reg[14]_2 ({\r_data_buf_reg_n_0_[0][14] ,\r_data_buf_reg_n_0_[0][13] ,\r_data_buf_reg_n_0_[0][12] ,\r_data_buf_reg_n_0_[0][11] ,\r_data_buf_reg_n_0_[0][10] ,\r_data_buf_reg_n_0_[0][9] ,\r_data_buf_reg_n_0_[0][8] ,\r_data_buf_reg_n_0_[0][7] ,\r_data_buf_reg_n_0_[0][6] ,\r_data_buf_reg_n_0_[0][5] ,\r_data_buf_reg_n_0_[0][4] ,\r_data_buf_reg_n_0_[0][3] ,\r_data_buf_reg_n_0_[0][2] ,\r_data_buf_reg_n_0_[0][1] ,\r_data_buf_reg_n_0_[0][0] }),
        .\r_sreg_reg[14]_3 ({\r_data_buf_reg_n_0_[7][14] ,\r_data_buf_reg_n_0_[7][13] ,\r_data_buf_reg_n_0_[7][12] ,\r_data_buf_reg_n_0_[7][11] ,\r_data_buf_reg_n_0_[7][10] ,\r_data_buf_reg_n_0_[7][9] ,\r_data_buf_reg_n_0_[7][8] ,\r_data_buf_reg_n_0_[7][7] ,\r_data_buf_reg_n_0_[7][6] ,\r_data_buf_reg_n_0_[7][5] ,\r_data_buf_reg_n_0_[7][4] ,\r_data_buf_reg_n_0_[7][3] ,\r_data_buf_reg_n_0_[7][2] ,\r_data_buf_reg_n_0_[7][1] ,\r_data_buf_reg_n_0_[7][0] }),
        .\r_sreg_reg[14]_4 ({\r_data_buf_reg_n_0_[6][14] ,\r_data_buf_reg_n_0_[6][13] ,\r_data_buf_reg_n_0_[6][12] ,\r_data_buf_reg_n_0_[6][11] ,\r_data_buf_reg_n_0_[6][10] ,\r_data_buf_reg_n_0_[6][9] ,\r_data_buf_reg_n_0_[6][8] ,\r_data_buf_reg_n_0_[6][7] ,\r_data_buf_reg_n_0_[6][6] ,\r_data_buf_reg_n_0_[6][5] ,\r_data_buf_reg_n_0_[6][4] ,\r_data_buf_reg_n_0_[6][3] ,\r_data_buf_reg_n_0_[6][2] ,\r_data_buf_reg_n_0_[6][1] ,\r_data_buf_reg_n_0_[6][0] }),
        .\r_sreg_reg[14]_5 ({\r_data_buf_reg_n_0_[5][14] ,\r_data_buf_reg_n_0_[5][13] ,\r_data_buf_reg_n_0_[5][12] ,\r_data_buf_reg_n_0_[5][11] ,\r_data_buf_reg_n_0_[5][10] ,\r_data_buf_reg_n_0_[5][9] ,\r_data_buf_reg_n_0_[5][8] ,\r_data_buf_reg_n_0_[5][7] ,\r_data_buf_reg_n_0_[5][6] ,\r_data_buf_reg_n_0_[5][5] ,\r_data_buf_reg_n_0_[5][4] ,\r_data_buf_reg_n_0_[5][3] ,\r_data_buf_reg_n_0_[5][2] ,\r_data_buf_reg_n_0_[5][1] ,\r_data_buf_reg_n_0_[5][0] }),
        .\r_sreg_reg[14]_6 ({\r_data_buf_reg_n_0_[4][14] ,\r_data_buf_reg_n_0_[4][13] ,\r_data_buf_reg_n_0_[4][12] ,\r_data_buf_reg_n_0_[4][11] ,\r_data_buf_reg_n_0_[4][10] ,\r_data_buf_reg_n_0_[4][9] ,\r_data_buf_reg_n_0_[4][8] ,\r_data_buf_reg_n_0_[4][7] ,\r_data_buf_reg_n_0_[4][6] ,\r_data_buf_reg_n_0_[4][5] ,\r_data_buf_reg_n_0_[4][4] ,\r_data_buf_reg_n_0_[4][3] ,\r_data_buf_reg_n_0_[4][2] ,\r_data_buf_reg_n_0_[4][1] ,\r_data_buf_reg_n_0_[4][0] }));
  skids_11 skid_mst_vld_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_dealloc_rdy_IBUF(i_rep_dealloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_dealloc_vld_OBUF(o_rep_dealloc_vld_OBUF),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[0]_10 (\r_valid_buf_reg_n_0_[2] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_3 (\r_valid_buf_reg_n_0_[7] ),
        .\r_sreg_reg[0]_4 (\r_valid_buf_reg_n_0_[0] ),
        .\r_sreg_reg[0]_5 (\r_valid_buf_reg_n_0_[5] ),
        .\r_sreg_reg[0]_6 (\r_valid_buf_reg_n_0_[6] ),
        .\r_sreg_reg[0]_7 (\r_valid_buf_reg_n_0_[3] ),
        .\r_sreg_reg[0]_8 (\r_valid_buf_reg_n_0_[4] ),
        .\r_sreg_reg[0]_9 (\r_valid_buf_reg_n_0_[1] ),
        .\r_valid_buf_reg[3] (skid_mst_vld_i_n_2),
        .\r_valid_buf_reg[7] (skid_mst_vld_i_n_1));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module axis_fifo__parameterized0_9
   (i_req_dealloc_vld,
    r_sready_reg_0,
    i_req_dealloc_data,
    i_rst_IBUF,
    i_clk_IBUF_BUFG,
    o_req_dealloc_rdy,
    i_req_dealloc_vld_IBUF,
    \r_data_buf_reg[6][14]_0 );
  output i_req_dealloc_vld;
  output r_sready_reg_0;
  output [14:0]i_req_dealloc_data;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;
  input o_req_dealloc_rdy;
  input i_req_dealloc_vld_IBUF;
  input [14:0]\r_data_buf_reg[6][14]_0 ;

  wire i_clk_IBUF_BUFG;
  wire [14:0]i_req_dealloc_data;
  wire i_req_dealloc_vld;
  wire i_req_dealloc_vld_IBUF;
  wire i_rst_IBUF;
  wire o_req_dealloc_rdy;
  wire [3:0]p_0_in__0;
  wire p_14_in;
  wire p_1_in14_in;
  wire p_3_in10_in;
  wire p_5_in7_in;
  wire r_almost_full;
  wire r_almost_full_i_1__0_n_0;
  wire \r_data_buf[0][14]_i_1_n_0 ;
  wire \r_data_buf[1][14]_i_1_n_0 ;
  wire \r_data_buf[2][14]_i_1_n_0 ;
  wire \r_data_buf[3][14]_i_1_n_0 ;
  wire [14:0]\r_data_buf_reg[6][14]_0 ;
  wire \r_data_buf_reg_n_0_[0][0] ;
  wire \r_data_buf_reg_n_0_[0][10] ;
  wire \r_data_buf_reg_n_0_[0][11] ;
  wire \r_data_buf_reg_n_0_[0][12] ;
  wire \r_data_buf_reg_n_0_[0][13] ;
  wire \r_data_buf_reg_n_0_[0][14] ;
  wire \r_data_buf_reg_n_0_[0][1] ;
  wire \r_data_buf_reg_n_0_[0][2] ;
  wire \r_data_buf_reg_n_0_[0][3] ;
  wire \r_data_buf_reg_n_0_[0][4] ;
  wire \r_data_buf_reg_n_0_[0][5] ;
  wire \r_data_buf_reg_n_0_[0][6] ;
  wire \r_data_buf_reg_n_0_[0][7] ;
  wire \r_data_buf_reg_n_0_[0][8] ;
  wire \r_data_buf_reg_n_0_[0][9] ;
  wire \r_data_buf_reg_n_0_[1][0] ;
  wire \r_data_buf_reg_n_0_[1][10] ;
  wire \r_data_buf_reg_n_0_[1][11] ;
  wire \r_data_buf_reg_n_0_[1][12] ;
  wire \r_data_buf_reg_n_0_[1][13] ;
  wire \r_data_buf_reg_n_0_[1][14] ;
  wire \r_data_buf_reg_n_0_[1][1] ;
  wire \r_data_buf_reg_n_0_[1][2] ;
  wire \r_data_buf_reg_n_0_[1][3] ;
  wire \r_data_buf_reg_n_0_[1][4] ;
  wire \r_data_buf_reg_n_0_[1][5] ;
  wire \r_data_buf_reg_n_0_[1][6] ;
  wire \r_data_buf_reg_n_0_[1][7] ;
  wire \r_data_buf_reg_n_0_[1][8] ;
  wire \r_data_buf_reg_n_0_[1][9] ;
  wire \r_data_buf_reg_n_0_[2][0] ;
  wire \r_data_buf_reg_n_0_[2][10] ;
  wire \r_data_buf_reg_n_0_[2][11] ;
  wire \r_data_buf_reg_n_0_[2][12] ;
  wire \r_data_buf_reg_n_0_[2][13] ;
  wire \r_data_buf_reg_n_0_[2][14] ;
  wire \r_data_buf_reg_n_0_[2][1] ;
  wire \r_data_buf_reg_n_0_[2][2] ;
  wire \r_data_buf_reg_n_0_[2][3] ;
  wire \r_data_buf_reg_n_0_[2][4] ;
  wire \r_data_buf_reg_n_0_[2][5] ;
  wire \r_data_buf_reg_n_0_[2][6] ;
  wire \r_data_buf_reg_n_0_[2][7] ;
  wire \r_data_buf_reg_n_0_[2][8] ;
  wire \r_data_buf_reg_n_0_[2][9] ;
  wire \r_data_buf_reg_n_0_[3][0] ;
  wire \r_data_buf_reg_n_0_[3][10] ;
  wire \r_data_buf_reg_n_0_[3][11] ;
  wire \r_data_buf_reg_n_0_[3][12] ;
  wire \r_data_buf_reg_n_0_[3][13] ;
  wire \r_data_buf_reg_n_0_[3][14] ;
  wire \r_data_buf_reg_n_0_[3][1] ;
  wire \r_data_buf_reg_n_0_[3][2] ;
  wire \r_data_buf_reg_n_0_[3][3] ;
  wire \r_data_buf_reg_n_0_[3][4] ;
  wire \r_data_buf_reg_n_0_[3][5] ;
  wire \r_data_buf_reg_n_0_[3][6] ;
  wire \r_data_buf_reg_n_0_[3][7] ;
  wire \r_data_buf_reg_n_0_[3][8] ;
  wire \r_data_buf_reg_n_0_[3][9] ;
  wire \r_data_buf_reg_n_0_[4][0] ;
  wire \r_data_buf_reg_n_0_[4][10] ;
  wire \r_data_buf_reg_n_0_[4][11] ;
  wire \r_data_buf_reg_n_0_[4][12] ;
  wire \r_data_buf_reg_n_0_[4][13] ;
  wire \r_data_buf_reg_n_0_[4][14] ;
  wire \r_data_buf_reg_n_0_[4][1] ;
  wire \r_data_buf_reg_n_0_[4][2] ;
  wire \r_data_buf_reg_n_0_[4][3] ;
  wire \r_data_buf_reg_n_0_[4][4] ;
  wire \r_data_buf_reg_n_0_[4][5] ;
  wire \r_data_buf_reg_n_0_[4][6] ;
  wire \r_data_buf_reg_n_0_[4][7] ;
  wire \r_data_buf_reg_n_0_[4][8] ;
  wire \r_data_buf_reg_n_0_[4][9] ;
  wire \r_data_buf_reg_n_0_[5][0] ;
  wire \r_data_buf_reg_n_0_[5][10] ;
  wire \r_data_buf_reg_n_0_[5][11] ;
  wire \r_data_buf_reg_n_0_[5][12] ;
  wire \r_data_buf_reg_n_0_[5][13] ;
  wire \r_data_buf_reg_n_0_[5][14] ;
  wire \r_data_buf_reg_n_0_[5][1] ;
  wire \r_data_buf_reg_n_0_[5][2] ;
  wire \r_data_buf_reg_n_0_[5][3] ;
  wire \r_data_buf_reg_n_0_[5][4] ;
  wire \r_data_buf_reg_n_0_[5][5] ;
  wire \r_data_buf_reg_n_0_[5][6] ;
  wire \r_data_buf_reg_n_0_[5][7] ;
  wire \r_data_buf_reg_n_0_[5][8] ;
  wire \r_data_buf_reg_n_0_[5][9] ;
  wire \r_data_buf_reg_n_0_[6][0] ;
  wire \r_data_buf_reg_n_0_[6][10] ;
  wire \r_data_buf_reg_n_0_[6][11] ;
  wire \r_data_buf_reg_n_0_[6][12] ;
  wire \r_data_buf_reg_n_0_[6][13] ;
  wire \r_data_buf_reg_n_0_[6][14] ;
  wire \r_data_buf_reg_n_0_[6][1] ;
  wire \r_data_buf_reg_n_0_[6][2] ;
  wire \r_data_buf_reg_n_0_[6][3] ;
  wire \r_data_buf_reg_n_0_[6][4] ;
  wire \r_data_buf_reg_n_0_[6][5] ;
  wire \r_data_buf_reg_n_0_[6][6] ;
  wire \r_data_buf_reg_n_0_[6][7] ;
  wire \r_data_buf_reg_n_0_[6][8] ;
  wire \r_data_buf_reg_n_0_[6][9] ;
  wire \r_data_buf_reg_n_0_[7][0] ;
  wire \r_data_buf_reg_n_0_[7][10] ;
  wire \r_data_buf_reg_n_0_[7][11] ;
  wire \r_data_buf_reg_n_0_[7][12] ;
  wire \r_data_buf_reg_n_0_[7][13] ;
  wire \r_data_buf_reg_n_0_[7][14] ;
  wire \r_data_buf_reg_n_0_[7][1] ;
  wire \r_data_buf_reg_n_0_[7][2] ;
  wire \r_data_buf_reg_n_0_[7][3] ;
  wire \r_data_buf_reg_n_0_[7][4] ;
  wire \r_data_buf_reg_n_0_[7][5] ;
  wire \r_data_buf_reg_n_0_[7][6] ;
  wire \r_data_buf_reg_n_0_[7][7] ;
  wire \r_data_buf_reg_n_0_[7][8] ;
  wire \r_data_buf_reg_n_0_[7][9] ;
  wire \r_rd_ptr[0]_i_1_n_0 ;
  wire \r_rd_ptr[1]_i_1_n_0 ;
  wire \r_rd_ptr[2]_i_1_n_0 ;
  wire \r_rd_ptr_reg_n_0_[0] ;
  wire \r_rd_ptr_reg_n_0_[1] ;
  wire \r_rd_ptr_reg_n_0_[2] ;
  wire \r_skid_cntr[3]_i_1__0_n_0 ;
  wire [3:0]r_skid_cntr_reg;
  wire r_sready_i_1__0_n_0;
  wire r_sready_reg_0;
  wire \r_valid_buf[0]_i_1__0_n_0 ;
  wire \r_valid_buf[0]_i_2__0_n_0 ;
  wire \r_valid_buf[1]_i_1__0_n_0 ;
  wire \r_valid_buf[1]_i_2__0_n_0 ;
  wire \r_valid_buf[2]_i_1__0_n_0 ;
  wire \r_valid_buf[2]_i_2__0_n_0 ;
  wire \r_valid_buf[3]_i_1__0_n_0 ;
  wire \r_valid_buf[3]_i_2__0_n_0 ;
  wire \r_valid_buf[4]_i_1__0_n_0 ;
  wire \r_valid_buf[5]_i_1__0_n_0 ;
  wire \r_valid_buf[6]_i_1__0_n_0 ;
  wire \r_valid_buf[7]_i_1__0_n_0 ;
  wire \r_valid_buf_reg_n_0_[0] ;
  wire \r_valid_buf_reg_n_0_[1] ;
  wire \r_valid_buf_reg_n_0_[2] ;
  wire \r_valid_buf_reg_n_0_[3] ;
  wire \r_valid_buf_reg_n_0_[4] ;
  wire \r_valid_buf_reg_n_0_[5] ;
  wire \r_valid_buf_reg_n_0_[6] ;
  wire \r_valid_buf_reg_n_0_[7] ;
  wire \r_wr_ptr[0]_i_1_n_0 ;
  wire \r_wr_ptr[1]_i_1_n_0 ;
  wire \r_wr_ptr[2]_i_1_n_0 ;
  wire \r_wr_ptr_reg_n_0_[0] ;
  wire \r_wr_ptr_reg_n_0_[1] ;
  wire \r_wr_ptr_reg_n_0_[2] ;
  wire skid_mst_vld_i_n_1;
  wire skid_mst_vld_i_n_2;
  wire w_rd_valid;
  wire w_wr_valid;

  LUT6 #(
    .INIT(64'h0440800801102002)) 
    r_almost_full_i_1__0
       (.I0(\r_rd_ptr_reg_n_0_[1] ),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .I4(\r_wr_ptr_reg_n_0_[1] ),
        .I5(\r_wr_ptr_reg_n_0_[0] ),
        .O(r_almost_full_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_almost_full_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_almost_full_i_1__0_n_0),
        .Q(r_almost_full),
        .R(i_rst_IBUF));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_data_buf[0][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[0][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \r_data_buf[1][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[1] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[1][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[2][14]_i_1 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[2][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_data_buf[3][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_data_buf[3][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_data_buf[4][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[0] ),
        .O(p_5_in7_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \r_data_buf[5][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(w_wr_valid),
        .O(p_3_in10_in));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_data_buf[6][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[0] ),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_1_in14_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_data_buf[7][14]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[2] ),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[1] ),
        .O(p_14_in));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[0][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[0][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[0][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[0][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[0][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[0][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[0][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[0][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[0][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[0][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[0][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[0][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[0][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[0][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[0][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[0][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[0][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[1][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[1][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[1][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[1][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[1][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[1][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[1][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[1][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[1][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[1][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[1][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[1][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[1][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[1][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[1][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[1][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[1][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[2][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[2][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[2][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[2][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[2][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[2][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[2][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[2][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[2][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[2][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[2][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[2][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[2][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[2][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[2][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[2][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[2][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[3][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[3][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[3][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[3][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[3][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[3][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[3][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[3][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[3][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[3][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[3][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[3][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[3][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[3][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[3][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_data_buf[3][14]_i_1_n_0 ),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[3][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[4][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[4][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[4][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[4][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[4][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[4][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[4][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[4][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[4][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[4][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[4][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[4][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[4][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[4][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[4][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_5_in7_in),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[4][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[5][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[5][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[5][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[5][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[5][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[5][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[5][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[5][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[5][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[5][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[5][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[5][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[5][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[5][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[5][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_3_in10_in),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[5][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[6][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[6][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[6][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[6][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[6][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[6][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[6][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[6][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[6][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[6][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[6][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[6][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[6][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[6][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[6][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_1_in14_in),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[6][9] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [0]),
        .Q(\r_data_buf_reg_n_0_[7][0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [10]),
        .Q(\r_data_buf_reg_n_0_[7][10] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [11]),
        .Q(\r_data_buf_reg_n_0_[7][11] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [12]),
        .Q(\r_data_buf_reg_n_0_[7][12] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [13]),
        .Q(\r_data_buf_reg_n_0_[7][13] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [14]),
        .Q(\r_data_buf_reg_n_0_[7][14] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [1]),
        .Q(\r_data_buf_reg_n_0_[7][1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [2]),
        .Q(\r_data_buf_reg_n_0_[7][2] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [3]),
        .Q(\r_data_buf_reg_n_0_[7][3] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [4]),
        .Q(\r_data_buf_reg_n_0_[7][4] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [5]),
        .Q(\r_data_buf_reg_n_0_[7][5] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [6]),
        .Q(\r_data_buf_reg_n_0_[7][6] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [7]),
        .Q(\r_data_buf_reg_n_0_[7][7] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [8]),
        .Q(\r_data_buf_reg_n_0_[7][8] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_buf_reg[7][9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(p_14_in),
        .D(\r_data_buf_reg[6][14]_0 [9]),
        .Q(\r_data_buf_reg_n_0_[7][9] ),
        .R(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \r_rd_ptr[0]_i_1 
       (.I0(w_rd_valid),
        .I1(\r_rd_ptr_reg_n_0_[0] ),
        .O(\r_rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rd_ptr[1]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(w_rd_valid),
        .I2(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rd_ptr[2]_i_1 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(\r_rd_ptr_reg_n_0_[1] ),
        .I2(w_rd_valid),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .O(\r_rd_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A88A08080880)) 
    \r_rd_ptr[2]_i_2__0 
       (.I0(o_req_dealloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(w_rd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[0]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[1]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_rd_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_rd_ptr[2]_i_1_n_0 ),
        .Q(\r_rd_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  LUT3 #(
    .INIT(8'h56)) 
    \r_skid_cntr[0]_i_1__0 
       (.I0(r_skid_cntr_reg[0]),
        .I1(i_req_dealloc_vld_IBUF),
        .I2(r_sready_reg_0),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5BA4)) 
    \r_skid_cntr[1]_i_1__0 
       (.I0(r_skid_cntr_reg[0]),
        .I1(i_req_dealloc_vld_IBUF),
        .I2(r_sready_reg_0),
        .I3(r_skid_cntr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h77EF8810)) 
    \r_skid_cntr[2]_i_1__0 
       (.I0(r_skid_cntr_reg[0]),
        .I1(r_skid_cntr_reg[1]),
        .I2(i_req_dealloc_vld_IBUF),
        .I3(r_sready_reg_0),
        .I4(r_skid_cntr_reg[2]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'hFFFFFDFE)) 
    \r_skid_cntr[3]_i_1__0 
       (.I0(r_sready_reg_0),
        .I1(r_skid_cntr_reg[3]),
        .I2(r_skid_cntr_reg[2]),
        .I3(r_skid_cntr_reg[0]),
        .I4(r_skid_cntr_reg[1]),
        .O(\r_skid_cntr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFEFF80800100)) 
    \r_skid_cntr[3]_i_2__0 
       (.I0(r_skid_cntr_reg[1]),
        .I1(r_skid_cntr_reg[0]),
        .I2(r_skid_cntr_reg[2]),
        .I3(i_req_dealloc_vld_IBUF),
        .I4(r_sready_reg_0),
        .I5(r_skid_cntr_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(r_skid_cntr_reg[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(r_skid_cntr_reg[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(r_skid_cntr_reg[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_skid_cntr_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\r_skid_cntr[3]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(r_skid_cntr_reg[3]),
        .R(i_rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    r_sready_i_1__0
       (.I0(w_wr_valid),
        .I1(r_sready_reg_0),
        .I2(r_almost_full),
        .I3(w_rd_valid),
        .I4(i_rst_IBUF),
        .O(r_sready_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sready_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_sready_i_1__0_n_0),
        .Q(r_sready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[0]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[0] ),
        .I1(\r_data_buf[0][14]_i_1_n_0 ),
        .I2(\r_valid_buf[0]_i_2__0_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444000)) 
    \r_valid_buf[0]_i_2__0 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(o_req_dealloc_rdy),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[1]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[1] ),
        .I1(\r_data_buf[1][14]_i_1_n_0 ),
        .I2(\r_valid_buf[1]_i_2__0_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000800)) 
    \r_valid_buf[1]_i_2__0 
       (.I0(o_req_dealloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(skid_mst_vld_i_n_1),
        .I5(\r_rd_ptr_reg_n_0_[1] ),
        .O(\r_valid_buf[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[2]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[2] ),
        .I1(\r_data_buf[2][14]_i_1_n_0 ),
        .I2(\r_valid_buf[2]_i_2__0_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000400000)) 
    \r_valid_buf[2]_i_2__0 
       (.I0(\r_rd_ptr_reg_n_0_[0] ),
        .I1(o_req_dealloc_rdy),
        .I2(skid_mst_vld_i_n_2),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \r_valid_buf[3]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[3] ),
        .I1(\r_data_buf[3][14]_i_1_n_0 ),
        .I2(\r_valid_buf[3]_i_2__0_n_0 ),
        .I3(\r_rd_ptr_reg_n_0_[2] ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA800000008000000)) 
    \r_valid_buf[3]_i_2__0 
       (.I0(o_req_dealloc_rdy),
        .I1(skid_mst_vld_i_n_2),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_rd_ptr_reg_n_0_[0] ),
        .I4(\r_rd_ptr_reg_n_0_[1] ),
        .I5(skid_mst_vld_i_n_1),
        .O(\r_valid_buf[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[4]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[4] ),
        .I1(p_5_in7_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[0]_i_2__0_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[5]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[5] ),
        .I1(p_3_in10_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[1]_i_2__0_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[6]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[6] ),
        .I1(p_1_in14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[2]_i_2__0_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000EEE)) 
    \r_valid_buf[7]_i_1__0 
       (.I0(\r_valid_buf_reg_n_0_[7] ),
        .I1(p_14_in),
        .I2(\r_rd_ptr_reg_n_0_[2] ),
        .I3(\r_valid_buf[3]_i_2__0_n_0 ),
        .I4(i_rst_IBUF),
        .O(\r_valid_buf[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[0]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[1]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[2]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[3]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[4]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[5]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[6]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_valid_buf_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_valid_buf[7]_i_1__0_n_0 ),
        .Q(\r_valid_buf_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_wr_ptr[0]_i_1 
       (.I0(w_wr_valid),
        .I1(\r_wr_ptr_reg_n_0_[0] ),
        .O(\r_wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wr_ptr[1]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(w_wr_valid),
        .I2(\r_wr_ptr_reg_n_0_[1] ),
        .O(\r_wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wr_ptr[2]_i_1 
       (.I0(\r_wr_ptr_reg_n_0_[0] ),
        .I1(\r_wr_ptr_reg_n_0_[1] ),
        .I2(w_wr_valid),
        .I3(\r_wr_ptr_reg_n_0_[2] ),
        .O(\r_wr_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_wr_ptr[2]_i_2__0 
       (.I0(i_req_dealloc_vld_IBUF),
        .I1(r_skid_cntr_reg[1]),
        .I2(r_skid_cntr_reg[0]),
        .I3(r_skid_cntr_reg[3]),
        .I4(r_skid_cntr_reg[2]),
        .I5(r_sready_reg_0),
        .O(w_wr_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[0]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[0] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[1]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_wr_ptr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wr_ptr[2]_i_1_n_0 ),
        .Q(\r_wr_ptr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
  skids__parameterized1 skid_mst_data_i
       (.Q({\r_data_buf_reg_n_0_[3][14] ,\r_data_buf_reg_n_0_[3][13] ,\r_data_buf_reg_n_0_[3][12] ,\r_data_buf_reg_n_0_[3][11] ,\r_data_buf_reg_n_0_[3][10] ,\r_data_buf_reg_n_0_[3][9] ,\r_data_buf_reg_n_0_[3][8] ,\r_data_buf_reg_n_0_[3][7] ,\r_data_buf_reg_n_0_[3][6] ,\r_data_buf_reg_n_0_[3][5] ,\r_data_buf_reg_n_0_[3][4] ,\r_data_buf_reg_n_0_[3][3] ,\r_data_buf_reg_n_0_[3][2] ,\r_data_buf_reg_n_0_[3][1] ,\r_data_buf_reg_n_0_[3][0] }),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_dealloc_data(i_req_dealloc_data),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[14]_0 ({\r_data_buf_reg_n_0_[2][14] ,\r_data_buf_reg_n_0_[2][13] ,\r_data_buf_reg_n_0_[2][12] ,\r_data_buf_reg_n_0_[2][11] ,\r_data_buf_reg_n_0_[2][10] ,\r_data_buf_reg_n_0_[2][9] ,\r_data_buf_reg_n_0_[2][8] ,\r_data_buf_reg_n_0_[2][7] ,\r_data_buf_reg_n_0_[2][6] ,\r_data_buf_reg_n_0_[2][5] ,\r_data_buf_reg_n_0_[2][4] ,\r_data_buf_reg_n_0_[2][3] ,\r_data_buf_reg_n_0_[2][2] ,\r_data_buf_reg_n_0_[2][1] ,\r_data_buf_reg_n_0_[2][0] }),
        .\r_sreg_reg[14]_1 ({\r_data_buf_reg_n_0_[1][14] ,\r_data_buf_reg_n_0_[1][13] ,\r_data_buf_reg_n_0_[1][12] ,\r_data_buf_reg_n_0_[1][11] ,\r_data_buf_reg_n_0_[1][10] ,\r_data_buf_reg_n_0_[1][9] ,\r_data_buf_reg_n_0_[1][8] ,\r_data_buf_reg_n_0_[1][7] ,\r_data_buf_reg_n_0_[1][6] ,\r_data_buf_reg_n_0_[1][5] ,\r_data_buf_reg_n_0_[1][4] ,\r_data_buf_reg_n_0_[1][3] ,\r_data_buf_reg_n_0_[1][2] ,\r_data_buf_reg_n_0_[1][1] ,\r_data_buf_reg_n_0_[1][0] }),
        .\r_sreg_reg[14]_2 ({\r_data_buf_reg_n_0_[0][14] ,\r_data_buf_reg_n_0_[0][13] ,\r_data_buf_reg_n_0_[0][12] ,\r_data_buf_reg_n_0_[0][11] ,\r_data_buf_reg_n_0_[0][10] ,\r_data_buf_reg_n_0_[0][9] ,\r_data_buf_reg_n_0_[0][8] ,\r_data_buf_reg_n_0_[0][7] ,\r_data_buf_reg_n_0_[0][6] ,\r_data_buf_reg_n_0_[0][5] ,\r_data_buf_reg_n_0_[0][4] ,\r_data_buf_reg_n_0_[0][3] ,\r_data_buf_reg_n_0_[0][2] ,\r_data_buf_reg_n_0_[0][1] ,\r_data_buf_reg_n_0_[0][0] }),
        .\r_sreg_reg[14]_3 ({\r_data_buf_reg_n_0_[7][14] ,\r_data_buf_reg_n_0_[7][13] ,\r_data_buf_reg_n_0_[7][12] ,\r_data_buf_reg_n_0_[7][11] ,\r_data_buf_reg_n_0_[7][10] ,\r_data_buf_reg_n_0_[7][9] ,\r_data_buf_reg_n_0_[7][8] ,\r_data_buf_reg_n_0_[7][7] ,\r_data_buf_reg_n_0_[7][6] ,\r_data_buf_reg_n_0_[7][5] ,\r_data_buf_reg_n_0_[7][4] ,\r_data_buf_reg_n_0_[7][3] ,\r_data_buf_reg_n_0_[7][2] ,\r_data_buf_reg_n_0_[7][1] ,\r_data_buf_reg_n_0_[7][0] }),
        .\r_sreg_reg[14]_4 ({\r_data_buf_reg_n_0_[6][14] ,\r_data_buf_reg_n_0_[6][13] ,\r_data_buf_reg_n_0_[6][12] ,\r_data_buf_reg_n_0_[6][11] ,\r_data_buf_reg_n_0_[6][10] ,\r_data_buf_reg_n_0_[6][9] ,\r_data_buf_reg_n_0_[6][8] ,\r_data_buf_reg_n_0_[6][7] ,\r_data_buf_reg_n_0_[6][6] ,\r_data_buf_reg_n_0_[6][5] ,\r_data_buf_reg_n_0_[6][4] ,\r_data_buf_reg_n_0_[6][3] ,\r_data_buf_reg_n_0_[6][2] ,\r_data_buf_reg_n_0_[6][1] ,\r_data_buf_reg_n_0_[6][0] }),
        .\r_sreg_reg[14]_5 ({\r_data_buf_reg_n_0_[5][14] ,\r_data_buf_reg_n_0_[5][13] ,\r_data_buf_reg_n_0_[5][12] ,\r_data_buf_reg_n_0_[5][11] ,\r_data_buf_reg_n_0_[5][10] ,\r_data_buf_reg_n_0_[5][9] ,\r_data_buf_reg_n_0_[5][8] ,\r_data_buf_reg_n_0_[5][7] ,\r_data_buf_reg_n_0_[5][6] ,\r_data_buf_reg_n_0_[5][5] ,\r_data_buf_reg_n_0_[5][4] ,\r_data_buf_reg_n_0_[5][3] ,\r_data_buf_reg_n_0_[5][2] ,\r_data_buf_reg_n_0_[5][1] ,\r_data_buf_reg_n_0_[5][0] }),
        .\r_sreg_reg[14]_6 ({\r_data_buf_reg_n_0_[4][14] ,\r_data_buf_reg_n_0_[4][13] ,\r_data_buf_reg_n_0_[4][12] ,\r_data_buf_reg_n_0_[4][11] ,\r_data_buf_reg_n_0_[4][10] ,\r_data_buf_reg_n_0_[4][9] ,\r_data_buf_reg_n_0_[4][8] ,\r_data_buf_reg_n_0_[4][7] ,\r_data_buf_reg_n_0_[4][6] ,\r_data_buf_reg_n_0_[4][5] ,\r_data_buf_reg_n_0_[4][4] ,\r_data_buf_reg_n_0_[4][3] ,\r_data_buf_reg_n_0_[4][2] ,\r_data_buf_reg_n_0_[4][1] ,\r_data_buf_reg_n_0_[4][0] }));
  skids skid_mst_vld_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_dealloc_vld(i_req_dealloc_vld),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        .\r_sreg_reg[0]_0 (\r_rd_ptr_reg_n_0_[1] ),
        .\r_sreg_reg[0]_1 (\r_rd_ptr_reg_n_0_[0] ),
        .\r_sreg_reg[0]_10 (\r_valid_buf_reg_n_0_[2] ),
        .\r_sreg_reg[0]_2 (\r_rd_ptr_reg_n_0_[2] ),
        .\r_sreg_reg[0]_3 (\r_valid_buf_reg_n_0_[7] ),
        .\r_sreg_reg[0]_4 (\r_valid_buf_reg_n_0_[0] ),
        .\r_sreg_reg[0]_5 (\r_valid_buf_reg_n_0_[5] ),
        .\r_sreg_reg[0]_6 (\r_valid_buf_reg_n_0_[6] ),
        .\r_sreg_reg[0]_7 (\r_valid_buf_reg_n_0_[3] ),
        .\r_sreg_reg[0]_8 (\r_valid_buf_reg_n_0_[4] ),
        .\r_sreg_reg[0]_9 (\r_valid_buf_reg_n_0_[1] ),
        .\r_valid_buf_reg[3] (skid_mst_vld_i_n_2),
        .\r_valid_buf_reg[7] (skid_mst_vld_i_n_1));
endmodule

(* ADDR_W = "3" *) (* BITMAP = "8" *) (* NODES = "4" *) 
(* STAGES = "3" *) 
module dec_ptv
   (i_clk,
    i_rst,
    i_oreg_en,
    i_paddr,
    \i_scb[2] ,
    \i_scb[1] ,
    \i_scb[0] ,
    o_vaddr);
  input i_clk;
  input i_rst;
  input i_oreg_en;
  input [2:0]i_paddr;
  input [3:0]\i_scb[2] ;
  input [3:0]\i_scb[1] ;
  input [3:0]\i_scb[0] ;
  output [2:0]o_vaddr;

  wire \gen_dec_stages[0].dec_stg_i/w_scb ;
  wire \gen_dec_stages[1].dec_stg_i/genblk2[0].dec_node_i/o_lcactv1__0 ;
  wire \gen_dec_stages[1].dec_stg_i/genblk2[1].dec_node_i/o_lcactv1__0 ;
  wire [0:0]\gen_dec_stages[1].dec_stg_i/w_scb ;
  wire i_clk;
  wire i_oreg_en;
  wire [2:0]i_paddr;
  wire i_rst;
  wire [3:0]\i_scb[0] ;
  wire [3:0]\i_scb[1] ;
  wire [3:0]\i_scb[2] ;
  wire [2:0]o_vaddr;
  wire \r_vaddr[2]_i_2_n_0 ;
  wire [2:0]w_vaddr;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_vaddr[0]_i_1 
       (.I0(i_paddr[0]),
        .I1(\gen_dec_stages[0].dec_stg_i/w_scb ),
        .O(w_vaddr[0]));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \r_vaddr[0]_i_2 
       (.I0(\i_scb[0] [2]),
        .I1(\i_scb[0] [3]),
        .I2(i_paddr[2]),
        .I3(\i_scb[0] [0]),
        .I4(i_paddr[1]),
        .I5(\i_scb[0] [1]),
        .O(\gen_dec_stages[0].dec_stg_i/w_scb ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \r_vaddr[1]_i_1 
       (.I0(i_paddr[1]),
        .I1(\gen_dec_stages[1].dec_stg_i/w_scb ),
        .I2(w_vaddr[0]),
        .I3(\i_scb[1] [1]),
        .I4(i_paddr[2]),
        .I5(\i_scb[1] [3]),
        .O(w_vaddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_vaddr[1]_i_2 
       (.I0(\i_scb[1] [2]),
        .I1(i_paddr[2]),
        .I2(\i_scb[1] [0]),
        .O(\gen_dec_stages[1].dec_stg_i/w_scb ));
  LUT6 #(
    .INIT(64'h5666566655666666)) 
    \r_vaddr[2]_i_1 
       (.I0(i_paddr[2]),
        .I1(\r_vaddr[2]_i_2_n_0 ),
        .I2(\i_scb[2] [3]),
        .I3(w_vaddr[0]),
        .I4(\i_scb[2] [1]),
        .I5(\gen_dec_stages[1].dec_stg_i/genblk2[1].dec_node_i/o_lcactv1__0 ),
        .O(w_vaddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h8282C300)) 
    \r_vaddr[2]_i_2 
       (.I0(\i_scb[2] [2]),
        .I1(i_paddr[0]),
        .I2(\gen_dec_stages[0].dec_stg_i/w_scb ),
        .I3(\i_scb[2] [0]),
        .I4(\gen_dec_stages[1].dec_stg_i/genblk2[0].dec_node_i/o_lcactv1__0 ),
        .O(\r_vaddr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \r_vaddr[2]_i_3 
       (.I0(i_paddr[1]),
        .I1(\i_scb[1] [1]),
        .I2(i_paddr[2]),
        .I3(\i_scb[1] [3]),
        .O(\gen_dec_stages[1].dec_stg_i/genblk2[1].dec_node_i/o_lcactv1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \r_vaddr[2]_i_4 
       (.I0(i_paddr[1]),
        .I1(\i_scb[1] [0]),
        .I2(i_paddr[2]),
        .I3(\i_scb[1] [2]),
        .O(\gen_dec_stages[1].dec_stg_i/genblk2[0].dec_node_i/o_lcactv1__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[0] 
       (.C(i_clk),
        .CE(i_oreg_en),
        .D(w_vaddr[0]),
        .Q(o_vaddr[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[1] 
       (.C(i_clk),
        .CE(i_oreg_en),
        .D(w_vaddr[1]),
        .Q(o_vaddr[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[2] 
       (.C(i_clk),
        .CE(i_oreg_en),
        .D(w_vaddr[2]),
        .Q(o_vaddr[2]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "dec_ptv" *) 
module dec_ptv_6
   (\r_vaddr_reg[0]_0 ,
    \r_vaddr_reg[0]_1 ,
    \r_vaddr_reg[1]_0 ,
    \r_vaddr_reg[0]_2 ,
    \r_vaddr_reg[0]_3 ,
    \r_vaddr_reg[0]_4 ,
    \r_vaddr_reg[1]_1 ,
    \r_vaddr_reg[0]_5 ,
    \r_vaddr_reg[0]_6 ,
    \r_paddr_reg[2] ,
    \r_paddr_reg[2]_0 ,
    \r_paddr_reg[2]_1 ,
    o_rd_data,
    \r_paddr_reg[2]_2 ,
    \r_paddr_reg[2]_3 ,
    \r_paddr_reg[2]_4 ,
    \r_vaddr_reg[2]_0 ,
    \r_vaddr_reg[2]_1 ,
    \r_vaddr_reg[2]_2 ,
    \r_vaddr_reg[2]_3 ,
    i_base_vld_IBUF,
    \r_vaddr_reg[1]_2 ,
    \r_vaddr_reg[1]_3 ,
    i_rst_IBUF,
    i_clk_IBUF_BUFG);
  output \r_vaddr_reg[0]_0 ;
  output \r_vaddr_reg[0]_1 ;
  output \r_vaddr_reg[1]_0 ;
  output \r_vaddr_reg[0]_2 ;
  output \r_vaddr_reg[0]_3 ;
  output \r_vaddr_reg[0]_4 ;
  output \r_vaddr_reg[1]_1 ;
  output \r_vaddr_reg[0]_5 ;
  output \r_vaddr_reg[0]_6 ;
  input \r_paddr_reg[2] ;
  input \r_paddr_reg[2]_0 ;
  input \r_paddr_reg[2]_1 ;
  input [1:0]o_rd_data;
  input \r_paddr_reg[2]_2 ;
  input \r_paddr_reg[2]_3 ;
  input \r_paddr_reg[2]_4 ;
  input [1:0]\r_vaddr_reg[2]_0 ;
  input \r_vaddr_reg[2]_1 ;
  input \r_vaddr_reg[2]_2 ;
  input \r_vaddr_reg[2]_3 ;
  input [0:0]i_base_vld_IBUF;
  input \r_vaddr_reg[1]_2 ;
  input \r_vaddr_reg[1]_3 ;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;

  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [1:0]o_rd_data;
  wire \r_paddr_reg[2] ;
  wire \r_paddr_reg[2]_0 ;
  wire \r_paddr_reg[2]_1 ;
  wire \r_paddr_reg[2]_2 ;
  wire \r_paddr_reg[2]_3 ;
  wire \r_paddr_reg[2]_4 ;
  wire [2:1]r_vaddr;
  wire \r_vaddr[0]_i_1_n_0 ;
  wire \r_vaddr[1]_i_1_n_0 ;
  wire \r_vaddr[2]_i_1_n_0 ;
  wire \r_vaddr_reg[0]_0 ;
  wire \r_vaddr_reg[0]_1 ;
  wire \r_vaddr_reg[0]_2 ;
  wire \r_vaddr_reg[0]_3 ;
  wire \r_vaddr_reg[0]_4 ;
  wire \r_vaddr_reg[0]_5 ;
  wire \r_vaddr_reg[0]_6 ;
  wire \r_vaddr_reg[1]_0 ;
  wire \r_vaddr_reg[1]_1 ;
  wire \r_vaddr_reg[1]_2 ;
  wire \r_vaddr_reg[1]_3 ;
  wire [1:0]\r_vaddr_reg[2]_0 ;
  wire \r_vaddr_reg[2]_1 ;
  wire \r_vaddr_reg[2]_2 ;
  wire \r_vaddr_reg[2]_3 ;

  LUT6 #(
    .INIT(64'h6999666969669969)) 
    \r_paddr[0]_i_3__0 
       (.I0(\r_paddr_reg[2]_0 ),
        .I1(r_vaddr[1]),
        .I2(o_rd_data[0]),
        .I3(\r_vaddr_reg[0]_1 ),
        .I4(\r_paddr_reg[2] ),
        .I5(o_rd_data[1]),
        .O(\r_vaddr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6966996969996669)) 
    \r_paddr[0]_i_3__2 
       (.I0(\r_paddr_reg[2]_3 ),
        .I1(r_vaddr[1]),
        .I2(o_rd_data[0]),
        .I3(\r_paddr_reg[2]_2 ),
        .I4(\r_vaddr_reg[0]_1 ),
        .I5(o_rd_data[1]),
        .O(\r_vaddr_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \r_paddr[2]_i_3__0 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[2] ),
        .I2(r_vaddr[1]),
        .I3(\r_paddr_reg[2]_0 ),
        .O(\r_vaddr_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \r_paddr[2]_i_3__2 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[2]_2 ),
        .I2(\r_paddr_reg[2]_3 ),
        .I3(r_vaddr[1]),
        .O(\r_vaddr_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_paddr[2]_i_4__0 
       (.I0(\r_paddr_reg[2] ),
        .I1(\r_vaddr_reg[0]_1 ),
        .O(\r_vaddr_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_paddr[2]_i_4__2 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[2]_2 ),
        .O(\r_vaddr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    \r_paddr[2]_i_5 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[2] ),
        .I2(\r_paddr_reg[2]_0 ),
        .I3(r_vaddr[1]),
        .I4(r_vaddr[2]),
        .I5(\r_paddr_reg[2]_1 ),
        .O(\r_vaddr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    \r_paddr[2]_i_5__0 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[2]_2 ),
        .I2(\r_paddr_reg[2]_3 ),
        .I3(r_vaddr[1]),
        .I4(\r_paddr_reg[2]_4 ),
        .I5(r_vaddr[2]),
        .O(\r_vaddr_reg[0]_4 ));
  LUT3 #(
    .INIT(8'h74)) 
    \r_vaddr[0]_i_1 
       (.I0(\r_vaddr_reg[2]_2 ),
        .I1(i_base_vld_IBUF),
        .I2(\r_vaddr_reg[0]_1 ),
        .O(\r_vaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \r_vaddr[1]_i_1 
       (.I0(\r_vaddr_reg[2]_0 [0]),
        .I1(\r_vaddr_reg[1]_2 ),
        .I2(\r_vaddr_reg[2]_2 ),
        .I3(\r_vaddr_reg[1]_3 ),
        .I4(i_base_vld_IBUF),
        .I5(r_vaddr[1]),
        .O(\r_vaddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \r_vaddr[2]_i_1 
       (.I0(\r_vaddr_reg[2]_0 [1]),
        .I1(\r_vaddr_reg[2]_1 ),
        .I2(\r_vaddr_reg[2]_2 ),
        .I3(\r_vaddr_reg[2]_3 ),
        .I4(i_base_vld_IBUF),
        .I5(r_vaddr[2]),
        .O(\r_vaddr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[0]_i_1_n_0 ),
        .Q(\r_vaddr_reg[0]_1 ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[1]_i_1_n_0 ),
        .Q(r_vaddr[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[2]_i_1_n_0 ),
        .Q(r_vaddr[2]),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dec_ptv" *) 
module dec_ptv__2
   (\r_vaddr_reg[0]_0 ,
    \r_vaddr_reg[0]_1 ,
    \r_vaddr_reg[1]_0 ,
    \r_vaddr_reg[0]_2 ,
    \r_vaddr_reg[0]_3 ,
    D,
    \r_vaddr_reg[0]_4 ,
    \r_vaddr_reg[0]_5 ,
    \r_paddr_reg[0] ,
    \r_paddr_reg[0]_0 ,
    \r_paddr[2]_i_2 ,
    o_rd_data,
    \r_paddr_reg[0]_1 ,
    \r_paddr_reg[0]_2 ,
    \r_paddr_reg[2] ,
    \r_paddr[2]_i_2__1_0 ,
    \r_paddr_reg[1] ,
    \r_paddr_reg[0]_3 ,
    \r_vaddr_reg[2]_0 ,
    \r_vaddr_reg[2]_1 ,
    \r_vaddr_reg[2]_2 ,
    \r_vaddr_reg[2]_3 ,
    i_base_vld_IBUF,
    \r_vaddr_reg[1]_1 ,
    \r_vaddr_reg[1]_2 ,
    i_rst_IBUF,
    i_clk_IBUF_BUFG);
  output \r_vaddr_reg[0]_0 ;
  output \r_vaddr_reg[0]_1 ;
  output \r_vaddr_reg[1]_0 ;
  output \r_vaddr_reg[0]_2 ;
  output \r_vaddr_reg[0]_3 ;
  output [2:0]D;
  output \r_vaddr_reg[0]_4 ;
  output \r_vaddr_reg[0]_5 ;
  input \r_paddr_reg[0] ;
  input \r_paddr_reg[0]_0 ;
  input \r_paddr[2]_i_2 ;
  input [5:0]o_rd_data;
  input \r_paddr_reg[0]_1 ;
  input \r_paddr_reg[0]_2 ;
  input \r_paddr_reg[2] ;
  input \r_paddr[2]_i_2__1_0 ;
  input \r_paddr_reg[1] ;
  input \r_paddr_reg[0]_3 ;
  input [1:0]\r_vaddr_reg[2]_0 ;
  input \r_vaddr_reg[2]_1 ;
  input \r_vaddr_reg[2]_2 ;
  input \r_vaddr_reg[2]_3 ;
  input [0:0]i_base_vld_IBUF;
  input \r_vaddr_reg[1]_1 ;
  input \r_vaddr_reg[1]_2 ;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;

  wire [2:0]D;
  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [5:0]o_rd_data;
  wire \r_paddr[0]_i_3__1_n_0 ;
  wire \r_paddr[2]_i_2 ;
  wire \r_paddr[2]_i_2__1_0 ;
  wire \r_paddr[2]_i_2__1_n_0 ;
  wire \r_paddr[2]_i_3__1_n_0 ;
  wire \r_paddr_reg[0] ;
  wire \r_paddr_reg[0]_0 ;
  wire \r_paddr_reg[0]_1 ;
  wire \r_paddr_reg[0]_2 ;
  wire \r_paddr_reg[0]_3 ;
  wire \r_paddr_reg[1] ;
  wire \r_paddr_reg[2] ;
  wire \r_vaddr[0]_i_1_n_0 ;
  wire \r_vaddr[1]_i_1_n_0 ;
  wire \r_vaddr[2]_i_1_n_0 ;
  wire \r_vaddr_reg[0]_0 ;
  wire \r_vaddr_reg[0]_1 ;
  wire \r_vaddr_reg[0]_2 ;
  wire \r_vaddr_reg[0]_3 ;
  wire \r_vaddr_reg[0]_4 ;
  wire \r_vaddr_reg[0]_5 ;
  wire \r_vaddr_reg[1]_0 ;
  wire \r_vaddr_reg[1]_1 ;
  wire \r_vaddr_reg[1]_2 ;
  wire [1:0]\r_vaddr_reg[2]_0 ;
  wire \r_vaddr_reg[2]_1 ;
  wire \r_vaddr_reg[2]_2 ;
  wire \r_vaddr_reg[2]_3 ;
  wire \r_vaddr_reg_n_0_[1] ;
  wire \r_vaddr_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[0]_i_1__1 
       (.I0(\r_vaddr_reg[0]_5 ),
        .I1(\r_paddr_reg[0]_3 ),
        .I2(\r_paddr[2]_i_2__1_n_0 ),
        .I3(o_rd_data[1]),
        .I4(\r_paddr[0]_i_3__1_n_0 ),
        .I5(o_rd_data[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6999666969669969)) 
    \r_paddr[0]_i_3 
       (.I0(\r_paddr_reg[0]_0 ),
        .I1(\r_vaddr_reg_n_0_[1] ),
        .I2(o_rd_data[2]),
        .I3(\r_vaddr_reg[0]_1 ),
        .I4(\r_paddr_reg[0] ),
        .I5(o_rd_data[3]),
        .O(\r_vaddr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6966996969996669)) 
    \r_paddr[0]_i_3__1 
       (.I0(\r_vaddr_reg_n_0_[1] ),
        .I1(\r_paddr_reg[0]_1 ),
        .I2(o_rd_data[2]),
        .I3(\r_paddr_reg[0]_2 ),
        .I4(\r_vaddr_reg[0]_1 ),
        .I5(o_rd_data[3]),
        .O(\r_paddr[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[1]_i_1__2 
       (.I0(\r_vaddr_reg[0]_4 ),
        .I1(\r_paddr_reg[1] ),
        .I2(\r_paddr[2]_i_2__1_n_0 ),
        .I3(o_rd_data[2]),
        .I4(\r_vaddr_reg[0]_5 ),
        .I5(o_rd_data[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \r_paddr[1]_i_2 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[0] ),
        .I2(\r_vaddr_reg_n_0_[1] ),
        .I3(\r_paddr_reg[0]_0 ),
        .O(\r_vaddr_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \r_paddr[1]_i_2__1 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[0]_2 ),
        .I2(\r_paddr_reg[0]_1 ),
        .I3(\r_vaddr_reg_n_0_[1] ),
        .O(\r_vaddr_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_paddr[1]_i_4 
       (.I0(\r_paddr_reg[0] ),
        .I1(\r_vaddr_reg[0]_1 ),
        .O(\r_vaddr_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_paddr[1]_i_4__0 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[0]_2 ),
        .O(\r_vaddr_reg[0]_5 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_paddr[2]_i_1__1 
       (.I0(\r_paddr[2]_i_2__1_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \r_paddr[2]_i_2__1 
       (.I0(\r_paddr[2]_i_3__1_n_0 ),
        .I1(\r_paddr_reg[2] ),
        .I2(\r_vaddr_reg[0]_4 ),
        .I3(o_rd_data[4]),
        .I4(\r_vaddr_reg[0]_5 ),
        .I5(o_rd_data[5]),
        .O(\r_paddr[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h9699999966669699)) 
    \r_paddr[2]_i_3__1 
       (.I0(\r_paddr[2]_i_2__1_0 ),
        .I1(\r_vaddr_reg_n_0_[2] ),
        .I2(\r_vaddr_reg[0]_1 ),
        .I3(\r_paddr_reg[0]_2 ),
        .I4(\r_paddr_reg[0]_1 ),
        .I5(\r_vaddr_reg_n_0_[1] ),
        .O(\r_paddr[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    \r_paddr[2]_i_4 
       (.I0(\r_vaddr_reg[0]_1 ),
        .I1(\r_paddr_reg[0] ),
        .I2(\r_paddr_reg[0]_0 ),
        .I3(\r_vaddr_reg_n_0_[1] ),
        .I4(\r_vaddr_reg_n_0_[2] ),
        .I5(\r_paddr[2]_i_2 ),
        .O(\r_vaddr_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \r_vaddr[0]_i_1 
       (.I0(\r_vaddr_reg[2]_2 ),
        .I1(i_base_vld_IBUF),
        .I2(\r_vaddr_reg[0]_1 ),
        .O(\r_vaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \r_vaddr[1]_i_1 
       (.I0(\r_vaddr_reg[2]_0 [0]),
        .I1(\r_vaddr_reg[1]_1 ),
        .I2(\r_vaddr_reg[2]_2 ),
        .I3(\r_vaddr_reg[1]_2 ),
        .I4(i_base_vld_IBUF),
        .I5(\r_vaddr_reg_n_0_[1] ),
        .O(\r_vaddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA959FFFFA9590000)) 
    \r_vaddr[2]_i_1 
       (.I0(\r_vaddr_reg[2]_0 [1]),
        .I1(\r_vaddr_reg[2]_1 ),
        .I2(\r_vaddr_reg[2]_2 ),
        .I3(\r_vaddr_reg[2]_3 ),
        .I4(i_base_vld_IBUF),
        .I5(\r_vaddr_reg_n_0_[2] ),
        .O(\r_vaddr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[0]_i_1_n_0 ),
        .Q(\r_vaddr_reg[0]_1 ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[1]_i_1_n_0 ),
        .Q(\r_vaddr_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr[2]_i_1_n_0 ),
        .Q(\r_vaddr_reg_n_0_[2] ),
        .R(i_rst_IBUF));
endmodule

(* ADDR_W = "3" *) (* BITMAP = "8" *) (* NODES = "4" *) 
(* OREG_EN = "1" *) (* STAGES = "3" *) 
module dec_vtp
   (i_clk,
    i_rst,
    i_vaddr,
    \i_scb[2] ,
    \i_scb[1] ,
    \i_scb[0] ,
    o_paddr);
  input i_clk;
  input i_rst;
  input [2:0]i_vaddr;
  input [3:0]\i_scb[2] ;
  input [3:0]\i_scb[1] ;
  input [3:0]\i_scb[0] ;
  output [2:0]o_paddr;

  wire i_clk;
  wire i_rst;
  wire [3:0]\i_scb[0] ;
  wire [3:0]\i_scb[1] ;
  wire [3:0]\i_scb[2] ;
  wire [2:0]i_vaddr;
  wire [2:0]o_paddr;
  wire \r_paddr[0]_i_2_n_0 ;
  wire \r_paddr[0]_i_3_n_0 ;
  wire \r_paddr[1]_i_2_n_0 ;
  wire \r_paddr[1]_i_3_n_0 ;
  wire \r_paddr[2]_i_2_n_0 ;
  wire [2:0]w_paddr;

  LUT5 #(
    .INIT(32'h65566AA6)) 
    \r_paddr[0]_i_1 
       (.I0(i_vaddr[0]),
        .I1(\r_paddr[0]_i_2_n_0 ),
        .I2(\r_paddr[2]_i_2_n_0 ),
        .I3(i_vaddr[2]),
        .I4(\r_paddr[0]_i_3_n_0 ),
        .O(w_paddr[0]));
  LUT6 #(
    .INIT(64'hBBBEEEBE88822282)) 
    \r_paddr[0]_i_2 
       (.I0(\i_scb[0] [0]),
        .I1(i_vaddr[1]),
        .I2(\i_scb[1] [0]),
        .I3(i_vaddr[0]),
        .I4(\i_scb[1] [1]),
        .I5(\i_scb[0] [1]),
        .O(\r_paddr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBEEEBE88822282)) 
    \r_paddr[0]_i_3 
       (.I0(\i_scb[0] [2]),
        .I1(i_vaddr[1]),
        .I2(\i_scb[1] [2]),
        .I3(i_vaddr[0]),
        .I4(\i_scb[1] [3]),
        .I5(\i_scb[0] [3]),
        .O(\r_paddr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h65566AA6)) 
    \r_paddr[1]_i_1 
       (.I0(i_vaddr[1]),
        .I1(\r_paddr[1]_i_2_n_0 ),
        .I2(\r_paddr[2]_i_2_n_0 ),
        .I3(i_vaddr[2]),
        .I4(\r_paddr[1]_i_3_n_0 ),
        .O(w_paddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_paddr[1]_i_2 
       (.I0(\i_scb[1] [1]),
        .I1(i_vaddr[0]),
        .I2(\i_scb[1] [0]),
        .O(\r_paddr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_paddr[1]_i_3 
       (.I0(\i_scb[1] [3]),
        .I1(i_vaddr[0]),
        .I2(\i_scb[1] [2]),
        .O(\r_paddr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_paddr[2]_i_1 
       (.I0(i_vaddr[2]),
        .I1(\r_paddr[2]_i_2_n_0 ),
        .O(w_paddr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_paddr[2]_i_2 
       (.I0(\i_scb[2] [3]),
        .I1(\i_scb[2] [2]),
        .I2(i_vaddr[1]),
        .I3(\i_scb[2] [1]),
        .I4(i_vaddr[0]),
        .I5(\i_scb[2] [0]),
        .O(\r_paddr[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_paddr[0]),
        .Q(o_paddr[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_paddr[1]),
        .Q(o_paddr[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_paddr[2]),
        .Q(o_paddr[2]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "dec_vtp" *) 
module dec_vtp_4
   (\o_blk_base_addr[1]_OBUF ,
    i_rst_IBUF,
    D,
    i_clk_IBUF_BUFG);
  output [2:0]\o_blk_base_addr[1]_OBUF ;
  input i_rst_IBUF;
  input [2:0]D;
  input i_clk_IBUF_BUFG;

  wire [2:0]D;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [2:0]\o_blk_base_addr[1]_OBUF ;

  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\o_blk_base_addr[1]_OBUF [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\o_blk_base_addr[1]_OBUF [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\o_blk_base_addr[1]_OBUF [2]),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dec_vtp" *) 
module dec_vtp_5
   (\o_blk_aux_addr[0]_OBUF ,
    i_rst_IBUF,
    \r_paddr_reg[2]_0 ,
    i_clk_IBUF_BUFG);
  output [2:0]\o_blk_aux_addr[0]_OBUF ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2]_0 ;
  input i_clk_IBUF_BUFG;

  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [2:0]\o_blk_aux_addr[0]_OBUF ;
  wire [2:0]\r_paddr_reg[2]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [0]),
        .Q(\o_blk_aux_addr[0]_OBUF [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [1]),
        .Q(\o_blk_aux_addr[0]_OBUF [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [2]),
        .Q(\o_blk_aux_addr[0]_OBUF [2]),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dec_vtp" *) 
module dec_vtp_7
   (\o_blk_base_addr[0]_OBUF ,
    i_rst_IBUF,
    \r_paddr_reg[2]_0 ,
    i_clk_IBUF_BUFG);
  output [2:0]\o_blk_base_addr[0]_OBUF ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2]_0 ;
  input i_clk_IBUF_BUFG;

  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [2:0]\o_blk_base_addr[0]_OBUF ;
  wire [2:0]\r_paddr_reg[2]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [0]),
        .Q(\o_blk_base_addr[0]_OBUF [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [1]),
        .Q(\o_blk_base_addr[0]_OBUF [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [2]),
        .Q(\o_blk_base_addr[0]_OBUF [2]),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dec_vtp" *) 
module dec_vtp__2
   (\o_blk_aux_addr[1]_OBUF ,
    i_rst_IBUF,
    \r_paddr_reg[2]_0 ,
    i_clk_IBUF_BUFG);
  output [2:0]\o_blk_aux_addr[1]_OBUF ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2]_0 ;
  input i_clk_IBUF_BUFG;

  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [2:0]\o_blk_aux_addr[1]_OBUF ;
  wire [2:0]\r_paddr_reg[2]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [0]),
        .Q(\o_blk_aux_addr[1]_OBUF [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [1]),
        .Q(\o_blk_aux_addr[1]_OBUF [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_reg[2]_0 [2]),
        .Q(\o_blk_aux_addr[1]_OBUF [2]),
        .R(i_rst_IBUF));
endmodule

module manager_channel
   (i_req_alloc_vld,
    i_req_dealloc_vld,
    o_rep_alloc_vld_OBUF,
    o_rep_dealloc_vld_OBUF,
    o_req_alloc_rdy_OBUF,
    o_req_dealloc_rdy_OBUF,
    w_rep_alloc_strm_rdy,
    w_rep_dealloc_strm_rdy,
    i_req_alloc_data,
    i_req_dealloc_data,
    o_rep_alloc_data_OBUF,
    o_rep_dealloc_data_OBUF,
    i_rst_IBUF,
    i_clk_IBUF_BUFG,
    o_req_alloc_rdy,
    o_req_dealloc_rdy,
    i_rep_alloc_rdy_IBUF,
    i_rep_dealloc_rdy_IBUF,
    D,
    \r_data_buf_reg[6][14] ,
    o_rep_alloc_data,
    o_rep_dealloc_data,
    i_req_alloc_vld_IBUF,
    i_req_dealloc_vld_IBUF,
    o_rep_alloc_vld,
    o_rep_dealloc_vld);
  output i_req_alloc_vld;
  output i_req_dealloc_vld;
  output o_rep_alloc_vld_OBUF;
  output o_rep_dealloc_vld_OBUF;
  output o_req_alloc_rdy_OBUF;
  output o_req_dealloc_rdy_OBUF;
  output w_rep_alloc_strm_rdy;
  output w_rep_dealloc_strm_rdy;
  output [17:0]i_req_alloc_data;
  output [14:0]i_req_dealloc_data;
  output [14:0]o_rep_alloc_data_OBUF;
  output [14:0]o_rep_dealloc_data_OBUF;
  input i_rst_IBUF;
  input i_clk_IBUF_BUFG;
  input o_req_alloc_rdy;
  input o_req_dealloc_rdy;
  input i_rep_alloc_rdy_IBUF;
  input i_rep_dealloc_rdy_IBUF;
  input [17:0]D;
  input [14:0]\r_data_buf_reg[6][14] ;
  input [14:0]o_rep_alloc_data;
  input [14:0]o_rep_dealloc_data;
  input i_req_alloc_vld_IBUF;
  input i_req_dealloc_vld_IBUF;
  input o_rep_alloc_vld;
  input o_rep_dealloc_vld;

  wire [17:0]D;
  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy_IBUF;
  wire i_rep_dealloc_rdy_IBUF;
  wire [17:0]i_req_alloc_data;
  wire i_req_alloc_vld;
  wire i_req_alloc_vld_IBUF;
  wire [14:0]i_req_dealloc_data;
  wire i_req_dealloc_vld;
  wire i_req_dealloc_vld_IBUF;
  wire i_rst_IBUF;
  wire [14:0]o_rep_alloc_data;
  wire [14:0]o_rep_alloc_data_OBUF;
  wire o_rep_alloc_vld;
  wire o_rep_alloc_vld_OBUF;
  wire [14:0]o_rep_dealloc_data;
  wire [14:0]o_rep_dealloc_data_OBUF;
  wire o_rep_dealloc_vld;
  wire o_rep_dealloc_vld_OBUF;
  wire o_req_alloc_rdy;
  wire o_req_alloc_rdy_OBUF;
  wire o_req_dealloc_rdy;
  wire o_req_dealloc_rdy_OBUF;
  wire [14:0]\r_data_buf_reg[6][14] ;
  wire w_rep_alloc_strm_rdy;
  wire w_rep_dealloc_strm_rdy;

  axis_fifo__parameterized0 alloc_rep_axis
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_alloc_rdy_IBUF(i_rep_alloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_alloc_data(o_rep_alloc_data),
        .o_rep_alloc_data_OBUF(o_rep_alloc_data_OBUF),
        .o_rep_alloc_vld(o_rep_alloc_vld),
        .o_rep_alloc_vld_OBUF(o_rep_alloc_vld_OBUF),
        .r_sready_reg_0(w_rep_alloc_strm_rdy));
  axis_fifo alloc_req_axis
       (.D(D),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_alloc_data(i_req_alloc_data),
        .i_req_alloc_vld(i_req_alloc_vld),
        .i_req_alloc_vld_IBUF(i_req_alloc_vld_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_alloc_rdy(o_req_alloc_rdy),
        .r_sready_reg_0(o_req_alloc_rdy_OBUF));
  axis_fifo__parameterized0_8 dealloc_rep_axis
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_dealloc_rdy_IBUF(i_rep_dealloc_rdy_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_dealloc_data(o_rep_dealloc_data),
        .o_rep_dealloc_data_OBUF(o_rep_dealloc_data_OBUF),
        .o_rep_dealloc_vld(o_rep_dealloc_vld),
        .o_rep_dealloc_vld_OBUF(o_rep_dealloc_vld_OBUF),
        .r_sready_reg_0(w_rep_dealloc_strm_rdy));
  axis_fifo__parameterized0_9 dealloc_req_axis
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_req_dealloc_data(i_req_dealloc_data),
        .i_req_dealloc_vld(i_req_dealloc_vld),
        .i_req_dealloc_vld_IBUF(i_req_dealloc_vld_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        .\r_data_buf_reg[6][14]_0 (\r_data_buf_reg[6][14] ),
        .r_sready_reg_0(o_req_dealloc_rdy_OBUF));
endmodule

module qpl_addr_translator
   (o_blk_base_we_OBUF,
    \o_blk_base_addr[0]_OBUF ,
    i_ignore,
    i_clk_IBUF_BUFG,
    i_base_vld_IBUF,
    i_base_last_IBUF,
    \r_paddr_word_reg[3]_0 ,
    i_rst_IBUF,
    \r_paddr_reg[2] );
  output [0:0]o_blk_base_we_OBUF;
  output [6:0]\o_blk_base_addr[0]_OBUF ;
  input i_ignore;
  input i_clk_IBUF_BUFG;
  input [0:0]i_base_vld_IBUF;
  input [0:0]i_base_last_IBUF;
  input [3:0]\r_paddr_word_reg[3]_0 ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2] ;

  wire [0:0]i_base_last_IBUF;
  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_ignore;
  wire i_rst_IBUF;
  wire [6:0]\o_blk_base_addr[0]_OBUF ;
  wire [0:0]o_blk_base_we_OBUF;
  wire [2:0]\r_paddr_reg[2] ;
  wire [3:0]\r_paddr_word_reg[3]_0 ;
  wire [0:0]w_vaddr_base_vld;

  LUT2 #(
    .INIT(4'h8)) 
    r_paddr_we_i_1__1
       (.I0(i_base_vld_IBUF),
        .I1(i_base_last_IBUF),
        .O(w_vaddr_base_vld));
  FDRE #(
    .INIT(1'b0)) 
    r_paddr_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(w_vaddr_base_vld),
        .Q(o_blk_base_we_OBUF),
        .R(i_ignore));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [0]),
        .Q(\o_blk_base_addr[0]_OBUF [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [1]),
        .Q(\o_blk_base_addr[0]_OBUF [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [2]),
        .Q(\o_blk_base_addr[0]_OBUF [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [3]),
        .Q(\o_blk_base_addr[0]_OBUF [3]),
        .R(1'b0));
  dec_vtp_7 trans_rd_vtp_dec_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_base_addr[0]_OBUF (\o_blk_base_addr[0]_OBUF [6:4]),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2] ));
endmodule

(* ORIG_REF_NAME = "qpl_addr_translator" *) 
module qpl_addr_translator_0
   (o_blk_aux_we_OBUF,
    \o_blk_aux_addr[0]_OBUF ,
    i_ignore,
    i_clk_IBUF_BUFG,
    i_aux_vld_IBUF,
    i_aux_last_IBUF,
    \r_paddr_word_reg[3]_0 ,
    i_rst_IBUF,
    \r_paddr_reg[2] );
  output [0:0]o_blk_aux_we_OBUF;
  output [6:0]\o_blk_aux_addr[0]_OBUF ;
  input i_ignore;
  input i_clk_IBUF_BUFG;
  input [0:0]i_aux_vld_IBUF;
  input [0:0]i_aux_last_IBUF;
  input [3:0]\r_paddr_word_reg[3]_0 ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2] ;

  wire [0:0]i_aux_last_IBUF;
  wire [0:0]i_aux_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_ignore;
  wire i_rst_IBUF;
  wire [6:0]\o_blk_aux_addr[0]_OBUF ;
  wire [0:0]o_blk_aux_we_OBUF;
  wire [2:0]\r_paddr_reg[2] ;
  wire [3:0]\r_paddr_word_reg[3]_0 ;
  wire [0:0]w_vaddr_aux_vld;

  LUT2 #(
    .INIT(4'h8)) 
    r_paddr_we_i_2
       (.I0(i_aux_vld_IBUF),
        .I1(i_aux_last_IBUF),
        .O(w_vaddr_aux_vld));
  FDRE #(
    .INIT(1'b0)) 
    r_paddr_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(w_vaddr_aux_vld),
        .Q(o_blk_aux_we_OBUF),
        .R(i_ignore));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [0]),
        .Q(\o_blk_aux_addr[0]_OBUF [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [1]),
        .Q(\o_blk_aux_addr[0]_OBUF [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [2]),
        .Q(\o_blk_aux_addr[0]_OBUF [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [3]),
        .Q(\o_blk_aux_addr[0]_OBUF [3]),
        .R(1'b0));
  dec_vtp_5 trans_rd_vtp_dec_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_aux_addr[0]_OBUF (\o_blk_aux_addr[0]_OBUF [6:4]),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2] ));
endmodule

(* ORIG_REF_NAME = "qpl_addr_translator" *) 
module qpl_addr_translator_1
   (o_blk_base_we_OBUF,
    \o_blk_base_addr[1]_OBUF ,
    r_paddr_we_reg_0,
    i_clk_IBUF_BUFG,
    i_base_vld_IBUF,
    i_base_last_IBUF,
    \r_paddr_word_reg[3]_0 ,
    i_rst_IBUF,
    D);
  output [0:0]o_blk_base_we_OBUF;
  output [6:0]\o_blk_base_addr[1]_OBUF ;
  input r_paddr_we_reg_0;
  input i_clk_IBUF_BUFG;
  input [0:0]i_base_vld_IBUF;
  input [0:0]i_base_last_IBUF;
  input [3:0]\r_paddr_word_reg[3]_0 ;
  input i_rst_IBUF;
  input [2:0]D;

  wire [2:0]D;
  wire [0:0]i_base_last_IBUF;
  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [6:0]\o_blk_base_addr[1]_OBUF ;
  wire [0:0]o_blk_base_we_OBUF;
  wire r_paddr_we_reg_0;
  wire [3:0]\r_paddr_word_reg[3]_0 ;
  wire [1:1]w_vaddr_base_vld;

  LUT2 #(
    .INIT(4'h8)) 
    r_paddr_we_i_1__2
       (.I0(i_base_vld_IBUF),
        .I1(i_base_last_IBUF),
        .O(w_vaddr_base_vld));
  FDRE #(
    .INIT(1'b0)) 
    r_paddr_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(w_vaddr_base_vld),
        .Q(o_blk_base_we_OBUF),
        .R(r_paddr_we_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [0]),
        .Q(\o_blk_base_addr[1]_OBUF [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [1]),
        .Q(\o_blk_base_addr[1]_OBUF [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [2]),
        .Q(\o_blk_base_addr[1]_OBUF [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [3]),
        .Q(\o_blk_base_addr[1]_OBUF [3]),
        .R(1'b0));
  dec_vtp_4 trans_rd_vtp_dec_i
       (.D(D),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_base_addr[1]_OBUF (\o_blk_base_addr[1]_OBUF [6:4]));
endmodule

(* ORIG_REF_NAME = "qpl_addr_translator" *) 
module qpl_addr_translator_3
   (o_blk_aux_we_OBUF,
    \o_blk_aux_addr[1]_OBUF ,
    r_paddr_we_reg_0,
    i_clk_IBUF_BUFG,
    i_aux_vld_IBUF,
    i_aux_last_IBUF,
    \r_paddr_word_reg[3]_0 ,
    i_rst_IBUF,
    \r_paddr_reg[2] );
  output [0:0]o_blk_aux_we_OBUF;
  output [6:0]\o_blk_aux_addr[1]_OBUF ;
  input r_paddr_we_reg_0;
  input i_clk_IBUF_BUFG;
  input [0:0]i_aux_vld_IBUF;
  input [0:0]i_aux_last_IBUF;
  input [3:0]\r_paddr_word_reg[3]_0 ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2] ;

  wire [0:0]i_aux_last_IBUF;
  wire [0:0]i_aux_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [6:0]\o_blk_aux_addr[1]_OBUF ;
  wire [0:0]o_blk_aux_we_OBUF;
  wire [2:0]\r_paddr_reg[2] ;
  wire r_paddr_we_reg_0;
  wire [3:0]\r_paddr_word_reg[3]_0 ;
  wire [1:1]w_vaddr_aux_vld;

  LUT2 #(
    .INIT(4'h8)) 
    r_paddr_we_i_2__0
       (.I0(i_aux_vld_IBUF),
        .I1(i_aux_last_IBUF),
        .O(w_vaddr_aux_vld));
  FDRE #(
    .INIT(1'b0)) 
    r_paddr_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(w_vaddr_aux_vld),
        .Q(o_blk_aux_we_OBUF),
        .R(r_paddr_we_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [0]),
        .Q(\o_blk_aux_addr[1]_OBUF [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [1]),
        .Q(\o_blk_aux_addr[1]_OBUF [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [2]),
        .Q(\o_blk_aux_addr[1]_OBUF [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_paddr_word_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_paddr_word_reg[3]_0 [3]),
        .Q(\o_blk_aux_addr[1]_OBUF [3]),
        .R(1'b0));
  dec_vtp__2 trans_rd_vtp_dec_i
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_aux_addr[1]_OBUF (\o_blk_aux_addr[1]_OBUF [6:4]),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2] ));
endmodule

(* BLOCK_D = "8" *) (* BLOCK_W = "3" *) (* LINE_S = "64" *) 
(* LINE_W = "6" *) (* NODES = "4" *) (* REP_W = "15" *) 
(* REQ_S = "512" *) (* REQ_W = "18" *) (* STAGES = "3" *) 
(* UDATA_W = "8" *) 
module qpl_allocator
   (i_clk,
    i_rst,
    i_rep_alloc_rdy,
    i_req_alloc_vld,
    i_req_alloc_data,
    \i_scb[2] ,
    \i_scb[1] ,
    \i_scb[0] ,
    i_dealloc_new_free_ptr,
    o_req_alloc_rdy,
    o_rep_alloc_vld,
    o_rep_alloc_data,
    o_full,
    o_avail);
  input i_clk;
  input i_rst;
  input i_rep_alloc_rdy;
  input i_req_alloc_vld;
  input [17:0]i_req_alloc_data;
  input [3:0]\i_scb[2] ;
  input [3:0]\i_scb[1] ;
  input [3:0]\i_scb[0] ;
  input [3:0]i_dealloc_new_free_ptr;
  output o_req_alloc_rdy;
  output o_rep_alloc_vld;
  output [14:0]o_rep_alloc_data;
  output o_full;
  output [3:0]o_avail;

  wire i_clk;
  wire [3:0]i_dealloc_new_free_ptr;
  wire i_rep_alloc_rdy;
  wire [17:0]i_req_alloc_data;
  wire i_req_alloc_vld;
  wire i_rst;
  wire [3:0]\i_scb[0] ;
  wire [3:0]\i_scb[1] ;
  wire [3:0]\i_scb[2] ;
  wire [3:0]o_avail;
  wire o_full;
  wire [14:0]o_rep_alloc_data;
  wire o_rep_alloc_vld;
  wire o_req_alloc_rdy;
  wire [7:0]r_alloc_udata;
  wire r_alloc_vld;
  wire r_alloc_vld_i_2_n_0;
  wire r_alloc_vld_i_3_n_0;
  wire r_alloc_vld_i_4_n_0;
  wire [2:0]r_free_ptr;
  wire \r_free_ptr[0]_i_1_n_0 ;
  wire \r_free_ptr[1]_i_1_n_0 ;
  wire \r_free_ptr[1]_i_2_n_0 ;
  wire \r_free_ptr[2]_i_1_n_0 ;
  wire \r_free_ptr[3]_i_1_n_0 ;
  wire \r_free_ptr[3]_i_2_n_0 ;
  wire \r_free_ptr[3]_i_3_n_0 ;
  wire \r_free_ptr[3]_i_4_n_0 ;
  wire \r_free_ptr[3]_i_5_n_0 ;
  wire \r_free_ptr[3]_i_6_n_0 ;
  wire \r_free_ptr[3]_i_7_n_0 ;
  wire r_req_alloc_rdy_i_1_n_0;
  wire [3:0]r_req_lines;
  wire \r_req_lines[3]_i_2_n_0 ;
  wire [2:0]w_alloc_blk_base;
  wire w_alloc_vld;
  wire [3:0]w_req_lines;

  (* ADDR_W = "3" *) 
  (* BITMAP = "8" *) 
  (* DONT_TOUCH *) 
  (* NODES = "4" *) 
  (* OREG_EN = "1" *) 
  (* STAGES = "3" *) 
  dec_vtp alloc_vtp_dec_i
       (.i_clk(i_clk),
        .i_rst(i_rst),
        .\i_scb[0] (\i_scb[0] ),
        .\i_scb[1] (\i_scb[1] ),
        .\i_scb[2] (\i_scb[2] ),
        .i_vaddr(r_free_ptr),
        .o_paddr(w_alloc_blk_base));
  LUT1 #(
    .INIT(2'h1)) 
    \o_avail[0]_INST_0 
       (.I0(r_free_ptr[0]),
        .O(o_avail[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_avail[1]_INST_0 
       (.I0(r_free_ptr[0]),
        .I1(r_free_ptr[1]),
        .O(o_avail[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_avail[2]_INST_0 
       (.I0(r_free_ptr[0]),
        .I1(r_free_ptr[1]),
        .I2(r_free_ptr[2]),
        .O(o_avail[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_avail[3]_INST_0 
       (.I0(r_free_ptr[2]),
        .I1(r_free_ptr[0]),
        .I2(r_free_ptr[1]),
        .O(o_avail[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[10]),
        .Q(r_alloc_udata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[11]),
        .Q(r_alloc_udata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[12]),
        .Q(r_alloc_udata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[13]),
        .Q(r_alloc_udata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[14]),
        .Q(r_alloc_udata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[15]),
        .Q(r_alloc_udata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[16]),
        .Q(r_alloc_udata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_alloc_udata_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_alloc_data[17]),
        .Q(r_alloc_udata[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00C8000800080000)) 
    r_alloc_vld_i_1
       (.I0(r_alloc_vld_i_2_n_0),
        .I1(r_alloc_vld_i_3_n_0),
        .I2(w_req_lines[3]),
        .I3(o_full),
        .I4(r_alloc_vld_i_4_n_0),
        .I5(o_avail[3]),
        .O(w_alloc_vld));
  LUT6 #(
    .INIT(64'hF9FFFF9F9FFFFFF6)) 
    r_alloc_vld_i_2
       (.I0(i_req_alloc_data[8]),
        .I1(i_req_alloc_data[2]),
        .I2(i_req_alloc_data[7]),
        .I3(i_req_alloc_data[6]),
        .I4(i_req_alloc_data[0]),
        .I5(i_req_alloc_data[1]),
        .O(r_alloc_vld_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    r_alloc_vld_i_3
       (.I0(i_rep_alloc_rdy),
        .I1(i_req_alloc_vld),
        .O(r_alloc_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'h35503F553D547FD5)) 
    r_alloc_vld_i_4
       (.I0(w_req_lines[2]),
        .I1(r_free_ptr[0]),
        .I2(r_free_ptr[1]),
        .I3(r_free_ptr[2]),
        .I4(w_req_lines[1]),
        .I5(w_req_lines[0]),
        .O(r_alloc_vld_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_alloc_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(w_alloc_vld),
        .Q(r_alloc_vld),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h695596AA)) 
    \r_free_ptr[0]_i_1 
       (.I0(r_free_ptr[0]),
        .I1(i_req_alloc_data[0]),
        .I2(i_req_alloc_data[6]),
        .I3(w_alloc_vld),
        .I4(i_dealloc_new_free_ptr[0]),
        .O(\r_free_ptr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h933936636666CCCC)) 
    \r_free_ptr[1]_i_1 
       (.I0(i_dealloc_new_free_ptr[0]),
        .I1(\r_free_ptr[1]_i_2_n_0 ),
        .I2(i_req_alloc_data[6]),
        .I3(i_req_alloc_data[0]),
        .I4(r_free_ptr[0]),
        .I5(w_alloc_vld),
        .O(\r_free_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \r_free_ptr[1]_i_2 
       (.I0(w_alloc_vld),
        .I1(w_req_lines[1]),
        .I2(r_free_ptr[1]),
        .I3(i_dealloc_new_free_ptr[1]),
        .O(\r_free_ptr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \r_free_ptr[2]_i_1 
       (.I0(\r_free_ptr[3]_i_3_n_0 ),
        .I1(\r_free_ptr[3]_i_4_n_0 ),
        .I2(r_free_ptr[1]),
        .I3(\r_free_ptr[3]_i_2_n_0 ),
        .I4(i_dealloc_new_free_ptr[1]),
        .O(\r_free_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h004D4DFFFFB2B200)) 
    \r_free_ptr[3]_i_1 
       (.I0(i_dealloc_new_free_ptr[1]),
        .I1(\r_free_ptr[3]_i_2_n_0 ),
        .I2(r_free_ptr[1]),
        .I3(\r_free_ptr[3]_i_3_n_0 ),
        .I4(\r_free_ptr[3]_i_4_n_0 ),
        .I5(\r_free_ptr[3]_i_5_n_0 ),
        .O(\r_free_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h9666FFFF)) 
    \r_free_ptr[3]_i_2 
       (.I0(i_req_alloc_data[7]),
        .I1(i_req_alloc_data[1]),
        .I2(i_req_alloc_data[0]),
        .I3(i_req_alloc_data[6]),
        .I4(w_alloc_vld),
        .O(\r_free_ptr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6660F66650005000)) 
    \r_free_ptr[3]_i_3 
       (.I0(\r_free_ptr[3]_i_6_n_0 ),
        .I1(w_req_lines[1]),
        .I2(i_dealloc_new_free_ptr[0]),
        .I3(r_free_ptr[0]),
        .I4(w_req_lines[0]),
        .I5(w_alloc_vld),
        .O(\r_free_ptr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \r_free_ptr[3]_i_4 
       (.I0(w_alloc_vld),
        .I1(w_req_lines[2]),
        .I2(r_free_ptr[2]),
        .I3(i_dealloc_new_free_ptr[2]),
        .O(\r_free_ptr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9696999666669666)) 
    \r_free_ptr[3]_i_5 
       (.I0(\r_free_ptr[3]_i_7_n_0 ),
        .I1(i_dealloc_new_free_ptr[3]),
        .I2(r_free_ptr[2]),
        .I3(w_alloc_vld),
        .I4(w_req_lines[2]),
        .I5(i_dealloc_new_free_ptr[2]),
        .O(\r_free_ptr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r_free_ptr[3]_i_6 
       (.I0(i_dealloc_new_free_ptr[1]),
        .I1(r_free_ptr[1]),
        .O(\r_free_ptr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08080800)) 
    \r_free_ptr[3]_i_7 
       (.I0(r_alloc_vld_i_2_n_0),
        .I1(r_alloc_vld_i_3_n_0),
        .I2(w_req_lines[3]),
        .I3(r_alloc_vld_i_4_n_0),
        .I4(o_avail[3]),
        .I5(o_full),
        .O(\r_free_ptr[3]_i_7_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r_free_ptr_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_free_ptr[0]_i_1_n_0 ),
        .Q(r_free_ptr[0]),
        .S(i_rst));
  FDSE #(
    .INIT(1'b1)) 
    \r_free_ptr_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_free_ptr[1]_i_1_n_0 ),
        .Q(r_free_ptr[1]),
        .S(i_rst));
  FDSE #(
    .INIT(1'b1)) 
    \r_free_ptr_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_free_ptr[2]_i_1_n_0 ),
        .Q(r_free_ptr[2]),
        .S(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_free_ptr_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_free_ptr[3]_i_1_n_0 ),
        .Q(o_full),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[0] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(w_alloc_blk_base[0]),
        .Q(o_rep_alloc_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[10] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[3]),
        .Q(o_rep_alloc_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[11] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[4]),
        .Q(o_rep_alloc_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[12] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[5]),
        .Q(o_rep_alloc_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[13] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[6]),
        .Q(o_rep_alloc_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[14] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[7]),
        .Q(o_rep_alloc_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[1] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(w_alloc_blk_base[1]),
        .Q(o_rep_alloc_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[2] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(w_alloc_blk_base[2]),
        .Q(o_rep_alloc_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[3] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_req_lines[0]),
        .Q(o_rep_alloc_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[4] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_req_lines[1]),
        .Q(o_rep_alloc_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[5] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_req_lines[2]),
        .Q(o_rep_alloc_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[6] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_req_lines[3]),
        .Q(o_rep_alloc_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[7] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[0]),
        .Q(o_rep_alloc_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[8] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[1]),
        .Q(o_rep_alloc_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_alloc_data_reg[9] 
       (.C(i_clk),
        .CE(r_alloc_vld),
        .D(r_alloc_udata[2]),
        .Q(o_rep_alloc_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_rep_alloc_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_alloc_vld),
        .Q(o_rep_alloc_vld),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h31)) 
    r_req_alloc_rdy_i_1
       (.I0(i_req_alloc_vld),
        .I1(i_rst),
        .I2(w_alloc_vld),
        .O(r_req_alloc_rdy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_req_alloc_rdy_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_req_alloc_rdy_i_1_n_0),
        .Q(o_req_alloc_rdy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_req_lines[0]_i_1 
       (.I0(i_req_alloc_data[6]),
        .I1(i_req_alloc_data[0]),
        .O(w_req_lines[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \r_req_lines[1]_i_1 
       (.I0(i_req_alloc_data[6]),
        .I1(i_req_alloc_data[0]),
        .I2(i_req_alloc_data[1]),
        .I3(i_req_alloc_data[7]),
        .O(w_req_lines[1]));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    \r_req_lines[2]_i_1 
       (.I0(i_req_alloc_data[1]),
        .I1(i_req_alloc_data[0]),
        .I2(i_req_alloc_data[6]),
        .I3(i_req_alloc_data[7]),
        .I4(i_req_alloc_data[2]),
        .I5(i_req_alloc_data[8]),
        .O(w_req_lines[2]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \r_req_lines[3]_i_1 
       (.I0(i_req_alloc_data[3]),
        .I1(i_req_alloc_data[9]),
        .I2(i_req_alloc_data[8]),
        .I3(i_req_alloc_data[2]),
        .I4(\r_req_lines[3]_i_2_n_0 ),
        .O(w_req_lines[3]));
  LUT4 #(
    .INIT(16'hEA80)) 
    \r_req_lines[3]_i_2 
       (.I0(i_req_alloc_data[1]),
        .I1(i_req_alloc_data[0]),
        .I2(i_req_alloc_data[6]),
        .I3(i_req_alloc_data[7]),
        .O(\r_req_lines[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_req_lines_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_req_lines[0]),
        .Q(r_req_lines[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_req_lines_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_req_lines[1]),
        .Q(r_req_lines[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_req_lines_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_req_lines[2]),
        .Q(r_req_lines[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_req_lines_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(w_req_lines[3]),
        .Q(r_req_lines[3]),
        .R(1'b0));
endmodule

module qpl_base_translator
   (\r_vaddr_reg[0] ,
    \r_vaddr_reg[0]_0 ,
    \r_vaddr_reg[1] ,
    \r_vaddr_reg[0]_1 ,
    \r_vaddr_reg[0]_2 ,
    \r_vaddr_reg[0]_3 ,
    \r_vaddr_reg[1]_0 ,
    \r_vaddr_reg[0]_4 ,
    i_ignore,
    \r_vaddr_reg[0]_5 ,
    \r_paddr_reg[2] ,
    \r_paddr_reg[2]_0 ,
    \r_paddr_reg[2]_1 ,
    o_rd_data,
    \r_paddr_reg[2]_2 ,
    \r_paddr_reg[2]_3 ,
    \r_paddr_reg[2]_4 ,
    \r_vaddr_base_reg[2]_0 ,
    i_clk_IBUF_BUFG,
    \r_vaddr_reg[2] ,
    \r_vaddr_reg[2]_0 ,
    \r_vaddr_reg[2]_1 ,
    i_base_vld_IBUF,
    \r_vaddr_reg[1]_1 ,
    \r_vaddr_reg[1]_2 ,
    i_rst_IBUF);
  output \r_vaddr_reg[0] ;
  output \r_vaddr_reg[0]_0 ;
  output \r_vaddr_reg[1] ;
  output \r_vaddr_reg[0]_1 ;
  output \r_vaddr_reg[0]_2 ;
  output \r_vaddr_reg[0]_3 ;
  output \r_vaddr_reg[1]_0 ;
  output \r_vaddr_reg[0]_4 ;
  output i_ignore;
  output \r_vaddr_reg[0]_5 ;
  input \r_paddr_reg[2] ;
  input \r_paddr_reg[2]_0 ;
  input \r_paddr_reg[2]_1 ;
  input [1:0]o_rd_data;
  input \r_paddr_reg[2]_2 ;
  input \r_paddr_reg[2]_3 ;
  input \r_paddr_reg[2]_4 ;
  input [2:0]\r_vaddr_base_reg[2]_0 ;
  input i_clk_IBUF_BUFG;
  input \r_vaddr_reg[2] ;
  input \r_vaddr_reg[2]_0 ;
  input \r_vaddr_reg[2]_1 ;
  input [0:0]i_base_vld_IBUF;
  input \r_vaddr_reg[1]_1 ;
  input \r_vaddr_reg[1]_2 ;
  input i_rst_IBUF;

  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_ignore;
  wire i_rst_IBUF;
  wire [1:0]o_rd_data;
  wire \r_paddr_reg[2] ;
  wire \r_paddr_reg[2]_0 ;
  wire \r_paddr_reg[2]_1 ;
  wire \r_paddr_reg[2]_2 ;
  wire \r_paddr_reg[2]_3 ;
  wire \r_paddr_reg[2]_4 ;
  wire [2:0]r_vaddr_base;
  wire [2:0]\r_vaddr_base_reg[2]_0 ;
  wire \r_vaddr_reg[0] ;
  wire \r_vaddr_reg[0]_0 ;
  wire \r_vaddr_reg[0]_1 ;
  wire \r_vaddr_reg[0]_2 ;
  wire \r_vaddr_reg[0]_3 ;
  wire \r_vaddr_reg[0]_4 ;
  wire \r_vaddr_reg[0]_5 ;
  wire \r_vaddr_reg[1] ;
  wire \r_vaddr_reg[1]_0 ;
  wire \r_vaddr_reg[1]_1 ;
  wire \r_vaddr_reg[1]_2 ;
  wire \r_vaddr_reg[2] ;
  wire \r_vaddr_reg[2]_0 ;
  wire \r_vaddr_reg[2]_1 ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    r_paddr_we_i_1
       (.I0(r_vaddr_base[2]),
        .I1(\r_vaddr_base_reg[2]_0 [2]),
        .I2(\r_vaddr_base_reg[2]_0 [0]),
        .I3(r_vaddr_base[0]),
        .I4(\r_vaddr_base_reg[2]_0 [1]),
        .I5(r_vaddr_base[1]),
        .O(i_ignore));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_0 [0]),
        .Q(r_vaddr_base[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_0 [1]),
        .Q(r_vaddr_base[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_0 [2]),
        .Q(r_vaddr_base[2]),
        .R(1'b0));
  dec_ptv_6 trans_ptv_dec_i
       (.i_base_vld_IBUF(i_base_vld_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rd_data(o_rd_data),
        .\r_paddr_reg[2] (\r_paddr_reg[2] ),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2]_0 ),
        .\r_paddr_reg[2]_1 (\r_paddr_reg[2]_1 ),
        .\r_paddr_reg[2]_2 (\r_paddr_reg[2]_2 ),
        .\r_paddr_reg[2]_3 (\r_paddr_reg[2]_3 ),
        .\r_paddr_reg[2]_4 (\r_paddr_reg[2]_4 ),
        .\r_vaddr_reg[0]_0 (\r_vaddr_reg[0] ),
        .\r_vaddr_reg[0]_1 (\r_vaddr_reg[0]_0 ),
        .\r_vaddr_reg[0]_2 (\r_vaddr_reg[0]_1 ),
        .\r_vaddr_reg[0]_3 (\r_vaddr_reg[0]_2 ),
        .\r_vaddr_reg[0]_4 (\r_vaddr_reg[0]_3 ),
        .\r_vaddr_reg[0]_5 (\r_vaddr_reg[0]_4 ),
        .\r_vaddr_reg[0]_6 (\r_vaddr_reg[0]_5 ),
        .\r_vaddr_reg[1]_0 (\r_vaddr_reg[1] ),
        .\r_vaddr_reg[1]_1 (\r_vaddr_reg[1]_0 ),
        .\r_vaddr_reg[1]_2 (\r_vaddr_reg[1]_1 ),
        .\r_vaddr_reg[1]_3 (\r_vaddr_reg[1]_2 ),
        .\r_vaddr_reg[2]_0 (\r_vaddr_base_reg[2]_0 [2:1]),
        .\r_vaddr_reg[2]_1 (\r_vaddr_reg[2] ),
        .\r_vaddr_reg[2]_2 (\r_vaddr_reg[2]_0 ),
        .\r_vaddr_reg[2]_3 (\r_vaddr_reg[2]_1 ));
endmodule

(* ORIG_REF_NAME = "qpl_base_translator" *) 
module qpl_base_translator_2
   (\r_vaddr_reg[0] ,
    \r_vaddr_reg[0]_0 ,
    \r_vaddr_reg[1] ,
    \r_vaddr_reg[0]_1 ,
    \r_vaddr_reg[0]_2 ,
    D,
    \r_vaddr_reg[0]_3 ,
    \r_vaddr_reg[0]_4 ,
    \r_vaddr_base_reg[2]_0 ,
    \r_paddr_reg[0] ,
    \r_paddr_reg[0]_0 ,
    \r_paddr[2]_i_2 ,
    o_rd_data,
    \r_paddr_reg[0]_1 ,
    \r_paddr_reg[0]_2 ,
    \r_paddr_reg[2] ,
    \r_paddr[2]_i_2__1 ,
    \r_vaddr_base_reg[2]_1 ,
    \r_paddr_reg[1] ,
    \r_paddr_reg[0]_3 ,
    i_clk_IBUF_BUFG,
    \r_vaddr_reg[2] ,
    \r_vaddr_reg[2]_0 ,
    \r_vaddr_reg[2]_1 ,
    i_base_vld_IBUF,
    \r_vaddr_reg[1]_0 ,
    \r_vaddr_reg[1]_1 ,
    i_rst_IBUF);
  output \r_vaddr_reg[0] ;
  output \r_vaddr_reg[0]_0 ;
  output \r_vaddr_reg[1] ;
  output \r_vaddr_reg[0]_1 ;
  output \r_vaddr_reg[0]_2 ;
  output [2:0]D;
  output \r_vaddr_reg[0]_3 ;
  output \r_vaddr_reg[0]_4 ;
  output \r_vaddr_base_reg[2]_0 ;
  input \r_paddr_reg[0] ;
  input \r_paddr_reg[0]_0 ;
  input \r_paddr[2]_i_2 ;
  input [5:0]o_rd_data;
  input \r_paddr_reg[0]_1 ;
  input \r_paddr_reg[0]_2 ;
  input \r_paddr_reg[2] ;
  input \r_paddr[2]_i_2__1 ;
  input [2:0]\r_vaddr_base_reg[2]_1 ;
  input \r_paddr_reg[1] ;
  input \r_paddr_reg[0]_3 ;
  input i_clk_IBUF_BUFG;
  input \r_vaddr_reg[2] ;
  input \r_vaddr_reg[2]_0 ;
  input \r_vaddr_reg[2]_1 ;
  input [0:0]i_base_vld_IBUF;
  input \r_vaddr_reg[1]_0 ;
  input \r_vaddr_reg[1]_1 ;
  input i_rst_IBUF;

  wire [2:0]D;
  wire [0:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [5:0]o_rd_data;
  wire \r_paddr[2]_i_2 ;
  wire \r_paddr[2]_i_2__1 ;
  wire \r_paddr_reg[0] ;
  wire \r_paddr_reg[0]_0 ;
  wire \r_paddr_reg[0]_1 ;
  wire \r_paddr_reg[0]_2 ;
  wire \r_paddr_reg[0]_3 ;
  wire \r_paddr_reg[1] ;
  wire \r_paddr_reg[2] ;
  wire \r_vaddr_base_reg[2]_0 ;
  wire [2:0]\r_vaddr_base_reg[2]_1 ;
  wire \r_vaddr_base_reg_n_0_[0] ;
  wire \r_vaddr_base_reg_n_0_[1] ;
  wire \r_vaddr_base_reg_n_0_[2] ;
  wire \r_vaddr_reg[0] ;
  wire \r_vaddr_reg[0]_0 ;
  wire \r_vaddr_reg[0]_1 ;
  wire \r_vaddr_reg[0]_2 ;
  wire \r_vaddr_reg[0]_3 ;
  wire \r_vaddr_reg[0]_4 ;
  wire \r_vaddr_reg[1] ;
  wire \r_vaddr_reg[1]_0 ;
  wire \r_vaddr_reg[1]_1 ;
  wire \r_vaddr_reg[2] ;
  wire \r_vaddr_reg[2]_0 ;
  wire \r_vaddr_reg[2]_1 ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    r_paddr_we_i_1__0
       (.I0(\r_vaddr_base_reg_n_0_[2] ),
        .I1(\r_vaddr_base_reg[2]_1 [2]),
        .I2(\r_vaddr_base_reg[2]_1 [0]),
        .I3(\r_vaddr_base_reg_n_0_[0] ),
        .I4(\r_vaddr_base_reg[2]_1 [1]),
        .I5(\r_vaddr_base_reg_n_0_[1] ),
        .O(\r_vaddr_base_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_1 [0]),
        .Q(\r_vaddr_base_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_1 [1]),
        .Q(\r_vaddr_base_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_vaddr_base_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_vaddr_base_reg[2]_1 [2]),
        .Q(\r_vaddr_base_reg_n_0_[2] ),
        .R(1'b0));
  dec_ptv__2 trans_ptv_dec_i
       (.D(D),
        .i_base_vld_IBUF(i_base_vld_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rd_data(o_rd_data),
        .\r_paddr[2]_i_2 (\r_paddr[2]_i_2 ),
        .\r_paddr[2]_i_2__1_0 (\r_paddr[2]_i_2__1 ),
        .\r_paddr_reg[0] (\r_paddr_reg[0] ),
        .\r_paddr_reg[0]_0 (\r_paddr_reg[0]_0 ),
        .\r_paddr_reg[0]_1 (\r_paddr_reg[0]_1 ),
        .\r_paddr_reg[0]_2 (\r_paddr_reg[0]_2 ),
        .\r_paddr_reg[0]_3 (\r_paddr_reg[0]_3 ),
        .\r_paddr_reg[1] (\r_paddr_reg[1] ),
        .\r_paddr_reg[2] (\r_paddr_reg[2] ),
        .\r_vaddr_reg[0]_0 (\r_vaddr_reg[0] ),
        .\r_vaddr_reg[0]_1 (\r_vaddr_reg[0]_0 ),
        .\r_vaddr_reg[0]_2 (\r_vaddr_reg[0]_1 ),
        .\r_vaddr_reg[0]_3 (\r_vaddr_reg[0]_2 ),
        .\r_vaddr_reg[0]_4 (\r_vaddr_reg[0]_3 ),
        .\r_vaddr_reg[0]_5 (\r_vaddr_reg[0]_4 ),
        .\r_vaddr_reg[1]_0 (\r_vaddr_reg[1] ),
        .\r_vaddr_reg[1]_1 (\r_vaddr_reg[1]_0 ),
        .\r_vaddr_reg[1]_2 (\r_vaddr_reg[1]_1 ),
        .\r_vaddr_reg[2]_0 (\r_vaddr_base_reg[2]_1 [2:1]),
        .\r_vaddr_reg[2]_1 (\r_vaddr_reg[2] ),
        .\r_vaddr_reg[2]_2 (\r_vaddr_reg[2]_0 ),
        .\r_vaddr_reg[2]_3 (\r_vaddr_reg[2]_1 ));
endmodule

(* BITMAP = "8" *) (* BLOCK_W = "3" *) (* MAX_SCB = "12" *) 
(* NODES = "4" *) (* STAGES = "3" *) 
module qpl_compressor
   (i_dealloc_vld,
    i_dealloc_addr,
    i_dealloc_size,
    i_scb,
    o_scb_vld,
    o_scb);
  input i_dealloc_vld;
  input [2:0]i_dealloc_addr;
  input [3:0]i_dealloc_size;
  input [11:0]i_scb;
  output o_scb_vld;
  output [11:0]o_scb;

  wire [2:0]i_dealloc_addr;
  wire [3:0]i_dealloc_size;
  wire i_dealloc_vld;
  wire [11:0]i_scb;
  wire [11:0]o_scb;
  wire [7:2]\pscb_gen_tree_i/w_stg_data[1] ;
  wire [7:0]\pscb_gen_tree_i/w_stg_data[2] ;
  wire [11:8]w_rscb;

  assign o_scb_vld = i_dealloc_vld;
  LUT6 #(
    .INIT(64'hFFE2FFFF001D0000)) 
    \o_scb[0]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [0]),
        .I1(i_scb[4]),
        .I2(\pscb_gen_tree_i/w_stg_data[2] [4]),
        .I3(\pscb_gen_tree_i/w_stg_data[1] [2]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[0]),
        .O(o_scb[0]));
  LUT6 #(
    .INIT(64'h008888B8B8FCFCFF)) 
    \o_scb[0]_INST_0_i_1 
       (.I0(i_scb[11]),
        .I1(i_scb[5]),
        .I2(i_scb[9]),
        .I3(i_dealloc_addr[1]),
        .I4(i_dealloc_addr[0]),
        .I5(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hEEAA22AA)) 
    \o_scb[10]_INST_0 
       (.I0(i_scb[10]),
        .I1(i_dealloc_addr[2]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[1]),
        .I4(w_rscb[10]),
        .O(o_scb[10]));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \o_scb[10]_INST_0_i_1 
       (.I0(i_scb[11]),
        .I1(i_scb[8]),
        .I2(i_dealloc_size[1]),
        .I3(i_scb[9]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[10]),
        .O(w_rscb[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \o_scb[11]_INST_0 
       (.I0(i_scb[11]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .I4(w_rscb[11]),
        .O(o_scb[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_scb[11]_INST_0_i_1 
       (.I0(i_scb[8]),
        .I1(i_scb[9]),
        .I2(i_dealloc_size[1]),
        .I3(i_scb[10]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[11]),
        .O(w_rscb[11]));
  LUT6 #(
    .INIT(64'hFFE2FFFF001D0000)) 
    \o_scb[1]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [4]),
        .I1(i_scb[4]),
        .I2(\pscb_gen_tree_i/w_stg_data[2] [0]),
        .I3(\pscb_gen_tree_i/w_stg_data[1] [3]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[1]),
        .O(o_scb[1]));
  LUT6 #(
    .INIT(64'h00B830BB30BBB8FF)) 
    \o_scb[1]_INST_0_i_1 
       (.I0(i_scb[9]),
        .I1(i_scb[5]),
        .I2(i_scb[11]),
        .I3(i_dealloc_addr[2]),
        .I4(i_dealloc_addr[1]),
        .I5(i_dealloc_addr[0]),
        .O(\pscb_gen_tree_i/w_stg_data[1] [3]));
  LUT6 #(
    .INIT(64'hFFE2FFFF001D0000)) 
    \o_scb[2]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [1]),
        .I1(i_scb[6]),
        .I2(\pscb_gen_tree_i/w_stg_data[2] [5]),
        .I3(\pscb_gen_tree_i/w_stg_data[1] [6]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[2]),
        .O(o_scb[2]));
  LUT6 #(
    .INIT(64'h0044444747CFCFFF)) 
    \o_scb[2]_INST_0_i_1 
       (.I0(i_scb[11]),
        .I1(i_scb[7]),
        .I2(i_scb[9]),
        .I3(i_dealloc_addr[1]),
        .I4(i_dealloc_addr[0]),
        .I5(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[1] [6]));
  LUT6 #(
    .INIT(64'hFFE2FFFF001D0000)) 
    \o_scb[3]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [5]),
        .I1(i_scb[6]),
        .I2(\pscb_gen_tree_i/w_stg_data[2] [1]),
        .I3(\pscb_gen_tree_i/w_stg_data[1] [7]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[3]),
        .O(o_scb[3]));
  LUT6 #(
    .INIT(64'h00030347477777FF)) 
    \o_scb[3]_INST_0_i_1 
       (.I0(i_scb[9]),
        .I1(i_scb[7]),
        .I2(i_scb[11]),
        .I3(i_dealloc_addr[1]),
        .I4(i_dealloc_addr[0]),
        .I5(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[1] [7]));
  LUT5 #(
    .INIT(32'hEFFF0100)) 
    \o_scb[4]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [0]),
        .I1(\pscb_gen_tree_i/w_stg_data[2] [4]),
        .I2(i_scb[5]),
        .I3(i_dealloc_size[0]),
        .I4(i_scb[4]),
        .O(o_scb[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00AA)) 
    \o_scb[4]_INST_0_i_1 
       (.I0(i_scb[8]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h22BB)) 
    \o_scb[4]_INST_0_i_2 
       (.I0(i_scb[10]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [4]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \o_scb[5]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [2]),
        .I1(\pscb_gen_tree_i/w_stg_data[2] [6]),
        .I2(i_scb[4]),
        .I3(i_dealloc_size[0]),
        .I4(i_scb[5]),
        .O(o_scb[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h02AB)) 
    \o_scb[5]_INST_0_i_1 
       (.I0(i_scb[9]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2BBB)) 
    \o_scb[5]_INST_0_i_2 
       (.I0(i_scb[11]),
        .I1(i_dealloc_addr[2]),
        .I2(i_dealloc_addr[1]),
        .I3(i_dealloc_addr[0]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [6]));
  LUT5 #(
    .INIT(32'hEFFF0100)) 
    \o_scb[6]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [1]),
        .I1(\pscb_gen_tree_i/w_stg_data[2] [5]),
        .I2(i_scb[7]),
        .I3(i_dealloc_size[0]),
        .I4(i_scb[6]),
        .O(o_scb[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0055)) 
    \o_scb[6]_INST_0_i_1 
       (.I0(i_scb[8]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1177)) 
    \o_scb[6]_INST_0_i_2 
       (.I0(i_scb[10]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [5]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \o_scb[7]_INST_0 
       (.I0(\pscb_gen_tree_i/w_stg_data[2] [3]),
        .I1(\pscb_gen_tree_i/w_stg_data[2] [7]),
        .I2(i_scb[6]),
        .I3(i_dealloc_size[0]),
        .I4(i_scb[7]),
        .O(o_scb[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0157)) 
    \o_scb[7]_INST_0_i_1 
       (.I0(i_scb[9]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h157F)) 
    \o_scb[7]_INST_0_i_2 
       (.I0(i_scb[11]),
        .I1(i_dealloc_addr[1]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[2]),
        .O(\pscb_gen_tree_i/w_stg_data[2] [7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEEEE2222)) 
    \o_scb[8]_INST_0 
       (.I0(i_scb[8]),
        .I1(i_dealloc_addr[2]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[1]),
        .I4(w_rscb[8]),
        .O(o_scb[8]));
  LUT6 #(
    .INIT(64'h303F5F5F303F5050)) 
    \o_scb[8]_INST_0_i_1 
       (.I0(i_scb[10]),
        .I1(i_scb[9]),
        .I2(i_dealloc_size[1]),
        .I3(i_scb[11]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[8]),
        .O(w_rscb[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \o_scb[9]_INST_0 
       (.I0(i_scb[9]),
        .I1(i_dealloc_addr[2]),
        .I2(i_dealloc_addr[0]),
        .I3(i_dealloc_addr[1]),
        .I4(w_rscb[9]),
        .O(o_scb[9]));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \o_scb[9]_INST_0_i_1 
       (.I0(i_scb[11]),
        .I1(i_scb[10]),
        .I2(i_dealloc_size[1]),
        .I3(i_scb[8]),
        .I4(i_dealloc_size[0]),
        .I5(i_scb[9]),
        .O(w_rscb[9]));
endmodule

(* BLOCK_D = "8" *) (* BLOCK_W = "3" *) (* NODES = "4" *) 
(* REP_W = "15" *) (* STAGES = "3" *) (* UDATA_W = "8" *) 
module qpl_deallocator
   (i_clk,
    i_rst,
    i_rep_dealloc_rdy,
    i_req_dealloc_vld,
    i_req_dealloc_data,
    \i_scb[2] ,
    \i_scb[1] ,
    \i_scb[0] ,
    o_scb_wr_en,
    \o_scb[2] ,
    \o_scb[1] ,
    \o_scb[0] ,
    o_dealloc_new_free_ptr,
    o_req_dealloc_rdy,
    o_rep_dealloc_vld,
    o_rep_dealloc_data);
  input i_clk;
  input i_rst;
  input i_rep_dealloc_rdy;
  input i_req_dealloc_vld;
  input [14:0]i_req_dealloc_data;
  input [3:0]\i_scb[2] ;
  input [3:0]\i_scb[1] ;
  input [3:0]\i_scb[0] ;
  output o_scb_wr_en;
  output [3:0]\o_scb[2] ;
  output [3:0]\o_scb[1] ;
  output [3:0]\o_scb[0] ;
  output [3:0]o_dealloc_new_free_ptr;
  output o_req_dealloc_rdy;
  output o_rep_dealloc_vld;
  output [14:0]o_rep_dealloc_data;

  wire i_clk;
  wire i_rep_dealloc_rdy;
  wire [14:0]i_req_dealloc_data;
  wire i_req_dealloc_vld;
  wire i_rst;
  wire [3:0]\i_scb[0] ;
  wire [3:0]\i_scb[1] ;
  wire [3:0]\i_scb[2] ;
  wire [3:0]o_dealloc_new_free_ptr;
  wire [14:0]o_rep_dealloc_data;
  wire o_rep_dealloc_vld;
  wire o_req_dealloc_rdy;
  wire [3:0]\o_scb[0] ;
  wire [3:0]\o_scb[1] ;
  wire [3:0]\o_scb[2] ;
  wire o_scb_wr_en;
  wire [14:0]p_0_in;
  wire [3:0]r_compr_blk_size;
  wire r_dealloc_vld;
  wire r_req_dealloc_rdy_i_1_n_0;
  wire [2:0]w_compr_blk_base;
  wire w_dealloc_vld;

  (* BITMAP = "8" *) 
  (* BLOCK_W = "3" *) 
  (* DONT_TOUCH *) 
  (* MAX_SCB = "12" *) 
  (* NODES = "4" *) 
  (* STAGES = "3" *) 
  qpl_compressor dealloc_compressor_i
       (.i_dealloc_addr(w_compr_blk_base),
        .i_dealloc_size(r_compr_blk_size),
        .i_dealloc_vld(r_dealloc_vld),
        .i_scb({\i_scb[2] ,\i_scb[1] ,\i_scb[0] }),
        .o_scb({\o_scb[2] ,\o_scb[1] ,\o_scb[0] }),
        .o_scb_vld(o_scb_wr_en));
  (* ADDR_W = "3" *) 
  (* BITMAP = "8" *) 
  (* DONT_TOUCH *) 
  (* NODES = "4" *) 
  (* STAGES = "3" *) 
  dec_ptv dealloc_ptv_dec_i
       (.i_clk(i_clk),
        .i_oreg_en(1'b1),
        .i_paddr(i_req_dealloc_data[2:0]),
        .i_rst(i_rst),
        .\i_scb[0] (\i_scb[0] ),
        .\i_scb[1] (\i_scb[1] ),
        .\i_scb[2] (\i_scb[2] ),
        .o_vaddr(w_compr_blk_base));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_dealloc_new_free_ptr[0]_INST_0 
       (.I0(i_rep_dealloc_rdy),
        .I1(i_req_dealloc_vld),
        .I2(i_req_dealloc_data[3]),
        .O(o_dealloc_new_free_ptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_dealloc_new_free_ptr[1]_INST_0 
       (.I0(i_rep_dealloc_rdy),
        .I1(i_req_dealloc_vld),
        .I2(i_req_dealloc_data[4]),
        .O(o_dealloc_new_free_ptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_dealloc_new_free_ptr[2]_INST_0 
       (.I0(i_rep_dealloc_rdy),
        .I1(i_req_dealloc_vld),
        .I2(i_req_dealloc_data[5]),
        .O(o_dealloc_new_free_ptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_dealloc_new_free_ptr[3]_INST_0 
       (.I0(i_rep_dealloc_rdy),
        .I1(i_req_dealloc_vld),
        .I2(i_req_dealloc_data[6]),
        .O(o_dealloc_new_free_ptr[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r_compr_blk_size_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[3]),
        .Q(r_compr_blk_size[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_compr_blk_size_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[4]),
        .Q(r_compr_blk_size[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_compr_blk_size_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[5]),
        .Q(r_compr_blk_size[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_compr_blk_size_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[6]),
        .Q(r_compr_blk_size[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_obj_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_obj_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_obj_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[7]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[8]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[9]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[10]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[11]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[12]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[13]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dealloc_udata_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_req_dealloc_data[14]),
        .Q(p_0_in[14]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    r_dealloc_vld_i_1
       (.I0(i_req_dealloc_vld),
        .I1(i_rep_dealloc_rdy),
        .O(w_dealloc_vld));
  FDRE #(
    .INIT(1'b0)) 
    r_dealloc_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(w_dealloc_vld),
        .Q(r_dealloc_vld),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[0] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[0]),
        .Q(o_rep_dealloc_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[10] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[10]),
        .Q(o_rep_dealloc_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[11] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[11]),
        .Q(o_rep_dealloc_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[12] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[12]),
        .Q(o_rep_dealloc_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[13] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[13]),
        .Q(o_rep_dealloc_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[14] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[14]),
        .Q(o_rep_dealloc_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[1] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[1]),
        .Q(o_rep_dealloc_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[2] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[2]),
        .Q(o_rep_dealloc_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[3] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(r_compr_blk_size[0]),
        .Q(o_rep_dealloc_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[4] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(r_compr_blk_size[1]),
        .Q(o_rep_dealloc_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[5] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(r_compr_blk_size[2]),
        .Q(o_rep_dealloc_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[6] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(r_compr_blk_size[3]),
        .Q(o_rep_dealloc_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[7] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[7]),
        .Q(o_rep_dealloc_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[8] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[8]),
        .Q(o_rep_dealloc_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_rep_dealloc_data_reg[9] 
       (.C(i_clk),
        .CE(r_dealloc_vld),
        .D(p_0_in[9]),
        .Q(o_rep_dealloc_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_rep_dealloc_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_dealloc_vld),
        .Q(o_rep_dealloc_vld),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h51)) 
    r_req_dealloc_rdy_i_1
       (.I0(i_rst),
        .I1(i_req_dealloc_vld),
        .I2(i_rep_dealloc_rdy),
        .O(r_req_dealloc_rdy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_req_dealloc_rdy_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_req_dealloc_rdy_i_1_n_0),
        .Q(o_req_dealloc_rdy),
        .R(1'b0));
endmodule

module qpl_manager
   (D,
    o_rd_data,
    \r_scb_reg[8] ,
    \r_scb_reg[9] ,
    \r_scb_reg[10] ,
    \r_scb_reg[2] ,
    \r_scb_reg[7] ,
    \r_scb_reg[9]_0 ,
    \r_scb_reg[8]_0 ,
    \i_base_user[1][0] ,
    \i_base_user[0][0] ,
    \r_scb_reg[9]_1 ,
    \r_scb_reg[7]_0 ,
    \r_scb_reg[8]_1 ,
    \r_scb_reg[6] ,
    \r_scb_reg[7]_1 ,
    \r_scb_reg[6]_0 ,
    o_req_alloc_rdy,
    o_rep_alloc_vld,
    o_rep_alloc_data,
    o_full,
    o_avail,
    o_req_dealloc_rdy,
    o_rep_dealloc_vld,
    o_rep_dealloc_data,
    \r_paddr_reg[1] ,
    \r_paddr_reg[0] ,
    \r_paddr_reg[2] ,
    \r_paddr_reg[1]_0 ,
    \r_paddr_reg[1]_1 ,
    \r_vaddr_reg[2] ,
    \r_vaddr_reg[2]_0 ,
    \r_paddr_reg[1]_2 ,
    \r_paddr_reg[1]_3 ,
    \r_paddr_reg[2]_0 ,
    \r_paddr_reg[1]_4 ,
    r_vaddr,
    \r_paddr_reg[0]_0 ,
    \r_paddr_reg[0]_1 ,
    \r_paddr_reg[1]_5 ,
    \r_paddr_reg[1]_6 ,
    \r_paddr_reg[1]_7 ,
    \r_paddr_reg[2]_1 ,
    \r_paddr_reg[1]_8 ,
    \r_vaddr_reg[2]_1 ,
    \r_vaddr_reg[2]_2 ,
    \r_paddr_reg[0]_2 ,
    \r_paddr_reg[0]_3 ,
    \r_paddr_reg[0]_4 ,
    i_clk_IBUF_BUFG,
    i_rst_IBUF,
    i_rep_alloc_rdy,
    i_req_alloc_vld,
    i_req_alloc_data,
    i_rep_dealloc_rdy,
    i_req_dealloc_vld,
    i_req_dealloc_data);
  output [2:0]D;
  output [7:0]o_rd_data;
  output \r_scb_reg[8] ;
  output \r_scb_reg[9] ;
  output [2:0]\r_scb_reg[10] ;
  output \r_scb_reg[2] ;
  output \r_scb_reg[7] ;
  output \r_scb_reg[9]_0 ;
  output [2:0]\r_scb_reg[8]_0 ;
  output \i_base_user[1][0] ;
  output \i_base_user[0][0] ;
  output \r_scb_reg[9]_1 ;
  output \r_scb_reg[7]_0 ;
  output \r_scb_reg[8]_1 ;
  output \r_scb_reg[6] ;
  output \r_scb_reg[7]_1 ;
  output \r_scb_reg[6]_0 ;
  output o_req_alloc_rdy;
  output o_rep_alloc_vld;
  output [14:0]o_rep_alloc_data;
  output o_full;
  output [3:0]o_avail;
  output o_req_dealloc_rdy;
  output o_rep_dealloc_vld;
  output [14:0]o_rep_dealloc_data;
  input \r_paddr_reg[1] ;
  input \r_paddr_reg[0] ;
  input \r_paddr_reg[2] ;
  input \r_paddr_reg[1]_0 ;
  input \r_paddr_reg[1]_1 ;
  input \r_vaddr_reg[2] ;
  input \r_vaddr_reg[2]_0 ;
  input \r_paddr_reg[1]_2 ;
  input \r_paddr_reg[1]_3 ;
  input \r_paddr_reg[2]_0 ;
  input \r_paddr_reg[1]_4 ;
  input [0:0]r_vaddr;
  input \r_paddr_reg[0]_0 ;
  input \r_paddr_reg[0]_1 ;
  input \r_paddr_reg[1]_5 ;
  input \r_paddr_reg[1]_6 ;
  input \r_paddr_reg[1]_7 ;
  input \r_paddr_reg[2]_1 ;
  input \r_paddr_reg[1]_8 ;
  input [0:0]\r_vaddr_reg[2]_1 ;
  input [2:0]\r_vaddr_reg[2]_2 ;
  input \r_paddr_reg[0]_2 ;
  input \r_paddr_reg[0]_3 ;
  input \r_paddr_reg[0]_4 ;
  input i_clk_IBUF_BUFG;
  input i_rst_IBUF;
  input i_rep_alloc_rdy;
  input i_req_alloc_vld;
  input [17:0]i_req_alloc_data;
  input i_rep_dealloc_rdy;
  input i_req_dealloc_vld;
  input [14:0]i_req_dealloc_data;

  wire [2:0]D;
  wire \i_base_user[0][0] ;
  wire \i_base_user[1][0] ;
  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy;
  wire i_rep_dealloc_rdy;
  wire [17:0]i_req_alloc_data;
  wire i_req_alloc_vld;
  wire [14:0]i_req_dealloc_data;
  wire i_req_dealloc_vld;
  wire i_rst_IBUF;
  wire [3:0]o_avail;
  wire o_full;
  wire [7:0]o_rd_data;
  wire [14:0]o_rep_alloc_data;
  wire o_rep_alloc_vld;
  wire [14:0]o_rep_dealloc_data;
  wire o_rep_dealloc_vld;
  wire o_req_alloc_rdy;
  wire o_req_dealloc_rdy;
  wire \r_paddr[0]_i_2__0_n_0 ;
  wire \r_paddr[0]_i_2__2_n_0 ;
  wire \r_paddr[0]_i_2_n_0 ;
  wire \r_paddr[1]_i_2__0_n_0 ;
  wire \r_paddr[1]_i_2__2_n_0 ;
  wire \r_paddr[1]_i_3_n_0 ;
  wire \r_paddr[2]_i_2__0_n_0 ;
  wire \r_paddr[2]_i_2__2_n_0 ;
  wire \r_paddr[2]_i_2_n_0 ;
  wire \r_paddr[2]_i_3_n_0 ;
  wire \r_paddr_reg[0] ;
  wire \r_paddr_reg[0]_0 ;
  wire \r_paddr_reg[0]_1 ;
  wire \r_paddr_reg[0]_2 ;
  wire \r_paddr_reg[0]_3 ;
  wire \r_paddr_reg[0]_4 ;
  wire \r_paddr_reg[1] ;
  wire \r_paddr_reg[1]_0 ;
  wire \r_paddr_reg[1]_1 ;
  wire \r_paddr_reg[1]_2 ;
  wire \r_paddr_reg[1]_3 ;
  wire \r_paddr_reg[1]_4 ;
  wire \r_paddr_reg[1]_5 ;
  wire \r_paddr_reg[1]_6 ;
  wire \r_paddr_reg[1]_7 ;
  wire \r_paddr_reg[1]_8 ;
  wire \r_paddr_reg[2] ;
  wire \r_paddr_reg[2]_0 ;
  wire \r_paddr_reg[2]_1 ;
  wire [2:0]\r_scb_reg[10] ;
  wire \r_scb_reg[2] ;
  wire \r_scb_reg[6] ;
  wire \r_scb_reg[6]_0 ;
  wire \r_scb_reg[7] ;
  wire \r_scb_reg[7]_0 ;
  wire \r_scb_reg[7]_1 ;
  wire \r_scb_reg[8] ;
  wire [2:0]\r_scb_reg[8]_0 ;
  wire \r_scb_reg[8]_1 ;
  wire \r_scb_reg[9] ;
  wire \r_scb_reg[9]_0 ;
  wire \r_scb_reg[9]_1 ;
  wire [0:0]r_vaddr;
  wire \r_vaddr[2]_i_5__0_n_0 ;
  wire \r_vaddr[2]_i_5_n_0 ;
  wire \r_vaddr_reg[2] ;
  wire \r_vaddr_reg[2]_0 ;
  wire [0:0]\r_vaddr_reg[2]_1 ;
  wire [2:0]\r_vaddr_reg[2]_2 ;
  wire [3:0]w_dealloc_new_free_ptr;
  wire [3:2]\w_scb[0] ;
  wire [1:0]\w_scb[2] ;
  wire [3:0]\w_scb_wr_data[0]_0 ;
  wire [3:0]\w_scb_wr_data[1]_1 ;
  wire [3:0]\w_scb_wr_data[2]_2 ;
  wire w_scb_wr_en;

  (* BLOCK_D = "8" *) 
  (* BLOCK_W = "3" *) 
  (* DONT_TOUCH *) 
  (* LINE_S = "64" *) 
  (* LINE_W = "6" *) 
  (* NODES = "4" *) 
  (* REP_W = "15" *) 
  (* REQ_S = "512" *) 
  (* REQ_W = "18" *) 
  (* STAGES = "3" *) 
  (* UDATA_W = "8" *) 
  qpl_allocator qpl_alloc_i
       (.i_clk(i_clk_IBUF_BUFG),
        .i_dealloc_new_free_ptr(w_dealloc_new_free_ptr),
        .i_rep_alloc_rdy(i_rep_alloc_rdy),
        .i_req_alloc_data(i_req_alloc_data),
        .i_req_alloc_vld(i_req_alloc_vld),
        .i_rst(i_rst_IBUF),
        .\i_scb[0] ({\w_scb[0] ,o_rd_data[1:0]}),
        .\i_scb[1] (o_rd_data[5:2]),
        .\i_scb[2] ({o_rd_data[7:6],\w_scb[2] }),
        .o_avail(o_avail),
        .o_full(o_full),
        .o_rep_alloc_data(o_rep_alloc_data),
        .o_rep_alloc_vld(o_rep_alloc_vld),
        .o_req_alloc_rdy(o_req_alloc_rdy));
  (* BLOCK_D = "8" *) 
  (* BLOCK_W = "3" *) 
  (* DONT_TOUCH *) 
  (* NODES = "4" *) 
  (* REP_W = "15" *) 
  (* STAGES = "3" *) 
  (* UDATA_W = "8" *) 
  qpl_deallocator qpl_dealloc_i
       (.i_clk(i_clk_IBUF_BUFG),
        .i_rep_dealloc_rdy(i_rep_dealloc_rdy),
        .i_req_dealloc_data(i_req_dealloc_data),
        .i_req_dealloc_vld(i_req_dealloc_vld),
        .i_rst(i_rst_IBUF),
        .\i_scb[0] ({\w_scb[0] ,o_rd_data[1:0]}),
        .\i_scb[1] (o_rd_data[5:2]),
        .\i_scb[2] ({o_rd_data[7:6],\w_scb[2] }),
        .o_dealloc_new_free_ptr(w_dealloc_new_free_ptr),
        .o_rep_dealloc_data(o_rep_dealloc_data),
        .o_rep_dealloc_vld(o_rep_dealloc_vld),
        .o_req_dealloc_rdy(o_req_dealloc_rdy),
        .\o_scb[0] (\w_scb_wr_data[0]_0 ),
        .\o_scb[1] (\w_scb_wr_data[1]_1 ),
        .\o_scb[2] (\w_scb_wr_data[2]_2 ),
        .o_scb_wr_en(w_scb_wr_en));
  (* BLOCK_D = "8" *) 
  (* BLOCK_W = "3" *) 
  (* DATA_W = "12" *) 
  (* DONT_TOUCH *) 
  (* NODES = "4" *) 
  scb_file qpl_scb_file_i
       (.i_clk(i_clk_IBUF_BUFG),
        .i_reset(i_rst_IBUF),
        .i_we(w_scb_wr_en),
        .i_wr_data({\w_scb_wr_data[2]_2 ,\w_scb_wr_data[1]_1 ,\w_scb_wr_data[0]_0 }),
        .o_rd_data({o_rd_data[7:6],\w_scb[2] ,o_rd_data[5:2],\w_scb[0] ,o_rd_data[1:0]}));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[0]_i_1 
       (.I0(\r_paddr_reg[0] ),
        .I1(\r_paddr[0]_i_2_n_0 ),
        .I2(\r_paddr[2]_i_2_n_0 ),
        .I3(o_rd_data[1]),
        .I4(\r_paddr_reg[0]_2 ),
        .I5(o_rd_data[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[0]_i_1__0 
       (.I0(\r_paddr_reg[1]_3 ),
        .I1(\r_paddr[0]_i_2__0_n_0 ),
        .I2(\r_scb_reg[10] [2]),
        .I3(\w_scb[0] [3]),
        .I4(\r_paddr_reg[0]_3 ),
        .I5(\w_scb[0] [2]),
        .O(\r_scb_reg[10] [0]));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[0]_i_1__2 
       (.I0(\r_paddr_reg[1]_7 ),
        .I1(\r_paddr[0]_i_2__2_n_0 ),
        .I2(\r_scb_reg[8]_0 [2]),
        .I3(\w_scb[0] [3]),
        .I4(\r_paddr_reg[0]_4 ),
        .I5(\w_scb[0] [2]),
        .O(\r_scb_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h44411141777DDD7D)) 
    \r_paddr[0]_i_2 
       (.I0(\w_scb[0] [2]),
        .I1(\r_paddr_reg[1] ),
        .I2(o_rd_data[4]),
        .I3(\r_paddr_reg[0] ),
        .I4(o_rd_data[5]),
        .I5(\w_scb[0] [3]),
        .O(\r_paddr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44411141777DDD7D)) 
    \r_paddr[0]_i_2__0 
       (.I0(o_rd_data[0]),
        .I1(\r_paddr_reg[1]_2 ),
        .I2(o_rd_data[2]),
        .I3(\r_paddr_reg[1]_3 ),
        .I4(o_rd_data[3]),
        .I5(o_rd_data[1]),
        .O(\r_paddr[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h44411141777DDD7D)) 
    \r_paddr[0]_i_2__1 
       (.I0(\w_scb[0] [2]),
        .I1(\r_paddr_reg[0]_0 ),
        .I2(o_rd_data[4]),
        .I3(\r_paddr_reg[0]_1 ),
        .I4(o_rd_data[5]),
        .I5(\w_scb[0] [3]),
        .O(\r_scb_reg[2] ));
  LUT6 #(
    .INIT(64'h11144414DDD777D7)) 
    \r_paddr[0]_i_2__2 
       (.I0(o_rd_data[0]),
        .I1(\r_paddr_reg[1]_6 ),
        .I2(o_rd_data[2]),
        .I3(\r_paddr_reg[1]_7 ),
        .I4(o_rd_data[3]),
        .I5(o_rd_data[1]),
        .O(\r_paddr[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A6565656A656)) 
    \r_paddr[1]_i_1 
       (.I0(\r_paddr_reg[1]_6 ),
        .I1(\r_paddr[1]_i_2__2_n_0 ),
        .I2(\r_scb_reg[8]_0 [2]),
        .I3(o_rd_data[4]),
        .I4(\r_paddr_reg[1]_7 ),
        .I5(o_rd_data[5]),
        .O(\r_scb_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[1]_i_1__0 
       (.I0(\r_paddr_reg[1] ),
        .I1(\r_paddr[1]_i_3_n_0 ),
        .I2(\r_paddr[2]_i_2_n_0 ),
        .I3(o_rd_data[2]),
        .I4(\r_paddr_reg[0] ),
        .I5(o_rd_data[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h595959A9A9A959A9)) 
    \r_paddr[1]_i_1__1 
       (.I0(\r_paddr_reg[1]_2 ),
        .I1(\r_paddr[1]_i_2__0_n_0 ),
        .I2(\r_scb_reg[10] [2]),
        .I3(o_rd_data[4]),
        .I4(\r_paddr_reg[1]_3 ),
        .I5(o_rd_data[5]),
        .O(\r_scb_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \r_paddr[1]_i_2__0 
       (.I0(o_rd_data[3]),
        .I1(\r_paddr_reg[1]_4 ),
        .I2(r_vaddr),
        .I3(o_rd_data[2]),
        .O(\r_paddr[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \r_paddr[1]_i_2__2 
       (.I0(o_rd_data[3]),
        .I1(r_vaddr),
        .I2(\r_paddr_reg[1]_8 ),
        .I3(o_rd_data[2]),
        .O(\r_paddr[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \r_paddr[1]_i_3 
       (.I0(o_rd_data[5]),
        .I1(\r_paddr_reg[1]_0 ),
        .I2(\r_paddr_reg[1]_1 ),
        .I3(o_rd_data[4]),
        .O(\r_paddr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \r_paddr[1]_i_3__0 
       (.I0(o_rd_data[5]),
        .I1(\r_paddr_reg[1]_1 ),
        .I2(\r_paddr_reg[1]_5 ),
        .I3(o_rd_data[4]),
        .O(\r_scb_reg[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_paddr[2]_i_1 
       (.I0(\r_paddr[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \r_paddr[2]_i_1__0 
       (.I0(\r_paddr[2]_i_2__0_n_0 ),
        .I1(\r_paddr_reg[1]_2 ),
        .I2(o_rd_data[6]),
        .I3(\r_paddr_reg[1]_3 ),
        .I4(o_rd_data[7]),
        .I5(\r_paddr_reg[2]_0 ),
        .O(\r_scb_reg[10] [2]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \r_paddr[2]_i_1__2 
       (.I0(\r_paddr[2]_i_2__2_n_0 ),
        .I1(\r_paddr_reg[1]_6 ),
        .I2(\w_scb[2] [0]),
        .I3(\r_paddr_reg[1]_7 ),
        .I4(\w_scb[2] [1]),
        .I5(\r_paddr_reg[2]_1 ),
        .O(\r_scb_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'hDDD111D1222EEE2E)) 
    \r_paddr[2]_i_2 
       (.I0(\r_paddr[2]_i_3_n_0 ),
        .I1(\r_paddr_reg[1] ),
        .I2(o_rd_data[6]),
        .I3(\r_paddr_reg[0] ),
        .I4(o_rd_data[7]),
        .I5(\r_paddr_reg[2] ),
        .O(\r_paddr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \r_paddr[2]_i_2__0 
       (.I0(\w_scb[2] [1]),
        .I1(\r_paddr_reg[1]_4 ),
        .I2(r_vaddr),
        .I3(\w_scb[2] [0]),
        .O(\r_paddr[2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \r_paddr[2]_i_2__2 
       (.I0(o_rd_data[7]),
        .I1(r_vaddr),
        .I2(\r_paddr_reg[1]_8 ),
        .I3(o_rd_data[6]),
        .O(\r_paddr[2]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \r_paddr[2]_i_3 
       (.I0(\w_scb[2] [1]),
        .I1(\r_paddr_reg[1]_0 ),
        .I2(\r_paddr_reg[1]_1 ),
        .I3(\w_scb[2] [0]),
        .O(\r_paddr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \r_paddr[2]_i_4__1 
       (.I0(\w_scb[2] [1]),
        .I1(\r_paddr_reg[1]_1 ),
        .I2(\r_paddr_reg[1]_5 ),
        .I3(\w_scb[2] [0]),
        .O(\r_scb_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_vaddr[1]_i_2 
       (.I0(o_rd_data[5]),
        .I1(\r_vaddr_reg[2]_2 [2]),
        .I2(o_rd_data[3]),
        .O(\r_scb_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_vaddr[1]_i_2__0 
       (.I0(o_rd_data[5]),
        .I1(\r_vaddr_reg[2]_0 ),
        .I2(o_rd_data[3]),
        .O(\r_scb_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_vaddr[1]_i_3 
       (.I0(o_rd_data[4]),
        .I1(\r_vaddr_reg[2]_2 [2]),
        .I2(o_rd_data[2]),
        .O(\r_scb_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_vaddr[1]_i_3__0 
       (.I0(o_rd_data[4]),
        .I1(\r_vaddr_reg[2]_0 ),
        .I2(o_rd_data[2]),
        .O(\r_scb_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h44411141777DDD7D)) 
    \r_vaddr[2]_i_2 
       (.I0(\w_scb[2] [1]),
        .I1(\r_vaddr_reg[2] ),
        .I2(o_rd_data[3]),
        .I3(\r_vaddr_reg[2]_0 ),
        .I4(o_rd_data[5]),
        .I5(o_rd_data[7]),
        .O(\r_scb_reg[9] ));
  LUT6 #(
    .INIT(64'hBBBEEEBE88822282)) 
    \r_vaddr[2]_i_2__0 
       (.I0(\w_scb[2] [1]),
        .I1(\r_vaddr_reg[2]_2 [1]),
        .I2(o_rd_data[3]),
        .I3(\r_vaddr_reg[2]_2 [2]),
        .I4(o_rd_data[5]),
        .I5(o_rd_data[7]),
        .O(\r_scb_reg[9]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_vaddr[2]_i_3 
       (.I0(\r_vaddr_reg[2]_1 ),
        .I1(\r_vaddr[2]_i_5_n_0 ),
        .O(\i_base_user[1][0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_vaddr[2]_i_3__0 
       (.I0(\r_vaddr_reg[2]_2 [0]),
        .I1(\r_vaddr[2]_i_5__0_n_0 ),
        .O(\i_base_user[0][0] ));
  LUT6 #(
    .INIT(64'h44411141777DDD7D)) 
    \r_vaddr[2]_i_4 
       (.I0(\w_scb[2] [0]),
        .I1(\r_vaddr_reg[2] ),
        .I2(o_rd_data[2]),
        .I3(\r_vaddr_reg[2]_0 ),
        .I4(o_rd_data[4]),
        .I5(o_rd_data[6]),
        .O(\r_scb_reg[8] ));
  LUT6 #(
    .INIT(64'hBBBEEEBE88822282)) 
    \r_vaddr[2]_i_4__0 
       (.I0(\w_scb[2] [0]),
        .I1(\r_vaddr_reg[2]_2 [1]),
        .I2(o_rd_data[2]),
        .I3(\r_vaddr_reg[2]_2 [2]),
        .I4(o_rd_data[4]),
        .I5(o_rd_data[6]),
        .O(\r_scb_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \r_vaddr[2]_i_5 
       (.I0(\w_scb[0] [3]),
        .I1(\w_scb[0] [2]),
        .I2(\r_vaddr_reg[2]_0 ),
        .I3(o_rd_data[1]),
        .I4(\r_vaddr_reg[2] ),
        .I5(o_rd_data[0]),
        .O(\r_vaddr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \r_vaddr[2]_i_5__0 
       (.I0(\w_scb[0] [3]),
        .I1(\w_scb[0] [2]),
        .I2(\r_vaddr_reg[2]_2 [2]),
        .I3(o_rd_data[1]),
        .I4(\r_vaddr_reg[2]_2 [1]),
        .I5(o_rd_data[0]),
        .O(\r_vaddr[2]_i_5__0_n_0 ));
endmodule

(* BLOCK_D = "8" *) (* BLOCK_W = "3" *) (* BUF_D = "7" *) 
(* BUF_OREG_EN = "1" *) (* CHANS = "2" *) (* DUAL_PORT = "1" *) 
(* LINE_BYTE = "64" *) (* LINE_W = "6" *) (* LINE_WORD = "16" *) 
(* MEM_OREG_EN = "1" *) (* NODES = "4" *) (* PADDR_W = "7" *) 
(* REP_W = "15" *) (* REQ_S = "512" *) (* REQ_W = "18" *) 
(* STAGES = "3" *) (* TBUF_OREG_EN = "0" *) (* UDATA_W = "8" *) 
(* VADDR_W = "7" *) (* WORD_W = "4" *) (* dont_touch = "yes" *) 
(* NotValidForBitStream *)
module qpl_top
   (i_clk,
    i_rst,
    i_req_alloc_vld,
    i_req_alloc_data,
    o_req_alloc_rdy,
    i_req_dealloc_vld,
    i_req_dealloc_data,
    o_req_dealloc_rdy,
    i_rep_alloc_rdy,
    o_rep_alloc_vld,
    o_rep_alloc_data,
    i_rep_dealloc_rdy,
    o_rep_dealloc_vld,
    o_rep_dealloc_data,
    i_aux_vld,
    \i_aux_data[1] ,
    \i_aux_data[0] ,
    \i_aux_user[1] ,
    \i_aux_user[0] ,
    i_aux_last,
    o_aux_rdy,
    i_base_vld,
    \i_base_data[1] ,
    \i_base_data[0] ,
    \i_base_user[1] ,
    \i_base_user[0] ,
    i_base_last,
    o_base_rdy,
    o_blk_full,
    o_blk_avail,
    o_blk_aux_we,
    o_blk_base_we,
    \o_blk_aux_addr[1] ,
    \o_blk_aux_addr[0] ,
    \o_blk_base_addr[1] ,
    \o_blk_base_addr[0] );
  input i_clk;
  input i_rst;
  input i_req_alloc_vld;
  input [17:0]i_req_alloc_data;
  output o_req_alloc_rdy;
  input i_req_dealloc_vld;
  input [14:0]i_req_dealloc_data;
  output o_req_dealloc_rdy;
  input i_rep_alloc_rdy;
  output o_rep_alloc_vld;
  output [14:0]o_rep_alloc_data;
  input i_rep_dealloc_rdy;
  output o_rep_dealloc_vld;
  output [14:0]o_rep_dealloc_data;
  input [1:0]i_aux_vld;
  input [6:0]\i_aux_data[1] ;
  input [6:0]\i_aux_data[0] ;
  input [2:0]\i_aux_user[1] ;
  input [2:0]\i_aux_user[0] ;
  input [1:0]i_aux_last;
  output [1:0]o_aux_rdy;
  input [1:0]i_base_vld;
  input [6:0]\i_base_data[1] ;
  input [6:0]\i_base_data[0] ;
  input [2:0]\i_base_user[1] ;
  input [2:0]\i_base_user[0] ;
  input [1:0]i_base_last;
  output [1:0]o_base_rdy;
  output o_blk_full;
  output [3:0]o_blk_avail;
  output [1:0]o_blk_aux_we;
  output [1:0]o_blk_base_we;
  output [6:0]\o_blk_aux_addr[1] ;
  output [6:0]\o_blk_aux_addr[0] ;
  output [6:0]\o_blk_base_addr[1] ;
  output [6:0]\o_blk_base_addr[0] ;

  wire [2:1]\gen_trans_chan[0].base_Taddr_i/trans_rd_vtp_dec_i/w_paddr ;
  wire [2:2]\gen_trans_chan[0].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ;
  wire [2:2]\gen_trans_chan[1].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ;
  wire [6:0]\i_aux_data[0] ;
  wire [6:0]\i_aux_data[1] ;
  wire [1:0]i_aux_last;
  wire [1:0]i_aux_last_IBUF;
  wire [1:0]i_aux_vld;
  wire [1:0]i_aux_vld_IBUF;
  wire [6:0]\i_base_data[0] ;
  wire [6:0]\i_base_data[1] ;
  wire [1:0]i_base_last;
  wire [1:0]i_base_last_IBUF;
  wire [2:0]\i_base_user[0] ;
  wire [2:0]\i_base_user[1] ;
  wire [1:0]i_base_vld;
  wire [1:0]i_base_vld_IBUF;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy;
  wire i_rep_alloc_rdy_IBUF;
  wire i_rep_dealloc_rdy;
  wire i_rep_dealloc_rdy_IBUF;
  wire [17:0]i_req_alloc_data;
  wire [17:0]i_req_alloc_data_IBUF;
  wire i_req_alloc_vld;
  wire i_req_alloc_vld_IBUF;
  wire [14:0]i_req_dealloc_data;
  wire [14:0]i_req_dealloc_data_IBUF;
  wire i_req_dealloc_vld;
  wire i_req_dealloc_vld_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire manager_i_n_1;
  wire manager_i_n_11;
  wire manager_i_n_12;
  wire manager_i_n_14;
  wire manager_i_n_15;
  wire manager_i_n_16;
  wire manager_i_n_17;
  wire manager_i_n_18;
  wire manager_i_n_2;
  wire manager_i_n_21;
  wire manager_i_n_22;
  wire manager_i_n_23;
  wire manager_i_n_24;
  wire manager_i_n_25;
  wire manager_i_n_26;
  wire manager_i_n_27;
  wire manager_i_n_28;
  wire manager_i_n_29;
  wire [1:0]o_aux_rdy;
  wire [1:0]o_base_rdy;
  wire [6:0]\o_blk_aux_addr[0] ;
  wire [6:0]\o_blk_aux_addr[0]_OBUF ;
  wire [6:0]\o_blk_aux_addr[1] ;
  wire [6:0]\o_blk_aux_addr[1]_OBUF ;
  wire [1:0]o_blk_aux_we;
  wire [1:0]o_blk_aux_we_OBUF;
  wire [3:0]o_blk_avail;
  wire [3:0]o_blk_avail_OBUF;
  wire [6:0]\o_blk_base_addr[0] ;
  wire [6:0]\o_blk_base_addr[0]_OBUF ;
  wire [6:0]\o_blk_base_addr[1] ;
  wire [6:0]\o_blk_base_addr[1]_OBUF ;
  wire [1:0]o_blk_base_we;
  wire [1:0]o_blk_base_we_OBUF;
  wire o_blk_full;
  wire o_blk_full_OBUF;
  wire [14:0]o_rep_alloc_data;
  wire [14:0]o_rep_alloc_data_OBUF;
  wire o_rep_alloc_vld;
  wire o_rep_alloc_vld_OBUF;
  wire [14:0]o_rep_dealloc_data;
  wire [14:0]o_rep_dealloc_data_OBUF;
  wire o_rep_dealloc_vld;
  wire o_rep_dealloc_vld_OBUF;
  wire o_req_alloc_rdy;
  wire o_req_alloc_rdy_OBUF;
  wire o_req_dealloc_rdy;
  wire o_req_dealloc_rdy_OBUF;
  wire \r_paddr_reg[1]_i_5__0_n_0 ;
  wire \r_paddr_reg[1]_i_5_n_0 ;
  wire \r_paddr_reg[1]_i_6__0_n_0 ;
  wire \r_paddr_reg[1]_i_6_n_0 ;
  wire \r_paddr_reg[2]_i_5__0_n_0 ;
  wire \r_paddr_reg[2]_i_5_n_0 ;
  wire \r_paddr_reg[2]_i_6__0_n_0 ;
  wire \r_paddr_reg[2]_i_6_n_0 ;
  wire \r_paddr_reg[2]_i_7__0_n_0 ;
  wire \r_paddr_reg[2]_i_7_n_0 ;
  wire \r_paddr_reg[2]_i_8__0_n_0 ;
  wire \r_paddr_reg[2]_i_8_n_0 ;
  wire \r_paddr_word_reg[0]_i_1__0_n_0 ;
  wire \r_paddr_word_reg[0]_i_1__1_n_0 ;
  wire \r_paddr_word_reg[0]_i_1__2_n_0 ;
  wire \r_paddr_word_reg[0]_i_1_n_0 ;
  wire \r_paddr_word_reg[1]_i_1__0_n_0 ;
  wire \r_paddr_word_reg[1]_i_1__1_n_0 ;
  wire \r_paddr_word_reg[1]_i_1__2_n_0 ;
  wire \r_paddr_word_reg[1]_i_1_n_0 ;
  wire \r_paddr_word_reg[2]_i_1__0_n_0 ;
  wire \r_paddr_word_reg[2]_i_1__1_n_0 ;
  wire \r_paddr_word_reg[2]_i_1__2_n_0 ;
  wire \r_paddr_word_reg[2]_i_1_n_0 ;
  wire \r_paddr_word_reg[3]_i_1__0_n_0 ;
  wire \r_paddr_word_reg[3]_i_1__1_n_0 ;
  wire \r_paddr_word_reg[3]_i_1__2_n_0 ;
  wire \r_paddr_word_reg[3]_i_1_n_0 ;
  wire [0:0]r_vaddr;
  wire \r_vaddr_base_reg[0]_i_1__0_n_0 ;
  wire \r_vaddr_base_reg[0]_i_1_n_0 ;
  wire \r_vaddr_base_reg[1]_i_1__0_n_0 ;
  wire \r_vaddr_base_reg[1]_i_1_n_0 ;
  wire \r_vaddr_base_reg[2]_i_1__0_n_0 ;
  wire \r_vaddr_base_reg[2]_i_1_n_0 ;
  wire transactor_i_n_11;
  wire transactor_i_n_12;
  wire transactor_i_n_13;
  wire transactor_i_n_14;
  wire transactor_i_n_15;
  wire transactor_i_n_16;
  wire transactor_i_n_17;
  wire transactor_i_n_18;
  wire transactor_i_n_19;
  wire transactor_i_n_4;
  wire transactor_i_n_5;
  wire transactor_i_n_6;
  wire transactor_i_n_7;
  wire transactor_i_n_8;
  wire transactor_i_n_9;
  wire [14:0]w_rep_alloc_strm_data;
  wire w_rep_alloc_strm_rdy;
  wire w_rep_alloc_strm_vld;
  wire [14:0]w_rep_dealloc_strm_data;
  wire w_rep_dealloc_strm_rdy;
  wire w_rep_dealloc_strm_vld;
  wire [17:0]w_req_alloc_strm_data;
  wire w_req_alloc_strm_rdy;
  wire w_req_alloc_strm_vld;
  wire [14:0]w_req_dealloc_strm_data;
  wire w_req_dealloc_strm_rdy;
  wire w_req_dealloc_strm_vld;
  wire [1:0]\w_scb[0] ;
  wire [3:0]\w_scb[1] ;
  wire [3:2]\w_scb[2] ;

  IBUF \i_aux_last_IBUF[0]_inst 
       (.I(i_aux_last[0]),
        .O(i_aux_last_IBUF[0]));
  IBUF \i_aux_last_IBUF[1]_inst 
       (.I(i_aux_last[1]),
        .O(i_aux_last_IBUF[1]));
  IBUF \i_aux_vld_IBUF[0]_inst 
       (.I(i_aux_vld[0]),
        .O(i_aux_vld_IBUF[0]));
  IBUF \i_aux_vld_IBUF[1]_inst 
       (.I(i_aux_vld[1]),
        .O(i_aux_vld_IBUF[1]));
  IBUF \i_base_last_IBUF[0]_inst 
       (.I(i_base_last[0]),
        .O(i_base_last_IBUF[0]));
  IBUF \i_base_last_IBUF[1]_inst 
       (.I(i_base_last[1]),
        .O(i_base_last_IBUF[1]));
  IBUF \i_base_vld_IBUF[0]_inst 
       (.I(i_base_vld[0]),
        .O(i_base_vld_IBUF[0]));
  IBUF \i_base_vld_IBUF[1]_inst 
       (.I(i_base_vld[1]),
        .O(i_base_vld_IBUF[1]));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF i_rep_alloc_rdy_IBUF_inst
       (.I(i_rep_alloc_rdy),
        .O(i_rep_alloc_rdy_IBUF));
  IBUF i_rep_dealloc_rdy_IBUF_inst
       (.I(i_rep_dealloc_rdy),
        .O(i_rep_dealloc_rdy_IBUF));
  IBUF \i_req_alloc_data_IBUF[0]_inst 
       (.I(i_req_alloc_data[0]),
        .O(i_req_alloc_data_IBUF[0]));
  IBUF \i_req_alloc_data_IBUF[10]_inst 
       (.I(i_req_alloc_data[10]),
        .O(i_req_alloc_data_IBUF[10]));
  IBUF \i_req_alloc_data_IBUF[11]_inst 
       (.I(i_req_alloc_data[11]),
        .O(i_req_alloc_data_IBUF[11]));
  IBUF \i_req_alloc_data_IBUF[12]_inst 
       (.I(i_req_alloc_data[12]),
        .O(i_req_alloc_data_IBUF[12]));
  IBUF \i_req_alloc_data_IBUF[13]_inst 
       (.I(i_req_alloc_data[13]),
        .O(i_req_alloc_data_IBUF[13]));
  IBUF \i_req_alloc_data_IBUF[14]_inst 
       (.I(i_req_alloc_data[14]),
        .O(i_req_alloc_data_IBUF[14]));
  IBUF \i_req_alloc_data_IBUF[15]_inst 
       (.I(i_req_alloc_data[15]),
        .O(i_req_alloc_data_IBUF[15]));
  IBUF \i_req_alloc_data_IBUF[16]_inst 
       (.I(i_req_alloc_data[16]),
        .O(i_req_alloc_data_IBUF[16]));
  IBUF \i_req_alloc_data_IBUF[17]_inst 
       (.I(i_req_alloc_data[17]),
        .O(i_req_alloc_data_IBUF[17]));
  IBUF \i_req_alloc_data_IBUF[1]_inst 
       (.I(i_req_alloc_data[1]),
        .O(i_req_alloc_data_IBUF[1]));
  IBUF \i_req_alloc_data_IBUF[2]_inst 
       (.I(i_req_alloc_data[2]),
        .O(i_req_alloc_data_IBUF[2]));
  IBUF \i_req_alloc_data_IBUF[3]_inst 
       (.I(i_req_alloc_data[3]),
        .O(i_req_alloc_data_IBUF[3]));
  IBUF \i_req_alloc_data_IBUF[4]_inst 
       (.I(i_req_alloc_data[4]),
        .O(i_req_alloc_data_IBUF[4]));
  IBUF \i_req_alloc_data_IBUF[5]_inst 
       (.I(i_req_alloc_data[5]),
        .O(i_req_alloc_data_IBUF[5]));
  IBUF \i_req_alloc_data_IBUF[6]_inst 
       (.I(i_req_alloc_data[6]),
        .O(i_req_alloc_data_IBUF[6]));
  IBUF \i_req_alloc_data_IBUF[7]_inst 
       (.I(i_req_alloc_data[7]),
        .O(i_req_alloc_data_IBUF[7]));
  IBUF \i_req_alloc_data_IBUF[8]_inst 
       (.I(i_req_alloc_data[8]),
        .O(i_req_alloc_data_IBUF[8]));
  IBUF \i_req_alloc_data_IBUF[9]_inst 
       (.I(i_req_alloc_data[9]),
        .O(i_req_alloc_data_IBUF[9]));
  IBUF i_req_alloc_vld_IBUF_inst
       (.I(i_req_alloc_vld),
        .O(i_req_alloc_vld_IBUF));
  IBUF \i_req_dealloc_data_IBUF[0]_inst 
       (.I(i_req_dealloc_data[0]),
        .O(i_req_dealloc_data_IBUF[0]));
  IBUF \i_req_dealloc_data_IBUF[10]_inst 
       (.I(i_req_dealloc_data[10]),
        .O(i_req_dealloc_data_IBUF[10]));
  IBUF \i_req_dealloc_data_IBUF[11]_inst 
       (.I(i_req_dealloc_data[11]),
        .O(i_req_dealloc_data_IBUF[11]));
  IBUF \i_req_dealloc_data_IBUF[12]_inst 
       (.I(i_req_dealloc_data[12]),
        .O(i_req_dealloc_data_IBUF[12]));
  IBUF \i_req_dealloc_data_IBUF[13]_inst 
       (.I(i_req_dealloc_data[13]),
        .O(i_req_dealloc_data_IBUF[13]));
  IBUF \i_req_dealloc_data_IBUF[14]_inst 
       (.I(i_req_dealloc_data[14]),
        .O(i_req_dealloc_data_IBUF[14]));
  IBUF \i_req_dealloc_data_IBUF[1]_inst 
       (.I(i_req_dealloc_data[1]),
        .O(i_req_dealloc_data_IBUF[1]));
  IBUF \i_req_dealloc_data_IBUF[2]_inst 
       (.I(i_req_dealloc_data[2]),
        .O(i_req_dealloc_data_IBUF[2]));
  IBUF \i_req_dealloc_data_IBUF[3]_inst 
       (.I(i_req_dealloc_data[3]),
        .O(i_req_dealloc_data_IBUF[3]));
  IBUF \i_req_dealloc_data_IBUF[4]_inst 
       (.I(i_req_dealloc_data[4]),
        .O(i_req_dealloc_data_IBUF[4]));
  IBUF \i_req_dealloc_data_IBUF[5]_inst 
       (.I(i_req_dealloc_data[5]),
        .O(i_req_dealloc_data_IBUF[5]));
  IBUF \i_req_dealloc_data_IBUF[6]_inst 
       (.I(i_req_dealloc_data[6]),
        .O(i_req_dealloc_data_IBUF[6]));
  IBUF \i_req_dealloc_data_IBUF[7]_inst 
       (.I(i_req_dealloc_data[7]),
        .O(i_req_dealloc_data_IBUF[7]));
  IBUF \i_req_dealloc_data_IBUF[8]_inst 
       (.I(i_req_dealloc_data[8]),
        .O(i_req_dealloc_data_IBUF[8]));
  IBUF \i_req_dealloc_data_IBUF[9]_inst 
       (.I(i_req_dealloc_data[9]),
        .O(i_req_dealloc_data_IBUF[9]));
  IBUF i_req_dealloc_vld_IBUF_inst
       (.I(i_req_dealloc_vld),
        .O(i_req_dealloc_vld_IBUF));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  manager_channel man_chan_i
       (.D(i_req_alloc_data_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_alloc_rdy_IBUF(i_rep_alloc_rdy_IBUF),
        .i_rep_dealloc_rdy_IBUF(i_rep_dealloc_rdy_IBUF),
        .i_req_alloc_data(w_req_alloc_strm_data),
        .i_req_alloc_vld(w_req_alloc_strm_vld),
        .i_req_alloc_vld_IBUF(i_req_alloc_vld_IBUF),
        .i_req_dealloc_data(w_req_dealloc_strm_data),
        .i_req_dealloc_vld(w_req_dealloc_strm_vld),
        .i_req_dealloc_vld_IBUF(i_req_dealloc_vld_IBUF),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rep_alloc_data(w_rep_alloc_strm_data),
        .o_rep_alloc_data_OBUF(o_rep_alloc_data_OBUF),
        .o_rep_alloc_vld(w_rep_alloc_strm_vld),
        .o_rep_alloc_vld_OBUF(o_rep_alloc_vld_OBUF),
        .o_rep_dealloc_data(w_rep_dealloc_strm_data),
        .o_rep_dealloc_data_OBUF(o_rep_dealloc_data_OBUF),
        .o_rep_dealloc_vld(w_rep_dealloc_strm_vld),
        .o_rep_dealloc_vld_OBUF(o_rep_dealloc_vld_OBUF),
        .o_req_alloc_rdy(w_req_alloc_strm_rdy),
        .o_req_alloc_rdy_OBUF(o_req_alloc_rdy_OBUF),
        .o_req_dealloc_rdy(w_req_dealloc_strm_rdy),
        .o_req_dealloc_rdy_OBUF(o_req_dealloc_rdy_OBUF),
        .\r_data_buf_reg[6][14] (i_req_dealloc_data_IBUF),
        .w_rep_alloc_strm_rdy(w_rep_alloc_strm_rdy),
        .w_rep_dealloc_strm_rdy(w_rep_dealloc_strm_rdy));
  qpl_manager manager_i
       (.D({\gen_trans_chan[1].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_1,manager_i_n_2}),
        .\i_base_user[0][0] (manager_i_n_23),
        .\i_base_user[1][0] (manager_i_n_22),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rep_alloc_rdy(w_rep_alloc_strm_rdy),
        .i_rep_dealloc_rdy(w_rep_dealloc_strm_rdy),
        .i_req_alloc_data(w_req_alloc_strm_data),
        .i_req_alloc_vld(w_req_alloc_strm_vld),
        .i_req_dealloc_data(w_req_dealloc_strm_data),
        .i_req_dealloc_vld(w_req_dealloc_strm_vld),
        .i_rst_IBUF(i_rst_IBUF),
        .o_avail(o_blk_avail_OBUF),
        .o_full(o_blk_full_OBUF),
        .o_rd_data({\w_scb[2] ,\w_scb[1] ,\w_scb[0] }),
        .o_rep_alloc_data(w_rep_alloc_strm_data),
        .o_rep_alloc_vld(w_rep_alloc_strm_vld),
        .o_rep_dealloc_data(w_rep_dealloc_strm_data),
        .o_rep_dealloc_vld(w_rep_dealloc_strm_vld),
        .o_req_alloc_rdy(w_req_alloc_strm_rdy),
        .o_req_dealloc_rdy(w_req_dealloc_strm_rdy),
        .\r_paddr_reg[0] (transactor_i_n_8),
        .\r_paddr_reg[0]_0 (transactor_i_n_14),
        .\r_paddr_reg[0]_1 (transactor_i_n_15),
        .\r_paddr_reg[0]_2 (transactor_i_n_6),
        .\r_paddr_reg[0]_3 (transactor_i_n_11),
        .\r_paddr_reg[0]_4 (transactor_i_n_17),
        .\r_paddr_reg[1] (transactor_i_n_7),
        .\r_paddr_reg[1]_0 (\r_paddr_reg[1]_i_5_n_0 ),
        .\r_paddr_reg[1]_1 (transactor_i_n_5),
        .\r_paddr_reg[1]_2 (transactor_i_n_12),
        .\r_paddr_reg[1]_3 (transactor_i_n_13),
        .\r_paddr_reg[1]_4 (\r_paddr_reg[2]_i_6_n_0 ),
        .\r_paddr_reg[1]_5 (\r_paddr_reg[1]_i_5__0_n_0 ),
        .\r_paddr_reg[1]_6 (transactor_i_n_19),
        .\r_paddr_reg[1]_7 (transactor_i_n_18),
        .\r_paddr_reg[1]_8 (\r_paddr_reg[2]_i_6__0_n_0 ),
        .\r_paddr_reg[2] (transactor_i_n_4),
        .\r_paddr_reg[2]_0 (transactor_i_n_9),
        .\r_paddr_reg[2]_1 (transactor_i_n_16),
        .\r_scb_reg[10] ({\gen_trans_chan[0].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_14,manager_i_n_15}),
        .\r_scb_reg[2] (manager_i_n_16),
        .\r_scb_reg[6] (manager_i_n_27),
        .\r_scb_reg[6]_0 (manager_i_n_29),
        .\r_scb_reg[7] (manager_i_n_17),
        .\r_scb_reg[7]_0 (manager_i_n_25),
        .\r_scb_reg[7]_1 (manager_i_n_28),
        .\r_scb_reg[8] (manager_i_n_11),
        .\r_scb_reg[8]_0 ({\gen_trans_chan[0].base_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_21}),
        .\r_scb_reg[8]_1 (manager_i_n_26),
        .\r_scb_reg[9] (manager_i_n_12),
        .\r_scb_reg[9]_0 (manager_i_n_18),
        .\r_scb_reg[9]_1 (manager_i_n_24),
        .r_vaddr(r_vaddr),
        .\r_vaddr_reg[2] (\r_vaddr_base_reg[1]_i_1_n_0 ),
        .\r_vaddr_reg[2]_0 (\r_vaddr_base_reg[2]_i_1_n_0 ),
        .\r_vaddr_reg[2]_1 (\r_vaddr_base_reg[0]_i_1_n_0 ),
        .\r_vaddr_reg[2]_2 ({\r_vaddr_base_reg[2]_i_1__0_n_0 ,\r_vaddr_base_reg[1]_i_1__0_n_0 ,\r_vaddr_base_reg[0]_i_1__0_n_0 }));
  OBUF \o_aux_rdy_OBUF[0]_inst 
       (.I(1'b1),
        .O(o_aux_rdy[0]));
  OBUF \o_aux_rdy_OBUF[1]_inst 
       (.I(1'b1),
        .O(o_aux_rdy[1]));
  OBUF \o_base_rdy_OBUF[0]_inst 
       (.I(1'b1),
        .O(o_base_rdy[0]));
  OBUF \o_base_rdy_OBUF[1]_inst 
       (.I(1'b1),
        .O(o_base_rdy[1]));
  OBUF \o_blk_aux_addr[0][0]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [0]),
        .O(\o_blk_aux_addr[0] [0]));
  OBUF \o_blk_aux_addr[0][1]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [1]),
        .O(\o_blk_aux_addr[0] [1]));
  OBUF \o_blk_aux_addr[0][2]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [2]),
        .O(\o_blk_aux_addr[0] [2]));
  OBUF \o_blk_aux_addr[0][3]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [3]),
        .O(\o_blk_aux_addr[0] [3]));
  OBUF \o_blk_aux_addr[0][4]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [4]),
        .O(\o_blk_aux_addr[0] [4]));
  OBUF \o_blk_aux_addr[0][5]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [5]),
        .O(\o_blk_aux_addr[0] [5]));
  OBUF \o_blk_aux_addr[0][6]_INST_0 
       (.I(\o_blk_aux_addr[0]_OBUF [6]),
        .O(\o_blk_aux_addr[0] [6]));
  OBUF \o_blk_aux_addr[1][0]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [0]),
        .O(\o_blk_aux_addr[1] [0]));
  OBUF \o_blk_aux_addr[1][1]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [1]),
        .O(\o_blk_aux_addr[1] [1]));
  OBUF \o_blk_aux_addr[1][2]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [2]),
        .O(\o_blk_aux_addr[1] [2]));
  OBUF \o_blk_aux_addr[1][3]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [3]),
        .O(\o_blk_aux_addr[1] [3]));
  OBUF \o_blk_aux_addr[1][4]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [4]),
        .O(\o_blk_aux_addr[1] [4]));
  OBUF \o_blk_aux_addr[1][5]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [5]),
        .O(\o_blk_aux_addr[1] [5]));
  OBUF \o_blk_aux_addr[1][6]_INST_0 
       (.I(\o_blk_aux_addr[1]_OBUF [6]),
        .O(\o_blk_aux_addr[1] [6]));
  OBUF \o_blk_aux_we_OBUF[0]_inst 
       (.I(o_blk_aux_we_OBUF[0]),
        .O(o_blk_aux_we[0]));
  OBUF \o_blk_aux_we_OBUF[1]_inst 
       (.I(o_blk_aux_we_OBUF[1]),
        .O(o_blk_aux_we[1]));
  OBUF \o_blk_avail_OBUF[0]_inst 
       (.I(o_blk_avail_OBUF[0]),
        .O(o_blk_avail[0]));
  OBUF \o_blk_avail_OBUF[1]_inst 
       (.I(o_blk_avail_OBUF[1]),
        .O(o_blk_avail[1]));
  OBUF \o_blk_avail_OBUF[2]_inst 
       (.I(o_blk_avail_OBUF[2]),
        .O(o_blk_avail[2]));
  OBUF \o_blk_avail_OBUF[3]_inst 
       (.I(o_blk_avail_OBUF[3]),
        .O(o_blk_avail[3]));
  OBUF \o_blk_base_addr[0][0]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [0]),
        .O(\o_blk_base_addr[0] [0]));
  OBUF \o_blk_base_addr[0][1]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [1]),
        .O(\o_blk_base_addr[0] [1]));
  OBUF \o_blk_base_addr[0][2]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [2]),
        .O(\o_blk_base_addr[0] [2]));
  OBUF \o_blk_base_addr[0][3]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [3]),
        .O(\o_blk_base_addr[0] [3]));
  OBUF \o_blk_base_addr[0][4]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [4]),
        .O(\o_blk_base_addr[0] [4]));
  OBUF \o_blk_base_addr[0][5]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [5]),
        .O(\o_blk_base_addr[0] [5]));
  OBUF \o_blk_base_addr[0][6]_INST_0 
       (.I(\o_blk_base_addr[0]_OBUF [6]),
        .O(\o_blk_base_addr[0] [6]));
  OBUF \o_blk_base_addr[1][0]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [0]),
        .O(\o_blk_base_addr[1] [0]));
  OBUF \o_blk_base_addr[1][1]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [1]),
        .O(\o_blk_base_addr[1] [1]));
  OBUF \o_blk_base_addr[1][2]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [2]),
        .O(\o_blk_base_addr[1] [2]));
  OBUF \o_blk_base_addr[1][3]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [3]),
        .O(\o_blk_base_addr[1] [3]));
  OBUF \o_blk_base_addr[1][4]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [4]),
        .O(\o_blk_base_addr[1] [4]));
  OBUF \o_blk_base_addr[1][5]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [5]),
        .O(\o_blk_base_addr[1] [5]));
  OBUF \o_blk_base_addr[1][6]_INST_0 
       (.I(\o_blk_base_addr[1]_OBUF [6]),
        .O(\o_blk_base_addr[1] [6]));
  OBUF \o_blk_base_we_OBUF[0]_inst 
       (.I(o_blk_base_we_OBUF[0]),
        .O(o_blk_base_we[0]));
  OBUF \o_blk_base_we_OBUF[1]_inst 
       (.I(o_blk_base_we_OBUF[1]),
        .O(o_blk_base_we[1]));
  OBUF o_blk_full_OBUF_inst
       (.I(o_blk_full_OBUF),
        .O(o_blk_full));
  OBUF \o_rep_alloc_data_OBUF[0]_inst 
       (.I(o_rep_alloc_data_OBUF[0]),
        .O(o_rep_alloc_data[0]));
  OBUF \o_rep_alloc_data_OBUF[10]_inst 
       (.I(o_rep_alloc_data_OBUF[10]),
        .O(o_rep_alloc_data[10]));
  OBUF \o_rep_alloc_data_OBUF[11]_inst 
       (.I(o_rep_alloc_data_OBUF[11]),
        .O(o_rep_alloc_data[11]));
  OBUF \o_rep_alloc_data_OBUF[12]_inst 
       (.I(o_rep_alloc_data_OBUF[12]),
        .O(o_rep_alloc_data[12]));
  OBUF \o_rep_alloc_data_OBUF[13]_inst 
       (.I(o_rep_alloc_data_OBUF[13]),
        .O(o_rep_alloc_data[13]));
  OBUF \o_rep_alloc_data_OBUF[14]_inst 
       (.I(o_rep_alloc_data_OBUF[14]),
        .O(o_rep_alloc_data[14]));
  OBUF \o_rep_alloc_data_OBUF[1]_inst 
       (.I(o_rep_alloc_data_OBUF[1]),
        .O(o_rep_alloc_data[1]));
  OBUF \o_rep_alloc_data_OBUF[2]_inst 
       (.I(o_rep_alloc_data_OBUF[2]),
        .O(o_rep_alloc_data[2]));
  OBUF \o_rep_alloc_data_OBUF[3]_inst 
       (.I(o_rep_alloc_data_OBUF[3]),
        .O(o_rep_alloc_data[3]));
  OBUF \o_rep_alloc_data_OBUF[4]_inst 
       (.I(o_rep_alloc_data_OBUF[4]),
        .O(o_rep_alloc_data[4]));
  OBUF \o_rep_alloc_data_OBUF[5]_inst 
       (.I(o_rep_alloc_data_OBUF[5]),
        .O(o_rep_alloc_data[5]));
  OBUF \o_rep_alloc_data_OBUF[6]_inst 
       (.I(o_rep_alloc_data_OBUF[6]),
        .O(o_rep_alloc_data[6]));
  OBUF \o_rep_alloc_data_OBUF[7]_inst 
       (.I(o_rep_alloc_data_OBUF[7]),
        .O(o_rep_alloc_data[7]));
  OBUF \o_rep_alloc_data_OBUF[8]_inst 
       (.I(o_rep_alloc_data_OBUF[8]),
        .O(o_rep_alloc_data[8]));
  OBUF \o_rep_alloc_data_OBUF[9]_inst 
       (.I(o_rep_alloc_data_OBUF[9]),
        .O(o_rep_alloc_data[9]));
  OBUF o_rep_alloc_vld_OBUF_inst
       (.I(o_rep_alloc_vld_OBUF),
        .O(o_rep_alloc_vld));
  OBUF \o_rep_dealloc_data_OBUF[0]_inst 
       (.I(o_rep_dealloc_data_OBUF[0]),
        .O(o_rep_dealloc_data[0]));
  OBUF \o_rep_dealloc_data_OBUF[10]_inst 
       (.I(o_rep_dealloc_data_OBUF[10]),
        .O(o_rep_dealloc_data[10]));
  OBUF \o_rep_dealloc_data_OBUF[11]_inst 
       (.I(o_rep_dealloc_data_OBUF[11]),
        .O(o_rep_dealloc_data[11]));
  OBUF \o_rep_dealloc_data_OBUF[12]_inst 
       (.I(o_rep_dealloc_data_OBUF[12]),
        .O(o_rep_dealloc_data[12]));
  OBUF \o_rep_dealloc_data_OBUF[13]_inst 
       (.I(o_rep_dealloc_data_OBUF[13]),
        .O(o_rep_dealloc_data[13]));
  OBUF \o_rep_dealloc_data_OBUF[14]_inst 
       (.I(o_rep_dealloc_data_OBUF[14]),
        .O(o_rep_dealloc_data[14]));
  OBUF \o_rep_dealloc_data_OBUF[1]_inst 
       (.I(o_rep_dealloc_data_OBUF[1]),
        .O(o_rep_dealloc_data[1]));
  OBUF \o_rep_dealloc_data_OBUF[2]_inst 
       (.I(o_rep_dealloc_data_OBUF[2]),
        .O(o_rep_dealloc_data[2]));
  OBUF \o_rep_dealloc_data_OBUF[3]_inst 
       (.I(o_rep_dealloc_data_OBUF[3]),
        .O(o_rep_dealloc_data[3]));
  OBUF \o_rep_dealloc_data_OBUF[4]_inst 
       (.I(o_rep_dealloc_data_OBUF[4]),
        .O(o_rep_dealloc_data[4]));
  OBUF \o_rep_dealloc_data_OBUF[5]_inst 
       (.I(o_rep_dealloc_data_OBUF[5]),
        .O(o_rep_dealloc_data[5]));
  OBUF \o_rep_dealloc_data_OBUF[6]_inst 
       (.I(o_rep_dealloc_data_OBUF[6]),
        .O(o_rep_dealloc_data[6]));
  OBUF \o_rep_dealloc_data_OBUF[7]_inst 
       (.I(o_rep_dealloc_data_OBUF[7]),
        .O(o_rep_dealloc_data[7]));
  OBUF \o_rep_dealloc_data_OBUF[8]_inst 
       (.I(o_rep_dealloc_data_OBUF[8]),
        .O(o_rep_dealloc_data[8]));
  OBUF \o_rep_dealloc_data_OBUF[9]_inst 
       (.I(o_rep_dealloc_data_OBUF[9]),
        .O(o_rep_dealloc_data[9]));
  OBUF o_rep_dealloc_vld_OBUF_inst
       (.I(o_rep_dealloc_vld_OBUF),
        .O(o_rep_dealloc_vld));
  OBUF o_req_alloc_rdy_OBUF_inst
       (.I(o_req_alloc_rdy_OBUF),
        .O(o_req_alloc_rdy));
  OBUF o_req_dealloc_rdy_OBUF_inst
       (.I(o_req_dealloc_rdy_OBUF),
        .O(o_req_dealloc_rdy));
  IBUF \r_paddr_reg[1]_i_5 
       (.I(\i_aux_data[1] [4]),
        .O(\r_paddr_reg[1]_i_5_n_0 ));
  IBUF \r_paddr_reg[1]_i_5__0 
       (.I(\i_base_data[1] [4]),
        .O(\r_paddr_reg[1]_i_5__0_n_0 ));
  IBUF \r_paddr_reg[1]_i_6 
       (.I(\i_aux_data[1] [5]),
        .O(\r_paddr_reg[1]_i_6_n_0 ));
  IBUF \r_paddr_reg[1]_i_6__0 
       (.I(\i_base_data[1] [5]),
        .O(\r_paddr_reg[1]_i_6__0_n_0 ));
  IBUF \r_paddr_reg[2]_i_5 
       (.I(\i_aux_data[1] [6]),
        .O(\r_paddr_reg[2]_i_5_n_0 ));
  IBUF \r_paddr_reg[2]_i_5__0 
       (.I(\i_base_data[1] [6]),
        .O(\r_paddr_reg[2]_i_5__0_n_0 ));
  IBUF \r_paddr_reg[2]_i_6 
       (.I(\i_aux_data[0] [4]),
        .O(\r_paddr_reg[2]_i_6_n_0 ));
  IBUF \r_paddr_reg[2]_i_6__0 
       (.I(\i_base_data[0] [4]),
        .O(\r_paddr_reg[2]_i_6__0_n_0 ));
  IBUF \r_paddr_reg[2]_i_7 
       (.I(\i_aux_data[0] [5]),
        .O(\r_paddr_reg[2]_i_7_n_0 ));
  IBUF \r_paddr_reg[2]_i_7__0 
       (.I(\i_base_data[0] [5]),
        .O(\r_paddr_reg[2]_i_7__0_n_0 ));
  IBUF \r_paddr_reg[2]_i_8 
       (.I(\i_aux_data[0] [6]),
        .O(\r_paddr_reg[2]_i_8_n_0 ));
  IBUF \r_paddr_reg[2]_i_8__0 
       (.I(\i_base_data[0] [6]),
        .O(\r_paddr_reg[2]_i_8__0_n_0 ));
  IBUF \r_paddr_word_reg[0]_i_1 
       (.I(\i_aux_data[1] [0]),
        .O(\r_paddr_word_reg[0]_i_1_n_0 ));
  IBUF \r_paddr_word_reg[0]_i_1__0 
       (.I(\i_aux_data[0] [0]),
        .O(\r_paddr_word_reg[0]_i_1__0_n_0 ));
  IBUF \r_paddr_word_reg[0]_i_1__1 
       (.I(\i_base_data[1] [0]),
        .O(\r_paddr_word_reg[0]_i_1__1_n_0 ));
  IBUF \r_paddr_word_reg[0]_i_1__2 
       (.I(\i_base_data[0] [0]),
        .O(\r_paddr_word_reg[0]_i_1__2_n_0 ));
  IBUF \r_paddr_word_reg[1]_i_1 
       (.I(\i_aux_data[1] [1]),
        .O(\r_paddr_word_reg[1]_i_1_n_0 ));
  IBUF \r_paddr_word_reg[1]_i_1__0 
       (.I(\i_aux_data[0] [1]),
        .O(\r_paddr_word_reg[1]_i_1__0_n_0 ));
  IBUF \r_paddr_word_reg[1]_i_1__1 
       (.I(\i_base_data[1] [1]),
        .O(\r_paddr_word_reg[1]_i_1__1_n_0 ));
  IBUF \r_paddr_word_reg[1]_i_1__2 
       (.I(\i_base_data[0] [1]),
        .O(\r_paddr_word_reg[1]_i_1__2_n_0 ));
  IBUF \r_paddr_word_reg[2]_i_1 
       (.I(\i_aux_data[1] [2]),
        .O(\r_paddr_word_reg[2]_i_1_n_0 ));
  IBUF \r_paddr_word_reg[2]_i_1__0 
       (.I(\i_aux_data[0] [2]),
        .O(\r_paddr_word_reg[2]_i_1__0_n_0 ));
  IBUF \r_paddr_word_reg[2]_i_1__1 
       (.I(\i_base_data[1] [2]),
        .O(\r_paddr_word_reg[2]_i_1__1_n_0 ));
  IBUF \r_paddr_word_reg[2]_i_1__2 
       (.I(\i_base_data[0] [2]),
        .O(\r_paddr_word_reg[2]_i_1__2_n_0 ));
  IBUF \r_paddr_word_reg[3]_i_1 
       (.I(\i_aux_data[1] [3]),
        .O(\r_paddr_word_reg[3]_i_1_n_0 ));
  IBUF \r_paddr_word_reg[3]_i_1__0 
       (.I(\i_aux_data[0] [3]),
        .O(\r_paddr_word_reg[3]_i_1__0_n_0 ));
  IBUF \r_paddr_word_reg[3]_i_1__1 
       (.I(\i_base_data[1] [3]),
        .O(\r_paddr_word_reg[3]_i_1__1_n_0 ));
  IBUF \r_paddr_word_reg[3]_i_1__2 
       (.I(\i_base_data[0] [3]),
        .O(\r_paddr_word_reg[3]_i_1__2_n_0 ));
  IBUF \r_vaddr_base_reg[0]_i_1 
       (.I(\i_base_user[1] [0]),
        .O(\r_vaddr_base_reg[0]_i_1_n_0 ));
  IBUF \r_vaddr_base_reg[0]_i_1__0 
       (.I(\i_base_user[0] [0]),
        .O(\r_vaddr_base_reg[0]_i_1__0_n_0 ));
  IBUF \r_vaddr_base_reg[1]_i_1 
       (.I(\i_base_user[1] [1]),
        .O(\r_vaddr_base_reg[1]_i_1_n_0 ));
  IBUF \r_vaddr_base_reg[1]_i_1__0 
       (.I(\i_base_user[0] [1]),
        .O(\r_vaddr_base_reg[1]_i_1__0_n_0 ));
  IBUF \r_vaddr_base_reg[2]_i_1 
       (.I(\i_base_user[1] [2]),
        .O(\r_vaddr_base_reg[2]_i_1_n_0 ));
  IBUF \r_vaddr_base_reg[2]_i_1__0 
       (.I(\i_base_user[0] [2]),
        .O(\r_vaddr_base_reg[2]_i_1__0_n_0 ));
  qpl_transactor transactor_i
       (.D({\r_vaddr_base_reg[1]_i_1_n_0 ,\r_vaddr_base_reg[0]_i_1_n_0 }),
        .i_aux_last_IBUF(i_aux_last_IBUF),
        .i_aux_vld_IBUF(i_aux_vld_IBUF),
        .i_base_last_IBUF(i_base_last_IBUF),
        .i_base_vld_IBUF(i_base_vld_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_aux_addr[0]_OBUF (\o_blk_aux_addr[0]_OBUF ),
        .\o_blk_aux_addr[1]_OBUF (\o_blk_aux_addr[1]_OBUF ),
        .o_blk_aux_we_OBUF(o_blk_aux_we_OBUF),
        .\o_blk_base_addr[0]_OBUF (\o_blk_base_addr[0]_OBUF ),
        .\o_blk_base_addr[1]_OBUF (\o_blk_base_addr[1]_OBUF ),
        .o_blk_base_we_OBUF(o_blk_base_we_OBUF),
        .o_rd_data({\w_scb[2] ,\w_scb[1] ,\w_scb[0] }),
        .\r_paddr[2]_i_2 (\r_paddr_reg[2]_i_5_n_0 ),
        .\r_paddr[2]_i_2__1 (\r_paddr_reg[2]_i_5__0_n_0 ),
        .\r_paddr_reg[0] (\r_paddr_reg[1]_i_5_n_0 ),
        .\r_paddr_reg[0]_0 (\r_paddr_reg[1]_i_6_n_0 ),
        .\r_paddr_reg[0]_1 (\r_paddr_reg[1]_i_6__0_n_0 ),
        .\r_paddr_reg[0]_2 (\r_paddr_reg[1]_i_5__0_n_0 ),
        .\r_paddr_reg[0]_3 (manager_i_n_16),
        .\r_paddr_reg[1] (manager_i_n_17),
        .\r_paddr_reg[2] (\r_paddr_reg[2]_i_6_n_0 ),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2]_i_7_n_0 ),
        .\r_paddr_reg[2]_1 (\r_paddr_reg[2]_i_8_n_0 ),
        .\r_paddr_reg[2]_2 (manager_i_n_18),
        .\r_paddr_reg[2]_3 (\r_paddr_reg[2]_i_6__0_n_0 ),
        .\r_paddr_reg[2]_4 (\r_paddr_reg[2]_i_7__0_n_0 ),
        .\r_paddr_reg[2]_5 (\r_paddr_reg[2]_i_8__0_n_0 ),
        .\r_paddr_reg[2]_6 ({\gen_trans_chan[0].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_14,manager_i_n_15}),
        .\r_paddr_reg[2]_7 ({\gen_trans_chan[0].base_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_21}),
        .\r_paddr_reg[2]_8 ({\gen_trans_chan[1].gen_Dport_trans.aux_Taddr_i/trans_rd_vtp_dec_i/w_paddr ,manager_i_n_1,manager_i_n_2}),
        .\r_paddr_word_reg[3] ({\r_paddr_word_reg[3]_i_1__0_n_0 ,\r_paddr_word_reg[2]_i_1__0_n_0 ,\r_paddr_word_reg[1]_i_1__0_n_0 ,\r_paddr_word_reg[0]_i_1__0_n_0 }),
        .\r_paddr_word_reg[3]_0 ({\r_paddr_word_reg[3]_i_1__2_n_0 ,\r_paddr_word_reg[2]_i_1__2_n_0 ,\r_paddr_word_reg[1]_i_1__2_n_0 ,\r_paddr_word_reg[0]_i_1__2_n_0 }),
        .\r_paddr_word_reg[3]_1 ({\r_paddr_word_reg[3]_i_1_n_0 ,\r_paddr_word_reg[2]_i_1_n_0 ,\r_paddr_word_reg[1]_i_1_n_0 ,\r_paddr_word_reg[0]_i_1_n_0 }),
        .\r_paddr_word_reg[3]_2 ({\r_paddr_word_reg[3]_i_1__1_n_0 ,\r_paddr_word_reg[2]_i_1__1_n_0 ,\r_paddr_word_reg[1]_i_1__1_n_0 ,\r_paddr_word_reg[0]_i_1__1_n_0 }),
        .\r_vaddr_base_reg[2] ({\r_vaddr_base_reg[2]_i_1__0_n_0 ,\r_vaddr_base_reg[1]_i_1__0_n_0 ,\r_vaddr_base_reg[0]_i_1__0_n_0 }),
        .\r_vaddr_base_reg[2]_0 (\r_vaddr_base_reg[2]_i_1_n_0 ),
        .\r_vaddr_reg[0] (transactor_i_n_4),
        .\r_vaddr_reg[0]_0 (transactor_i_n_5),
        .\r_vaddr_reg[0]_1 (transactor_i_n_7),
        .\r_vaddr_reg[0]_10 (transactor_i_n_18),
        .\r_vaddr_reg[0]_11 (transactor_i_n_19),
        .\r_vaddr_reg[0]_2 (transactor_i_n_8),
        .\r_vaddr_reg[0]_3 (transactor_i_n_9),
        .\r_vaddr_reg[0]_4 (r_vaddr),
        .\r_vaddr_reg[0]_5 (transactor_i_n_12),
        .\r_vaddr_reg[0]_6 (transactor_i_n_13),
        .\r_vaddr_reg[0]_7 (transactor_i_n_14),
        .\r_vaddr_reg[0]_8 (transactor_i_n_15),
        .\r_vaddr_reg[0]_9 (transactor_i_n_16),
        .\r_vaddr_reg[1] (transactor_i_n_6),
        .\r_vaddr_reg[1]_0 (transactor_i_n_11),
        .\r_vaddr_reg[1]_1 (transactor_i_n_17),
        .\r_vaddr_reg[1]_2 (manager_i_n_25),
        .\r_vaddr_reg[1]_3 (manager_i_n_27),
        .\r_vaddr_reg[1]_4 (manager_i_n_28),
        .\r_vaddr_reg[1]_5 (manager_i_n_29),
        .\r_vaddr_reg[2] (manager_i_n_24),
        .\r_vaddr_reg[2]_0 (manager_i_n_23),
        .\r_vaddr_reg[2]_1 (manager_i_n_26),
        .\r_vaddr_reg[2]_2 (manager_i_n_12),
        .\r_vaddr_reg[2]_3 (manager_i_n_22),
        .\r_vaddr_reg[2]_4 (manager_i_n_11));
endmodule

module qpl_transactor
   (o_blk_aux_we_OBUF,
    o_blk_base_we_OBUF,
    \r_vaddr_reg[0] ,
    \r_vaddr_reg[0]_0 ,
    \r_vaddr_reg[1] ,
    \r_vaddr_reg[0]_1 ,
    \r_vaddr_reg[0]_2 ,
    \r_vaddr_reg[0]_3 ,
    \r_vaddr_reg[0]_4 ,
    \r_vaddr_reg[1]_0 ,
    \r_vaddr_reg[0]_5 ,
    \r_vaddr_reg[0]_6 ,
    \r_vaddr_reg[0]_7 ,
    \r_vaddr_reg[0]_8 ,
    \r_vaddr_reg[0]_9 ,
    \r_vaddr_reg[1]_1 ,
    \r_vaddr_reg[0]_10 ,
    \r_vaddr_reg[0]_11 ,
    \o_blk_aux_addr[0]_OBUF ,
    \o_blk_base_addr[0]_OBUF ,
    \o_blk_aux_addr[1]_OBUF ,
    \o_blk_base_addr[1]_OBUF ,
    i_clk_IBUF_BUFG,
    \r_paddr_reg[0] ,
    \r_paddr_reg[0]_0 ,
    \r_paddr[2]_i_2 ,
    o_rd_data,
    \r_paddr_reg[2] ,
    \r_paddr_reg[2]_0 ,
    \r_paddr_reg[2]_1 ,
    \r_paddr_reg[0]_1 ,
    \r_paddr_reg[0]_2 ,
    \r_paddr_reg[2]_2 ,
    \r_paddr[2]_i_2__1 ,
    \r_paddr_reg[2]_3 ,
    \r_paddr_reg[2]_4 ,
    \r_paddr_reg[2]_5 ,
    \r_vaddr_base_reg[2] ,
    \r_vaddr_base_reg[2]_0 ,
    D,
    i_aux_vld_IBUF,
    i_aux_last_IBUF,
    i_base_vld_IBUF,
    i_base_last_IBUF,
    \r_paddr_reg[1] ,
    \r_paddr_reg[0]_3 ,
    \r_paddr_word_reg[3] ,
    i_rst_IBUF,
    \r_paddr_reg[2]_6 ,
    \r_paddr_word_reg[3]_0 ,
    \r_paddr_reg[2]_7 ,
    \r_paddr_word_reg[3]_1 ,
    \r_paddr_reg[2]_8 ,
    \r_paddr_word_reg[3]_2 ,
    \r_vaddr_reg[2] ,
    \r_vaddr_reg[2]_0 ,
    \r_vaddr_reg[2]_1 ,
    \r_vaddr_reg[1]_2 ,
    \r_vaddr_reg[1]_3 ,
    \r_vaddr_reg[2]_2 ,
    \r_vaddr_reg[2]_3 ,
    \r_vaddr_reg[2]_4 ,
    \r_vaddr_reg[1]_4 ,
    \r_vaddr_reg[1]_5 );
  output [1:0]o_blk_aux_we_OBUF;
  output [1:0]o_blk_base_we_OBUF;
  output \r_vaddr_reg[0] ;
  output \r_vaddr_reg[0]_0 ;
  output \r_vaddr_reg[1] ;
  output \r_vaddr_reg[0]_1 ;
  output \r_vaddr_reg[0]_2 ;
  output \r_vaddr_reg[0]_3 ;
  output [0:0]\r_vaddr_reg[0]_4 ;
  output \r_vaddr_reg[1]_0 ;
  output \r_vaddr_reg[0]_5 ;
  output \r_vaddr_reg[0]_6 ;
  output \r_vaddr_reg[0]_7 ;
  output \r_vaddr_reg[0]_8 ;
  output \r_vaddr_reg[0]_9 ;
  output \r_vaddr_reg[1]_1 ;
  output \r_vaddr_reg[0]_10 ;
  output \r_vaddr_reg[0]_11 ;
  output [6:0]\o_blk_aux_addr[0]_OBUF ;
  output [6:0]\o_blk_base_addr[0]_OBUF ;
  output [6:0]\o_blk_aux_addr[1]_OBUF ;
  output [6:0]\o_blk_base_addr[1]_OBUF ;
  input i_clk_IBUF_BUFG;
  input \r_paddr_reg[0] ;
  input \r_paddr_reg[0]_0 ;
  input \r_paddr[2]_i_2 ;
  input [7:0]o_rd_data;
  input \r_paddr_reg[2] ;
  input \r_paddr_reg[2]_0 ;
  input \r_paddr_reg[2]_1 ;
  input \r_paddr_reg[0]_1 ;
  input \r_paddr_reg[0]_2 ;
  input \r_paddr_reg[2]_2 ;
  input \r_paddr[2]_i_2__1 ;
  input \r_paddr_reg[2]_3 ;
  input \r_paddr_reg[2]_4 ;
  input \r_paddr_reg[2]_5 ;
  input [2:0]\r_vaddr_base_reg[2] ;
  input \r_vaddr_base_reg[2]_0 ;
  input [1:0]D;
  input [1:0]i_aux_vld_IBUF;
  input [1:0]i_aux_last_IBUF;
  input [1:0]i_base_vld_IBUF;
  input [1:0]i_base_last_IBUF;
  input \r_paddr_reg[1] ;
  input \r_paddr_reg[0]_3 ;
  input [3:0]\r_paddr_word_reg[3] ;
  input i_rst_IBUF;
  input [2:0]\r_paddr_reg[2]_6 ;
  input [3:0]\r_paddr_word_reg[3]_0 ;
  input [2:0]\r_paddr_reg[2]_7 ;
  input [3:0]\r_paddr_word_reg[3]_1 ;
  input [2:0]\r_paddr_reg[2]_8 ;
  input [3:0]\r_paddr_word_reg[3]_2 ;
  input \r_vaddr_reg[2] ;
  input \r_vaddr_reg[2]_0 ;
  input \r_vaddr_reg[2]_1 ;
  input \r_vaddr_reg[1]_2 ;
  input \r_vaddr_reg[1]_3 ;
  input \r_vaddr_reg[2]_2 ;
  input \r_vaddr_reg[2]_3 ;
  input \r_vaddr_reg[2]_4 ;
  input \r_vaddr_reg[1]_4 ;
  input \r_vaddr_reg[1]_5 ;

  wire [1:0]D;
  wire \gen_trans_chan[1].base_Tobject_i_n_10 ;
  wire \gen_trans_chan[1].base_Tobject_i_n_6 ;
  wire \gen_trans_chan[1].base_Tobject_i_n_7 ;
  wire [1:0]i_aux_last_IBUF;
  wire [1:0]i_aux_vld_IBUF;
  wire [1:0]i_base_last_IBUF;
  wire [1:0]i_base_vld_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_ignore;
  wire i_rst_IBUF;
  wire [6:0]\o_blk_aux_addr[0]_OBUF ;
  wire [6:0]\o_blk_aux_addr[1]_OBUF ;
  wire [1:0]o_blk_aux_we_OBUF;
  wire [6:0]\o_blk_base_addr[0]_OBUF ;
  wire [6:0]\o_blk_base_addr[1]_OBUF ;
  wire [1:0]o_blk_base_we_OBUF;
  wire [7:0]o_rd_data;
  wire \r_paddr[2]_i_2 ;
  wire \r_paddr[2]_i_2__1 ;
  wire \r_paddr_reg[0] ;
  wire \r_paddr_reg[0]_0 ;
  wire \r_paddr_reg[0]_1 ;
  wire \r_paddr_reg[0]_2 ;
  wire \r_paddr_reg[0]_3 ;
  wire \r_paddr_reg[1] ;
  wire \r_paddr_reg[2] ;
  wire \r_paddr_reg[2]_0 ;
  wire \r_paddr_reg[2]_1 ;
  wire \r_paddr_reg[2]_2 ;
  wire \r_paddr_reg[2]_3 ;
  wire \r_paddr_reg[2]_4 ;
  wire \r_paddr_reg[2]_5 ;
  wire [2:0]\r_paddr_reg[2]_6 ;
  wire [2:0]\r_paddr_reg[2]_7 ;
  wire [2:0]\r_paddr_reg[2]_8 ;
  wire [3:0]\r_paddr_word_reg[3] ;
  wire [3:0]\r_paddr_word_reg[3]_0 ;
  wire [3:0]\r_paddr_word_reg[3]_1 ;
  wire [3:0]\r_paddr_word_reg[3]_2 ;
  wire [2:0]\r_vaddr_base_reg[2] ;
  wire \r_vaddr_base_reg[2]_0 ;
  wire \r_vaddr_reg[0] ;
  wire \r_vaddr_reg[0]_0 ;
  wire \r_vaddr_reg[0]_1 ;
  wire \r_vaddr_reg[0]_10 ;
  wire \r_vaddr_reg[0]_11 ;
  wire \r_vaddr_reg[0]_2 ;
  wire \r_vaddr_reg[0]_3 ;
  wire [0:0]\r_vaddr_reg[0]_4 ;
  wire \r_vaddr_reg[0]_5 ;
  wire \r_vaddr_reg[0]_6 ;
  wire \r_vaddr_reg[0]_7 ;
  wire \r_vaddr_reg[0]_8 ;
  wire \r_vaddr_reg[0]_9 ;
  wire \r_vaddr_reg[1] ;
  wire \r_vaddr_reg[1]_0 ;
  wire \r_vaddr_reg[1]_1 ;
  wire \r_vaddr_reg[1]_2 ;
  wire \r_vaddr_reg[1]_3 ;
  wire \r_vaddr_reg[1]_4 ;
  wire \r_vaddr_reg[1]_5 ;
  wire \r_vaddr_reg[2] ;
  wire \r_vaddr_reg[2]_0 ;
  wire \r_vaddr_reg[2]_1 ;
  wire \r_vaddr_reg[2]_2 ;
  wire \r_vaddr_reg[2]_3 ;
  wire \r_vaddr_reg[2]_4 ;
  wire [2:2]\trans_rd_vtp_dec_i/w_paddr ;

  qpl_addr_translator \gen_trans_chan[0].base_Taddr_i 
       (.i_base_last_IBUF(i_base_last_IBUF[0]),
        .i_base_vld_IBUF(i_base_vld_IBUF[0]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_ignore(i_ignore),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_base_addr[0]_OBUF (\o_blk_base_addr[0]_OBUF ),
        .o_blk_base_we_OBUF(o_blk_base_we_OBUF[0]),
        .\r_paddr_reg[2] (\r_paddr_reg[2]_7 ),
        .\r_paddr_word_reg[3]_0 (\r_paddr_word_reg[3]_0 ));
  qpl_base_translator \gen_trans_chan[0].base_Tobject_i 
       (.i_base_vld_IBUF(i_base_vld_IBUF[0]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_ignore(i_ignore),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rd_data(o_rd_data[5:4]),
        .\r_paddr_reg[2] (\r_paddr_reg[2] ),
        .\r_paddr_reg[2]_0 (\r_paddr_reg[2]_0 ),
        .\r_paddr_reg[2]_1 (\r_paddr_reg[2]_1 ),
        .\r_paddr_reg[2]_2 (\r_paddr_reg[2]_3 ),
        .\r_paddr_reg[2]_3 (\r_paddr_reg[2]_4 ),
        .\r_paddr_reg[2]_4 (\r_paddr_reg[2]_5 ),
        .\r_vaddr_base_reg[2]_0 (\r_vaddr_base_reg[2] ),
        .\r_vaddr_reg[0] (\r_vaddr_reg[0]_3 ),
        .\r_vaddr_reg[0]_0 (\r_vaddr_reg[0]_4 ),
        .\r_vaddr_reg[0]_1 (\r_vaddr_reg[0]_5 ),
        .\r_vaddr_reg[0]_2 (\r_vaddr_reg[0]_6 ),
        .\r_vaddr_reg[0]_3 (\r_vaddr_reg[0]_9 ),
        .\r_vaddr_reg[0]_4 (\r_vaddr_reg[0]_10 ),
        .\r_vaddr_reg[0]_5 (\r_vaddr_reg[0]_11 ),
        .\r_vaddr_reg[1] (\r_vaddr_reg[1]_0 ),
        .\r_vaddr_reg[1]_0 (\r_vaddr_reg[1]_1 ),
        .\r_vaddr_reg[1]_1 (\r_vaddr_reg[1]_2 ),
        .\r_vaddr_reg[1]_2 (\r_vaddr_reg[1]_3 ),
        .\r_vaddr_reg[2] (\r_vaddr_reg[2] ),
        .\r_vaddr_reg[2]_0 (\r_vaddr_reg[2]_0 ),
        .\r_vaddr_reg[2]_1 (\r_vaddr_reg[2]_1 ));
  qpl_addr_translator_0 \gen_trans_chan[0].gen_Dport_trans.aux_Taddr_i 
       (.i_aux_last_IBUF(i_aux_last_IBUF[0]),
        .i_aux_vld_IBUF(i_aux_vld_IBUF[0]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_ignore(i_ignore),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_aux_addr[0]_OBUF (\o_blk_aux_addr[0]_OBUF ),
        .o_blk_aux_we_OBUF(o_blk_aux_we_OBUF[0]),
        .\r_paddr_reg[2] (\r_paddr_reg[2]_6 ),
        .\r_paddr_word_reg[3]_0 (\r_paddr_word_reg[3] ));
  qpl_addr_translator_1 \gen_trans_chan[1].base_Taddr_i 
       (.D({\trans_rd_vtp_dec_i/w_paddr ,\gen_trans_chan[1].base_Tobject_i_n_6 ,\gen_trans_chan[1].base_Tobject_i_n_7 }),
        .i_base_last_IBUF(i_base_last_IBUF[1]),
        .i_base_vld_IBUF(i_base_vld_IBUF[1]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_base_addr[1]_OBUF (\o_blk_base_addr[1]_OBUF ),
        .o_blk_base_we_OBUF(o_blk_base_we_OBUF[1]),
        .r_paddr_we_reg_0(\gen_trans_chan[1].base_Tobject_i_n_10 ),
        .\r_paddr_word_reg[3]_0 (\r_paddr_word_reg[3]_2 ));
  qpl_base_translator_2 \gen_trans_chan[1].base_Tobject_i 
       (.D({\trans_rd_vtp_dec_i/w_paddr ,\gen_trans_chan[1].base_Tobject_i_n_6 ,\gen_trans_chan[1].base_Tobject_i_n_7 }),
        .i_base_vld_IBUF(i_base_vld_IBUF[1]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .o_rd_data({o_rd_data[7:6],o_rd_data[3:0]}),
        .\r_paddr[2]_i_2 (\r_paddr[2]_i_2 ),
        .\r_paddr[2]_i_2__1 (\r_paddr[2]_i_2__1 ),
        .\r_paddr_reg[0] (\r_paddr_reg[0] ),
        .\r_paddr_reg[0]_0 (\r_paddr_reg[0]_0 ),
        .\r_paddr_reg[0]_1 (\r_paddr_reg[0]_1 ),
        .\r_paddr_reg[0]_2 (\r_paddr_reg[0]_2 ),
        .\r_paddr_reg[0]_3 (\r_paddr_reg[0]_3 ),
        .\r_paddr_reg[1] (\r_paddr_reg[1] ),
        .\r_paddr_reg[2] (\r_paddr_reg[2]_2 ),
        .\r_vaddr_base_reg[2]_0 (\gen_trans_chan[1].base_Tobject_i_n_10 ),
        .\r_vaddr_base_reg[2]_1 ({\r_vaddr_base_reg[2]_0 ,D}),
        .\r_vaddr_reg[0] (\r_vaddr_reg[0] ),
        .\r_vaddr_reg[0]_0 (\r_vaddr_reg[0]_0 ),
        .\r_vaddr_reg[0]_1 (\r_vaddr_reg[0]_1 ),
        .\r_vaddr_reg[0]_2 (\r_vaddr_reg[0]_2 ),
        .\r_vaddr_reg[0]_3 (\r_vaddr_reg[0]_7 ),
        .\r_vaddr_reg[0]_4 (\r_vaddr_reg[0]_8 ),
        .\r_vaddr_reg[1] (\r_vaddr_reg[1] ),
        .\r_vaddr_reg[1]_0 (\r_vaddr_reg[1]_4 ),
        .\r_vaddr_reg[1]_1 (\r_vaddr_reg[1]_5 ),
        .\r_vaddr_reg[2] (\r_vaddr_reg[2]_2 ),
        .\r_vaddr_reg[2]_0 (\r_vaddr_reg[2]_3 ),
        .\r_vaddr_reg[2]_1 (\r_vaddr_reg[2]_4 ));
  qpl_addr_translator_3 \gen_trans_chan[1].gen_Dport_trans.aux_Taddr_i 
       (.i_aux_last_IBUF(i_aux_last_IBUF[1]),
        .i_aux_vld_IBUF(i_aux_vld_IBUF[1]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\o_blk_aux_addr[1]_OBUF (\o_blk_aux_addr[1]_OBUF ),
        .o_blk_aux_we_OBUF(o_blk_aux_we_OBUF[1]),
        .\r_paddr_reg[2] (\r_paddr_reg[2]_8 ),
        .r_paddr_we_reg_0(\gen_trans_chan[1].base_Tobject_i_n_10 ),
        .\r_paddr_word_reg[3]_0 (\r_paddr_word_reg[3]_1 ));
endmodule

(* BLOCK_D = "8" *) (* BLOCK_W = "3" *) (* DATA_W = "12" *) 
(* NODES = "4" *) 
module scb_file
   (i_clk,
    i_reset,
    i_we,
    i_wr_data,
    o_rd_data);
  input i_clk;
  input i_reset;
  input i_we;
  input [11:0]i_wr_data;
  output [11:0]o_rd_data;

  wire i_clk;
  wire i_reset;
  wire i_we;
  wire [11:0]i_wr_data;
  wire [11:0]o_rd_data;

  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[0] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[0]),
        .Q(o_rd_data[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[10] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[10]),
        .Q(o_rd_data[10]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[11] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[11]),
        .Q(o_rd_data[11]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[1] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[1]),
        .Q(o_rd_data[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[2] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[2]),
        .Q(o_rd_data[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[3] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[3]),
        .Q(o_rd_data[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[4] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[4]),
        .Q(o_rd_data[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[5] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[5]),
        .Q(o_rd_data[5]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[6] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[6]),
        .Q(o_rd_data[6]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[7] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[7]),
        .Q(o_rd_data[7]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[8] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[8]),
        .Q(o_rd_data[8]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \r_scb_reg[9] 
       (.C(i_clk),
        .CE(i_we),
        .D(i_wr_data[9]),
        .Q(o_rd_data[9]),
        .R(i_reset));
endmodule

module skids
   (i_req_dealloc_vld,
    \r_valid_buf_reg[7] ,
    \r_valid_buf_reg[3] ,
    i_rst_IBUF,
    o_req_dealloc_rdy,
    i_clk_IBUF_BUFG,
    \r_sreg_reg[0]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[0]_3 ,
    \r_sreg_reg[0]_4 ,
    \r_sreg_reg[0]_5 ,
    \r_sreg_reg[0]_6 ,
    \r_sreg_reg[0]_7 ,
    \r_sreg_reg[0]_8 ,
    \r_sreg_reg[0]_9 ,
    \r_sreg_reg[0]_10 );
  output i_req_dealloc_vld;
  output \r_valid_buf_reg[7] ;
  output \r_valid_buf_reg[3] ;
  input i_rst_IBUF;
  input o_req_dealloc_rdy;
  input i_clk_IBUF_BUFG;
  input \r_sreg_reg[0]_0 ;
  input \r_sreg_reg[0]_1 ;
  input \r_sreg_reg[0]_2 ;
  input \r_sreg_reg[0]_3 ;
  input \r_sreg_reg[0]_4 ;
  input \r_sreg_reg[0]_5 ;
  input \r_sreg_reg[0]_6 ;
  input \r_sreg_reg[0]_7 ;
  input \r_sreg_reg[0]_8 ;
  input \r_sreg_reg[0]_9 ;
  input \r_sreg_reg[0]_10 ;

  wire i_clk_IBUF_BUFG;
  wire i_req_dealloc_vld;
  wire i_rst_IBUF;
  wire o_req_dealloc_rdy;
  wire \r_sreg[0]_i_1__0_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_10 ;
  wire \r_sreg_reg[0]_2 ;
  wire \r_sreg_reg[0]_3 ;
  wire \r_sreg_reg[0]_4 ;
  wire \r_sreg_reg[0]_5 ;
  wire \r_sreg_reg[0]_6 ;
  wire \r_sreg_reg[0]_7 ;
  wire \r_sreg_reg[0]_8 ;
  wire \r_sreg_reg[0]_9 ;
  wire \r_valid_buf_reg[3] ;
  wire \r_valid_buf_reg[7] ;

  LUT5 #(
    .INIT(32'hABFEA802)) 
    \r_sreg[0]_i_1__0 
       (.I0(\r_valid_buf_reg[7] ),
        .I1(\r_sreg_reg[0]_0 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_2 ),
        .I4(\r_valid_buf_reg[3] ),
        .O(\r_sreg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_2__1 
       (.I0(\r_sreg_reg[0]_3 ),
        .I1(\r_sreg_reg[0]_4 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_5 ),
        .I5(\r_sreg_reg[0]_6 ),
        .O(\r_valid_buf_reg[7] ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_3__1 
       (.I0(\r_sreg_reg[0]_7 ),
        .I1(\r_sreg_reg[0]_8 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_9 ),
        .I5(\r_sreg_reg[0]_10 ),
        .O(\r_valid_buf_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(\r_sreg[0]_i_1__0_n_0 ),
        .Q(i_req_dealloc_vld),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids_11
   (o_rep_dealloc_vld_OBUF,
    \r_valid_buf_reg[7] ,
    \r_valid_buf_reg[3] ,
    i_rst_IBUF,
    i_rep_dealloc_rdy_IBUF,
    i_clk_IBUF_BUFG,
    \r_sreg_reg[0]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[0]_3 ,
    \r_sreg_reg[0]_4 ,
    \r_sreg_reg[0]_5 ,
    \r_sreg_reg[0]_6 ,
    \r_sreg_reg[0]_7 ,
    \r_sreg_reg[0]_8 ,
    \r_sreg_reg[0]_9 ,
    \r_sreg_reg[0]_10 );
  output o_rep_dealloc_vld_OBUF;
  output \r_valid_buf_reg[7] ;
  output \r_valid_buf_reg[3] ;
  input i_rst_IBUF;
  input i_rep_dealloc_rdy_IBUF;
  input i_clk_IBUF_BUFG;
  input \r_sreg_reg[0]_0 ;
  input \r_sreg_reg[0]_1 ;
  input \r_sreg_reg[0]_2 ;
  input \r_sreg_reg[0]_3 ;
  input \r_sreg_reg[0]_4 ;
  input \r_sreg_reg[0]_5 ;
  input \r_sreg_reg[0]_6 ;
  input \r_sreg_reg[0]_7 ;
  input \r_sreg_reg[0]_8 ;
  input \r_sreg_reg[0]_9 ;
  input \r_sreg_reg[0]_10 ;

  wire i_clk_IBUF_BUFG;
  wire i_rep_dealloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire o_rep_dealloc_vld_OBUF;
  wire \r_sreg[0]_i_1__2_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_10 ;
  wire \r_sreg_reg[0]_2 ;
  wire \r_sreg_reg[0]_3 ;
  wire \r_sreg_reg[0]_4 ;
  wire \r_sreg_reg[0]_5 ;
  wire \r_sreg_reg[0]_6 ;
  wire \r_sreg_reg[0]_7 ;
  wire \r_sreg_reg[0]_8 ;
  wire \r_sreg_reg[0]_9 ;
  wire \r_valid_buf_reg[3] ;
  wire \r_valid_buf_reg[7] ;

  LUT5 #(
    .INIT(32'hABFEA802)) 
    \r_sreg[0]_i_1__2 
       (.I0(\r_valid_buf_reg[7] ),
        .I1(\r_sreg_reg[0]_0 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_2 ),
        .I4(\r_valid_buf_reg[3] ),
        .O(\r_sreg[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_2__5 
       (.I0(\r_sreg_reg[0]_3 ),
        .I1(\r_sreg_reg[0]_4 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_5 ),
        .I5(\r_sreg_reg[0]_6 ),
        .O(\r_valid_buf_reg[7] ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_3__5 
       (.I0(\r_sreg_reg[0]_7 ),
        .I1(\r_sreg_reg[0]_8 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_9 ),
        .I5(\r_sreg_reg[0]_10 ),
        .O(\r_valid_buf_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(\r_sreg[0]_i_1__2_n_0 ),
        .Q(o_rep_dealloc_vld_OBUF),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids_12
   (i_req_alloc_vld,
    \r_valid_buf_reg[7] ,
    \r_valid_buf_reg[3] ,
    i_rst_IBUF,
    o_req_alloc_rdy,
    i_clk_IBUF_BUFG,
    r_rd_ptr,
    \r_sreg_reg[0]_0 ,
    data0,
    data3,
    data2,
    data5,
    data4,
    data7,
    data6);
  output i_req_alloc_vld;
  output \r_valid_buf_reg[7] ;
  output \r_valid_buf_reg[3] ;
  input i_rst_IBUF;
  input o_req_alloc_rdy;
  input i_clk_IBUF_BUFG;
  input [2:0]r_rd_ptr;
  input \r_sreg_reg[0]_0 ;
  input data0;
  input data3;
  input data2;
  input data5;
  input data4;
  input data7;
  input data6;

  wire data0;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire i_clk_IBUF_BUFG;
  wire i_req_alloc_vld;
  wire i_rst_IBUF;
  wire o_req_alloc_rdy;
  wire [2:0]r_rd_ptr;
  wire \r_sreg[0]_i_1_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_valid_buf_reg[3] ;
  wire \r_valid_buf_reg[7] ;

  LUT5 #(
    .INIT(32'hABFEA802)) 
    \r_sreg[0]_i_1 
       (.I0(\r_valid_buf_reg[7] ),
        .I1(r_rd_ptr[1]),
        .I2(r_rd_ptr[0]),
        .I3(r_rd_ptr[2]),
        .I4(\r_valid_buf_reg[3] ),
        .O(\r_sreg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_2 
       (.I0(\r_sreg_reg[0]_0 ),
        .I1(data0),
        .I2(r_rd_ptr[0]),
        .I3(r_rd_ptr[1]),
        .I4(data3),
        .I5(data2),
        .O(\r_valid_buf_reg[7] ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_3 
       (.I0(data5),
        .I1(data4),
        .I2(r_rd_ptr[0]),
        .I3(r_rd_ptr[1]),
        .I4(data7),
        .I5(data6),
        .O(\r_valid_buf_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(\r_sreg[0]_i_1_n_0 ),
        .Q(i_req_alloc_vld),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids_14
   (o_rep_alloc_vld_OBUF,
    \r_valid_buf_reg[7] ,
    \r_valid_buf_reg[3] ,
    i_rst_IBUF,
    i_rep_alloc_rdy_IBUF,
    i_clk_IBUF_BUFG,
    \r_sreg_reg[0]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[0]_3 ,
    \r_sreg_reg[0]_4 ,
    \r_sreg_reg[0]_5 ,
    \r_sreg_reg[0]_6 ,
    \r_sreg_reg[0]_7 ,
    \r_sreg_reg[0]_8 ,
    \r_sreg_reg[0]_9 ,
    \r_sreg_reg[0]_10 );
  output o_rep_alloc_vld_OBUF;
  output \r_valid_buf_reg[7] ;
  output \r_valid_buf_reg[3] ;
  input i_rst_IBUF;
  input i_rep_alloc_rdy_IBUF;
  input i_clk_IBUF_BUFG;
  input \r_sreg_reg[0]_0 ;
  input \r_sreg_reg[0]_1 ;
  input \r_sreg_reg[0]_2 ;
  input \r_sreg_reg[0]_3 ;
  input \r_sreg_reg[0]_4 ;
  input \r_sreg_reg[0]_5 ;
  input \r_sreg_reg[0]_6 ;
  input \r_sreg_reg[0]_7 ;
  input \r_sreg_reg[0]_8 ;
  input \r_sreg_reg[0]_9 ;
  input \r_sreg_reg[0]_10 ;

  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire o_rep_alloc_vld_OBUF;
  wire \r_sreg[0]_i_1__1_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_10 ;
  wire \r_sreg_reg[0]_2 ;
  wire \r_sreg_reg[0]_3 ;
  wire \r_sreg_reg[0]_4 ;
  wire \r_sreg_reg[0]_5 ;
  wire \r_sreg_reg[0]_6 ;
  wire \r_sreg_reg[0]_7 ;
  wire \r_sreg_reg[0]_8 ;
  wire \r_sreg_reg[0]_9 ;
  wire \r_valid_buf_reg[3] ;
  wire \r_valid_buf_reg[7] ;

  LUT5 #(
    .INIT(32'hABFEA802)) 
    \r_sreg[0]_i_1__1 
       (.I0(\r_valid_buf_reg[7] ),
        .I1(\r_sreg_reg[0]_0 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_2 ),
        .I4(\r_valid_buf_reg[3] ),
        .O(\r_sreg[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_2__3 
       (.I0(\r_sreg_reg[0]_3 ),
        .I1(\r_sreg_reg[0]_4 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_5 ),
        .I5(\r_sreg_reg[0]_6 ),
        .O(\r_valid_buf_reg[7] ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \r_sreg[0]_i_3__3 
       (.I0(\r_sreg_reg[0]_7 ),
        .I1(\r_sreg_reg[0]_8 ),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[0]_0 ),
        .I4(\r_sreg_reg[0]_9 ),
        .I5(\r_sreg_reg[0]_10 ),
        .O(\r_valid_buf_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(\r_sreg[0]_i_1__1_n_0 ),
        .Q(o_rep_alloc_vld_OBUF),
        .R(i_rst_IBUF));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids__parameterized0
   (i_req_alloc_data,
    r_rd_ptr,
    Q,
    \r_sreg_reg[17]_0 ,
    \r_sreg_reg[17]_1 ,
    \r_sreg_reg[17]_2 ,
    \r_sreg_reg[17]_3 ,
    \r_sreg_reg[17]_4 ,
    \r_sreg_reg[17]_5 ,
    \r_sreg_reg[17]_6 ,
    i_rst_IBUF,
    o_req_alloc_rdy,
    i_clk_IBUF_BUFG);
  output [17:0]i_req_alloc_data;
  input [2:0]r_rd_ptr;
  input [17:0]Q;
  input [17:0]\r_sreg_reg[17]_0 ;
  input [17:0]\r_sreg_reg[17]_1 ;
  input [17:0]\r_sreg_reg[17]_2 ;
  input [17:0]\r_sreg_reg[17]_3 ;
  input [17:0]\r_sreg_reg[17]_4 ;
  input [17:0]\r_sreg_reg[17]_5 ;
  input [17:0]\r_sreg_reg[17]_6 ;
  input i_rst_IBUF;
  input o_req_alloc_rdy;
  input i_clk_IBUF_BUFG;

  wire [17:0]Q;
  wire i_clk_IBUF_BUFG;
  wire [17:0]i_req_alloc_data;
  wire i_rst_IBUF;
  wire o_req_alloc_rdy;
  wire [17:0]r_data_buf__125;
  wire [2:0]r_rd_ptr;
  wire \r_sreg[0]_i_2__0_n_0 ;
  wire \r_sreg[0]_i_3__0_n_0 ;
  wire \r_sreg[10]_i_2_n_0 ;
  wire \r_sreg[10]_i_3_n_0 ;
  wire \r_sreg[11]_i_2_n_0 ;
  wire \r_sreg[11]_i_3_n_0 ;
  wire \r_sreg[12]_i_2_n_0 ;
  wire \r_sreg[12]_i_3_n_0 ;
  wire \r_sreg[13]_i_2_n_0 ;
  wire \r_sreg[13]_i_3_n_0 ;
  wire \r_sreg[14]_i_2_n_0 ;
  wire \r_sreg[14]_i_3_n_0 ;
  wire \r_sreg[15]_i_2_n_0 ;
  wire \r_sreg[15]_i_3_n_0 ;
  wire \r_sreg[16]_i_2_n_0 ;
  wire \r_sreg[16]_i_3_n_0 ;
  wire \r_sreg[17]_i_2_n_0 ;
  wire \r_sreg[17]_i_3_n_0 ;
  wire \r_sreg[1]_i_2_n_0 ;
  wire \r_sreg[1]_i_3_n_0 ;
  wire \r_sreg[2]_i_2_n_0 ;
  wire \r_sreg[2]_i_3_n_0 ;
  wire \r_sreg[3]_i_2_n_0 ;
  wire \r_sreg[3]_i_3_n_0 ;
  wire \r_sreg[4]_i_2_n_0 ;
  wire \r_sreg[4]_i_3_n_0 ;
  wire \r_sreg[5]_i_2_n_0 ;
  wire \r_sreg[5]_i_3_n_0 ;
  wire \r_sreg[6]_i_2_n_0 ;
  wire \r_sreg[6]_i_3_n_0 ;
  wire \r_sreg[7]_i_2_n_0 ;
  wire \r_sreg[7]_i_3_n_0 ;
  wire \r_sreg[8]_i_2_n_0 ;
  wire \r_sreg[8]_i_3_n_0 ;
  wire \r_sreg[9]_i_2_n_0 ;
  wire \r_sreg[9]_i_3_n_0 ;
  wire [17:0]\r_sreg_reg[17]_0 ;
  wire [17:0]\r_sreg_reg[17]_1 ;
  wire [17:0]\r_sreg_reg[17]_2 ;
  wire [17:0]\r_sreg_reg[17]_3 ;
  wire [17:0]\r_sreg_reg[17]_4 ;
  wire [17:0]\r_sreg_reg[17]_5 ;
  wire [17:0]\r_sreg_reg[17]_6 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_2__0 
       (.I0(Q[0]),
        .I1(\r_sreg_reg[17]_0 [0]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [0]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [0]),
        .O(\r_sreg[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_3__0 
       (.I0(\r_sreg_reg[17]_3 [0]),
        .I1(\r_sreg_reg[17]_4 [0]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [0]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [0]),
        .O(\r_sreg[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_2 
       (.I0(Q[10]),
        .I1(\r_sreg_reg[17]_0 [10]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [10]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [10]),
        .O(\r_sreg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_3 
       (.I0(\r_sreg_reg[17]_3 [10]),
        .I1(\r_sreg_reg[17]_4 [10]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [10]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [10]),
        .O(\r_sreg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_2 
       (.I0(Q[11]),
        .I1(\r_sreg_reg[17]_0 [11]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [11]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [11]),
        .O(\r_sreg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_3 
       (.I0(\r_sreg_reg[17]_3 [11]),
        .I1(\r_sreg_reg[17]_4 [11]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [11]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [11]),
        .O(\r_sreg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_2 
       (.I0(Q[12]),
        .I1(\r_sreg_reg[17]_0 [12]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [12]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [12]),
        .O(\r_sreg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_3 
       (.I0(\r_sreg_reg[17]_3 [12]),
        .I1(\r_sreg_reg[17]_4 [12]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [12]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [12]),
        .O(\r_sreg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_2 
       (.I0(Q[13]),
        .I1(\r_sreg_reg[17]_0 [13]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [13]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [13]),
        .O(\r_sreg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_3 
       (.I0(\r_sreg_reg[17]_3 [13]),
        .I1(\r_sreg_reg[17]_4 [13]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [13]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [13]),
        .O(\r_sreg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_2 
       (.I0(Q[14]),
        .I1(\r_sreg_reg[17]_0 [14]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [14]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [14]),
        .O(\r_sreg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_3 
       (.I0(\r_sreg_reg[17]_3 [14]),
        .I1(\r_sreg_reg[17]_4 [14]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [14]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [14]),
        .O(\r_sreg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[15]_i_2 
       (.I0(Q[15]),
        .I1(\r_sreg_reg[17]_0 [15]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [15]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [15]),
        .O(\r_sreg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[15]_i_3 
       (.I0(\r_sreg_reg[17]_3 [15]),
        .I1(\r_sreg_reg[17]_4 [15]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [15]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [15]),
        .O(\r_sreg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[16]_i_2 
       (.I0(Q[16]),
        .I1(\r_sreg_reg[17]_0 [16]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [16]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [16]),
        .O(\r_sreg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[16]_i_3 
       (.I0(\r_sreg_reg[17]_3 [16]),
        .I1(\r_sreg_reg[17]_4 [16]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [16]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [16]),
        .O(\r_sreg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[17]_i_2 
       (.I0(Q[17]),
        .I1(\r_sreg_reg[17]_0 [17]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [17]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [17]),
        .O(\r_sreg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[17]_i_3 
       (.I0(\r_sreg_reg[17]_3 [17]),
        .I1(\r_sreg_reg[17]_4 [17]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [17]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [17]),
        .O(\r_sreg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_2 
       (.I0(Q[1]),
        .I1(\r_sreg_reg[17]_0 [1]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [1]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [1]),
        .O(\r_sreg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_3 
       (.I0(\r_sreg_reg[17]_3 [1]),
        .I1(\r_sreg_reg[17]_4 [1]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [1]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [1]),
        .O(\r_sreg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_2 
       (.I0(Q[2]),
        .I1(\r_sreg_reg[17]_0 [2]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [2]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [2]),
        .O(\r_sreg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_3 
       (.I0(\r_sreg_reg[17]_3 [2]),
        .I1(\r_sreg_reg[17]_4 [2]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [2]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [2]),
        .O(\r_sreg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_2 
       (.I0(Q[3]),
        .I1(\r_sreg_reg[17]_0 [3]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [3]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [3]),
        .O(\r_sreg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_3 
       (.I0(\r_sreg_reg[17]_3 [3]),
        .I1(\r_sreg_reg[17]_4 [3]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [3]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [3]),
        .O(\r_sreg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_2 
       (.I0(Q[4]),
        .I1(\r_sreg_reg[17]_0 [4]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [4]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [4]),
        .O(\r_sreg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_3 
       (.I0(\r_sreg_reg[17]_3 [4]),
        .I1(\r_sreg_reg[17]_4 [4]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [4]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [4]),
        .O(\r_sreg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_2 
       (.I0(Q[5]),
        .I1(\r_sreg_reg[17]_0 [5]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [5]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [5]),
        .O(\r_sreg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_3 
       (.I0(\r_sreg_reg[17]_3 [5]),
        .I1(\r_sreg_reg[17]_4 [5]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [5]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [5]),
        .O(\r_sreg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_2 
       (.I0(Q[6]),
        .I1(\r_sreg_reg[17]_0 [6]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [6]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [6]),
        .O(\r_sreg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_3 
       (.I0(\r_sreg_reg[17]_3 [6]),
        .I1(\r_sreg_reg[17]_4 [6]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [6]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [6]),
        .O(\r_sreg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_2 
       (.I0(Q[7]),
        .I1(\r_sreg_reg[17]_0 [7]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [7]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [7]),
        .O(\r_sreg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_3 
       (.I0(\r_sreg_reg[17]_3 [7]),
        .I1(\r_sreg_reg[17]_4 [7]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [7]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [7]),
        .O(\r_sreg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_2 
       (.I0(Q[8]),
        .I1(\r_sreg_reg[17]_0 [8]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [8]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [8]),
        .O(\r_sreg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_3 
       (.I0(\r_sreg_reg[17]_3 [8]),
        .I1(\r_sreg_reg[17]_4 [8]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [8]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [8]),
        .O(\r_sreg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_2 
       (.I0(Q[9]),
        .I1(\r_sreg_reg[17]_0 [9]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_1 [9]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_2 [9]),
        .O(\r_sreg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_3 
       (.I0(\r_sreg_reg[17]_3 [9]),
        .I1(\r_sreg_reg[17]_4 [9]),
        .I2(r_rd_ptr[1]),
        .I3(\r_sreg_reg[17]_5 [9]),
        .I4(r_rd_ptr[0]),
        .I5(\r_sreg_reg[17]_6 [9]),
        .O(\r_sreg[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[0]),
        .Q(i_req_alloc_data[0]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[0]_i_1 
       (.I0(\r_sreg[0]_i_2__0_n_0 ),
        .I1(\r_sreg[0]_i_3__0_n_0 ),
        .O(r_data_buf__125[0]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[10]),
        .Q(i_req_alloc_data[10]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[10]_i_1 
       (.I0(\r_sreg[10]_i_2_n_0 ),
        .I1(\r_sreg[10]_i_3_n_0 ),
        .O(r_data_buf__125[10]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[11]),
        .Q(i_req_alloc_data[11]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[11]_i_1 
       (.I0(\r_sreg[11]_i_2_n_0 ),
        .I1(\r_sreg[11]_i_3_n_0 ),
        .O(r_data_buf__125[11]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[12]),
        .Q(i_req_alloc_data[12]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[12]_i_1 
       (.I0(\r_sreg[12]_i_2_n_0 ),
        .I1(\r_sreg[12]_i_3_n_0 ),
        .O(r_data_buf__125[12]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[13]),
        .Q(i_req_alloc_data[13]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[13]_i_1 
       (.I0(\r_sreg[13]_i_2_n_0 ),
        .I1(\r_sreg[13]_i_3_n_0 ),
        .O(r_data_buf__125[13]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[14]),
        .Q(i_req_alloc_data[14]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[14]_i_1 
       (.I0(\r_sreg[14]_i_2_n_0 ),
        .I1(\r_sreg[14]_i_3_n_0 ),
        .O(r_data_buf__125[14]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[15]),
        .Q(i_req_alloc_data[15]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[15]_i_1 
       (.I0(\r_sreg[15]_i_2_n_0 ),
        .I1(\r_sreg[15]_i_3_n_0 ),
        .O(r_data_buf__125[15]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[16]),
        .Q(i_req_alloc_data[16]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[16]_i_1 
       (.I0(\r_sreg[16]_i_2_n_0 ),
        .I1(\r_sreg[16]_i_3_n_0 ),
        .O(r_data_buf__125[16]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[17]),
        .Q(i_req_alloc_data[17]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[17]_i_1 
       (.I0(\r_sreg[17]_i_2_n_0 ),
        .I1(\r_sreg[17]_i_3_n_0 ),
        .O(r_data_buf__125[17]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[1]),
        .Q(i_req_alloc_data[1]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[1]_i_1 
       (.I0(\r_sreg[1]_i_2_n_0 ),
        .I1(\r_sreg[1]_i_3_n_0 ),
        .O(r_data_buf__125[1]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[2]),
        .Q(i_req_alloc_data[2]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[2]_i_1 
       (.I0(\r_sreg[2]_i_2_n_0 ),
        .I1(\r_sreg[2]_i_3_n_0 ),
        .O(r_data_buf__125[2]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[3]),
        .Q(i_req_alloc_data[3]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[3]_i_1 
       (.I0(\r_sreg[3]_i_2_n_0 ),
        .I1(\r_sreg[3]_i_3_n_0 ),
        .O(r_data_buf__125[3]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[4]),
        .Q(i_req_alloc_data[4]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[4]_i_1 
       (.I0(\r_sreg[4]_i_2_n_0 ),
        .I1(\r_sreg[4]_i_3_n_0 ),
        .O(r_data_buf__125[4]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[5]),
        .Q(i_req_alloc_data[5]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[5]_i_1 
       (.I0(\r_sreg[5]_i_2_n_0 ),
        .I1(\r_sreg[5]_i_3_n_0 ),
        .O(r_data_buf__125[5]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[6]),
        .Q(i_req_alloc_data[6]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[6]_i_1 
       (.I0(\r_sreg[6]_i_2_n_0 ),
        .I1(\r_sreg[6]_i_3_n_0 ),
        .O(r_data_buf__125[6]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[7]),
        .Q(i_req_alloc_data[7]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[7]_i_1 
       (.I0(\r_sreg[7]_i_2_n_0 ),
        .I1(\r_sreg[7]_i_3_n_0 ),
        .O(r_data_buf__125[7]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[8]),
        .Q(i_req_alloc_data[8]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[8]_i_1 
       (.I0(\r_sreg[8]_i_2_n_0 ),
        .I1(\r_sreg[8]_i_3_n_0 ),
        .O(r_data_buf__125[8]),
        .S(r_rd_ptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_alloc_rdy),
        .D(r_data_buf__125[9]),
        .Q(i_req_alloc_data[9]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[9]_i_1 
       (.I0(\r_sreg[9]_i_2_n_0 ),
        .I1(\r_sreg[9]_i_3_n_0 ),
        .O(r_data_buf__125[9]),
        .S(r_rd_ptr[2]));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids__parameterized1
   (i_req_dealloc_data,
    \r_sreg_reg[0]_0 ,
    Q,
    \r_sreg_reg[14]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[14]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[14]_2 ,
    \r_sreg_reg[14]_3 ,
    \r_sreg_reg[14]_4 ,
    \r_sreg_reg[14]_5 ,
    \r_sreg_reg[14]_6 ,
    i_rst_IBUF,
    o_req_dealloc_rdy,
    i_clk_IBUF_BUFG);
  output [14:0]i_req_dealloc_data;
  input \r_sreg_reg[0]_0 ;
  input [14:0]Q;
  input [14:0]\r_sreg_reg[14]_0 ;
  input \r_sreg_reg[0]_1 ;
  input [14:0]\r_sreg_reg[14]_1 ;
  input \r_sreg_reg[0]_2 ;
  input [14:0]\r_sreg_reg[14]_2 ;
  input [14:0]\r_sreg_reg[14]_3 ;
  input [14:0]\r_sreg_reg[14]_4 ;
  input [14:0]\r_sreg_reg[14]_5 ;
  input [14:0]\r_sreg_reg[14]_6 ;
  input i_rst_IBUF;
  input o_req_dealloc_rdy;
  input i_clk_IBUF_BUFG;

  wire [14:0]Q;
  wire i_clk_IBUF_BUFG;
  wire [14:0]i_req_dealloc_data;
  wire i_rst_IBUF;
  wire o_req_dealloc_rdy;
  wire [14:0]r_data_buf__104;
  wire \r_sreg[0]_i_2__2_n_0 ;
  wire \r_sreg[0]_i_3__2_n_0 ;
  wire \r_sreg[10]_i_2__0_n_0 ;
  wire \r_sreg[10]_i_3__0_n_0 ;
  wire \r_sreg[11]_i_2__0_n_0 ;
  wire \r_sreg[11]_i_3__0_n_0 ;
  wire \r_sreg[12]_i_2__0_n_0 ;
  wire \r_sreg[12]_i_3__0_n_0 ;
  wire \r_sreg[13]_i_2__0_n_0 ;
  wire \r_sreg[13]_i_3__0_n_0 ;
  wire \r_sreg[14]_i_2__0_n_0 ;
  wire \r_sreg[14]_i_3__0_n_0 ;
  wire \r_sreg[1]_i_2__0_n_0 ;
  wire \r_sreg[1]_i_3__0_n_0 ;
  wire \r_sreg[2]_i_2__0_n_0 ;
  wire \r_sreg[2]_i_3__0_n_0 ;
  wire \r_sreg[3]_i_2__0_n_0 ;
  wire \r_sreg[3]_i_3__0_n_0 ;
  wire \r_sreg[4]_i_2__0_n_0 ;
  wire \r_sreg[4]_i_3__0_n_0 ;
  wire \r_sreg[5]_i_2__0_n_0 ;
  wire \r_sreg[5]_i_3__0_n_0 ;
  wire \r_sreg[6]_i_2__0_n_0 ;
  wire \r_sreg[6]_i_3__0_n_0 ;
  wire \r_sreg[7]_i_2__0_n_0 ;
  wire \r_sreg[7]_i_3__0_n_0 ;
  wire \r_sreg[8]_i_2__0_n_0 ;
  wire \r_sreg[8]_i_3__0_n_0 ;
  wire \r_sreg[9]_i_2__0_n_0 ;
  wire \r_sreg[9]_i_3__0_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_2 ;
  wire [14:0]\r_sreg_reg[14]_0 ;
  wire [14:0]\r_sreg_reg[14]_1 ;
  wire [14:0]\r_sreg_reg[14]_2 ;
  wire [14:0]\r_sreg_reg[14]_3 ;
  wire [14:0]\r_sreg_reg[14]_4 ;
  wire [14:0]\r_sreg_reg[14]_5 ;
  wire [14:0]\r_sreg_reg[14]_6 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_2__2 
       (.I0(Q[0]),
        .I1(\r_sreg_reg[14]_0 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [0]),
        .O(\r_sreg[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [0]),
        .I1(\r_sreg_reg[14]_4 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [0]),
        .O(\r_sreg[0]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_2__0 
       (.I0(Q[10]),
        .I1(\r_sreg_reg[14]_0 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [10]),
        .O(\r_sreg[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [10]),
        .I1(\r_sreg_reg[14]_4 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [10]),
        .O(\r_sreg[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_2__0 
       (.I0(Q[11]),
        .I1(\r_sreg_reg[14]_0 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [11]),
        .O(\r_sreg[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [11]),
        .I1(\r_sreg_reg[14]_4 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [11]),
        .O(\r_sreg[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_2__0 
       (.I0(Q[12]),
        .I1(\r_sreg_reg[14]_0 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [12]),
        .O(\r_sreg[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [12]),
        .I1(\r_sreg_reg[14]_4 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [12]),
        .O(\r_sreg[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_2__0 
       (.I0(Q[13]),
        .I1(\r_sreg_reg[14]_0 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [13]),
        .O(\r_sreg[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [13]),
        .I1(\r_sreg_reg[14]_4 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [13]),
        .O(\r_sreg[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_2__0 
       (.I0(Q[14]),
        .I1(\r_sreg_reg[14]_0 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [14]),
        .O(\r_sreg[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [14]),
        .I1(\r_sreg_reg[14]_4 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [14]),
        .O(\r_sreg[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_2__0 
       (.I0(Q[1]),
        .I1(\r_sreg_reg[14]_0 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [1]),
        .O(\r_sreg[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [1]),
        .I1(\r_sreg_reg[14]_4 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [1]),
        .O(\r_sreg[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_2__0 
       (.I0(Q[2]),
        .I1(\r_sreg_reg[14]_0 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [2]),
        .O(\r_sreg[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [2]),
        .I1(\r_sreg_reg[14]_4 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [2]),
        .O(\r_sreg[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_2__0 
       (.I0(Q[3]),
        .I1(\r_sreg_reg[14]_0 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [3]),
        .O(\r_sreg[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [3]),
        .I1(\r_sreg_reg[14]_4 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [3]),
        .O(\r_sreg[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_2__0 
       (.I0(Q[4]),
        .I1(\r_sreg_reg[14]_0 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [4]),
        .O(\r_sreg[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [4]),
        .I1(\r_sreg_reg[14]_4 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [4]),
        .O(\r_sreg[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_2__0 
       (.I0(Q[5]),
        .I1(\r_sreg_reg[14]_0 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [5]),
        .O(\r_sreg[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [5]),
        .I1(\r_sreg_reg[14]_4 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [5]),
        .O(\r_sreg[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_2__0 
       (.I0(Q[6]),
        .I1(\r_sreg_reg[14]_0 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [6]),
        .O(\r_sreg[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [6]),
        .I1(\r_sreg_reg[14]_4 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [6]),
        .O(\r_sreg[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_2__0 
       (.I0(Q[7]),
        .I1(\r_sreg_reg[14]_0 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [7]),
        .O(\r_sreg[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [7]),
        .I1(\r_sreg_reg[14]_4 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [7]),
        .O(\r_sreg[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_2__0 
       (.I0(Q[8]),
        .I1(\r_sreg_reg[14]_0 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [8]),
        .O(\r_sreg[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [8]),
        .I1(\r_sreg_reg[14]_4 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [8]),
        .O(\r_sreg[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_2__0 
       (.I0(Q[9]),
        .I1(\r_sreg_reg[14]_0 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [9]),
        .O(\r_sreg[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_3__0 
       (.I0(\r_sreg_reg[14]_3 [9]),
        .I1(\r_sreg_reg[14]_4 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [9]),
        .O(\r_sreg[9]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[0]),
        .Q(i_req_dealloc_data[0]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[0]_i_1__0 
       (.I0(\r_sreg[0]_i_2__2_n_0 ),
        .I1(\r_sreg[0]_i_3__2_n_0 ),
        .O(r_data_buf__104[0]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[10]),
        .Q(i_req_dealloc_data[10]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[10]_i_1__0 
       (.I0(\r_sreg[10]_i_2__0_n_0 ),
        .I1(\r_sreg[10]_i_3__0_n_0 ),
        .O(r_data_buf__104[10]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[11]),
        .Q(i_req_dealloc_data[11]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[11]_i_1__0 
       (.I0(\r_sreg[11]_i_2__0_n_0 ),
        .I1(\r_sreg[11]_i_3__0_n_0 ),
        .O(r_data_buf__104[11]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[12]),
        .Q(i_req_dealloc_data[12]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[12]_i_1__0 
       (.I0(\r_sreg[12]_i_2__0_n_0 ),
        .I1(\r_sreg[12]_i_3__0_n_0 ),
        .O(r_data_buf__104[12]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[13]),
        .Q(i_req_dealloc_data[13]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[13]_i_1__0 
       (.I0(\r_sreg[13]_i_2__0_n_0 ),
        .I1(\r_sreg[13]_i_3__0_n_0 ),
        .O(r_data_buf__104[13]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[14]),
        .Q(i_req_dealloc_data[14]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[14]_i_1__0 
       (.I0(\r_sreg[14]_i_2__0_n_0 ),
        .I1(\r_sreg[14]_i_3__0_n_0 ),
        .O(r_data_buf__104[14]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[1]),
        .Q(i_req_dealloc_data[1]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[1]_i_1__0 
       (.I0(\r_sreg[1]_i_2__0_n_0 ),
        .I1(\r_sreg[1]_i_3__0_n_0 ),
        .O(r_data_buf__104[1]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[2]),
        .Q(i_req_dealloc_data[2]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[2]_i_1__0 
       (.I0(\r_sreg[2]_i_2__0_n_0 ),
        .I1(\r_sreg[2]_i_3__0_n_0 ),
        .O(r_data_buf__104[2]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[3]),
        .Q(i_req_dealloc_data[3]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[3]_i_1__0 
       (.I0(\r_sreg[3]_i_2__0_n_0 ),
        .I1(\r_sreg[3]_i_3__0_n_0 ),
        .O(r_data_buf__104[3]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[4]),
        .Q(i_req_dealloc_data[4]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[4]_i_1__0 
       (.I0(\r_sreg[4]_i_2__0_n_0 ),
        .I1(\r_sreg[4]_i_3__0_n_0 ),
        .O(r_data_buf__104[4]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[5]),
        .Q(i_req_dealloc_data[5]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[5]_i_1__0 
       (.I0(\r_sreg[5]_i_2__0_n_0 ),
        .I1(\r_sreg[5]_i_3__0_n_0 ),
        .O(r_data_buf__104[5]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[6]),
        .Q(i_req_dealloc_data[6]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[6]_i_1__0 
       (.I0(\r_sreg[6]_i_2__0_n_0 ),
        .I1(\r_sreg[6]_i_3__0_n_0 ),
        .O(r_data_buf__104[6]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[7]),
        .Q(i_req_dealloc_data[7]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[7]_i_1__0 
       (.I0(\r_sreg[7]_i_2__0_n_0 ),
        .I1(\r_sreg[7]_i_3__0_n_0 ),
        .O(r_data_buf__104[7]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[8]),
        .Q(i_req_dealloc_data[8]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[8]_i_1__0 
       (.I0(\r_sreg[8]_i_2__0_n_0 ),
        .I1(\r_sreg[8]_i_3__0_n_0 ),
        .O(r_data_buf__104[8]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(o_req_dealloc_rdy),
        .D(r_data_buf__104[9]),
        .Q(i_req_dealloc_data[9]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[9]_i_1__0 
       (.I0(\r_sreg[9]_i_2__0_n_0 ),
        .I1(\r_sreg[9]_i_3__0_n_0 ),
        .O(r_data_buf__104[9]),
        .S(\r_sreg_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids__parameterized1_10
   (o_rep_dealloc_data_OBUF,
    \r_sreg_reg[0]_0 ,
    Q,
    \r_sreg_reg[14]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[14]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[14]_2 ,
    \r_sreg_reg[14]_3 ,
    \r_sreg_reg[14]_4 ,
    \r_sreg_reg[14]_5 ,
    \r_sreg_reg[14]_6 ,
    i_rst_IBUF,
    i_rep_dealloc_rdy_IBUF,
    i_clk_IBUF_BUFG);
  output [14:0]o_rep_dealloc_data_OBUF;
  input \r_sreg_reg[0]_0 ;
  input [14:0]Q;
  input [14:0]\r_sreg_reg[14]_0 ;
  input \r_sreg_reg[0]_1 ;
  input [14:0]\r_sreg_reg[14]_1 ;
  input \r_sreg_reg[0]_2 ;
  input [14:0]\r_sreg_reg[14]_2 ;
  input [14:0]\r_sreg_reg[14]_3 ;
  input [14:0]\r_sreg_reg[14]_4 ;
  input [14:0]\r_sreg_reg[14]_5 ;
  input [14:0]\r_sreg_reg[14]_6 ;
  input i_rst_IBUF;
  input i_rep_dealloc_rdy_IBUF;
  input i_clk_IBUF_BUFG;

  wire [14:0]Q;
  wire i_clk_IBUF_BUFG;
  wire i_rep_dealloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire [14:0]o_rep_dealloc_data_OBUF;
  wire [14:0]r_data_buf__104;
  wire \r_sreg[0]_i_2__6_n_0 ;
  wire \r_sreg[0]_i_3__6_n_0 ;
  wire \r_sreg[10]_i_2__2_n_0 ;
  wire \r_sreg[10]_i_3__2_n_0 ;
  wire \r_sreg[11]_i_2__2_n_0 ;
  wire \r_sreg[11]_i_3__2_n_0 ;
  wire \r_sreg[12]_i_2__2_n_0 ;
  wire \r_sreg[12]_i_3__2_n_0 ;
  wire \r_sreg[13]_i_2__2_n_0 ;
  wire \r_sreg[13]_i_3__2_n_0 ;
  wire \r_sreg[14]_i_2__2_n_0 ;
  wire \r_sreg[14]_i_3__2_n_0 ;
  wire \r_sreg[1]_i_2__2_n_0 ;
  wire \r_sreg[1]_i_3__2_n_0 ;
  wire \r_sreg[2]_i_2__2_n_0 ;
  wire \r_sreg[2]_i_3__2_n_0 ;
  wire \r_sreg[3]_i_2__2_n_0 ;
  wire \r_sreg[3]_i_3__2_n_0 ;
  wire \r_sreg[4]_i_2__2_n_0 ;
  wire \r_sreg[4]_i_3__2_n_0 ;
  wire \r_sreg[5]_i_2__2_n_0 ;
  wire \r_sreg[5]_i_3__2_n_0 ;
  wire \r_sreg[6]_i_2__2_n_0 ;
  wire \r_sreg[6]_i_3__2_n_0 ;
  wire \r_sreg[7]_i_2__2_n_0 ;
  wire \r_sreg[7]_i_3__2_n_0 ;
  wire \r_sreg[8]_i_2__2_n_0 ;
  wire \r_sreg[8]_i_3__2_n_0 ;
  wire \r_sreg[9]_i_2__2_n_0 ;
  wire \r_sreg[9]_i_3__2_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_2 ;
  wire [14:0]\r_sreg_reg[14]_0 ;
  wire [14:0]\r_sreg_reg[14]_1 ;
  wire [14:0]\r_sreg_reg[14]_2 ;
  wire [14:0]\r_sreg_reg[14]_3 ;
  wire [14:0]\r_sreg_reg[14]_4 ;
  wire [14:0]\r_sreg_reg[14]_5 ;
  wire [14:0]\r_sreg_reg[14]_6 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_2__6 
       (.I0(Q[0]),
        .I1(\r_sreg_reg[14]_0 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [0]),
        .O(\r_sreg[0]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_3__6 
       (.I0(\r_sreg_reg[14]_3 [0]),
        .I1(\r_sreg_reg[14]_4 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [0]),
        .O(\r_sreg[0]_i_3__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_2__2 
       (.I0(Q[10]),
        .I1(\r_sreg_reg[14]_0 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [10]),
        .O(\r_sreg[10]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [10]),
        .I1(\r_sreg_reg[14]_4 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [10]),
        .O(\r_sreg[10]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_2__2 
       (.I0(Q[11]),
        .I1(\r_sreg_reg[14]_0 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [11]),
        .O(\r_sreg[11]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [11]),
        .I1(\r_sreg_reg[14]_4 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [11]),
        .O(\r_sreg[11]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_2__2 
       (.I0(Q[12]),
        .I1(\r_sreg_reg[14]_0 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [12]),
        .O(\r_sreg[12]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [12]),
        .I1(\r_sreg_reg[14]_4 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [12]),
        .O(\r_sreg[12]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_2__2 
       (.I0(Q[13]),
        .I1(\r_sreg_reg[14]_0 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [13]),
        .O(\r_sreg[13]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [13]),
        .I1(\r_sreg_reg[14]_4 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [13]),
        .O(\r_sreg[13]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_2__2 
       (.I0(Q[14]),
        .I1(\r_sreg_reg[14]_0 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [14]),
        .O(\r_sreg[14]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [14]),
        .I1(\r_sreg_reg[14]_4 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [14]),
        .O(\r_sreg[14]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_2__2 
       (.I0(Q[1]),
        .I1(\r_sreg_reg[14]_0 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [1]),
        .O(\r_sreg[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [1]),
        .I1(\r_sreg_reg[14]_4 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [1]),
        .O(\r_sreg[1]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_2__2 
       (.I0(Q[2]),
        .I1(\r_sreg_reg[14]_0 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [2]),
        .O(\r_sreg[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [2]),
        .I1(\r_sreg_reg[14]_4 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [2]),
        .O(\r_sreg[2]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_2__2 
       (.I0(Q[3]),
        .I1(\r_sreg_reg[14]_0 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [3]),
        .O(\r_sreg[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [3]),
        .I1(\r_sreg_reg[14]_4 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [3]),
        .O(\r_sreg[3]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_2__2 
       (.I0(Q[4]),
        .I1(\r_sreg_reg[14]_0 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [4]),
        .O(\r_sreg[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [4]),
        .I1(\r_sreg_reg[14]_4 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [4]),
        .O(\r_sreg[4]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_2__2 
       (.I0(Q[5]),
        .I1(\r_sreg_reg[14]_0 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [5]),
        .O(\r_sreg[5]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [5]),
        .I1(\r_sreg_reg[14]_4 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [5]),
        .O(\r_sreg[5]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_2__2 
       (.I0(Q[6]),
        .I1(\r_sreg_reg[14]_0 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [6]),
        .O(\r_sreg[6]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [6]),
        .I1(\r_sreg_reg[14]_4 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [6]),
        .O(\r_sreg[6]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_2__2 
       (.I0(Q[7]),
        .I1(\r_sreg_reg[14]_0 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [7]),
        .O(\r_sreg[7]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [7]),
        .I1(\r_sreg_reg[14]_4 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [7]),
        .O(\r_sreg[7]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_2__2 
       (.I0(Q[8]),
        .I1(\r_sreg_reg[14]_0 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [8]),
        .O(\r_sreg[8]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [8]),
        .I1(\r_sreg_reg[14]_4 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [8]),
        .O(\r_sreg[8]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_2__2 
       (.I0(Q[9]),
        .I1(\r_sreg_reg[14]_0 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [9]),
        .O(\r_sreg[9]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_3__2 
       (.I0(\r_sreg_reg[14]_3 [9]),
        .I1(\r_sreg_reg[14]_4 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [9]),
        .O(\r_sreg[9]_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[0]),
        .Q(o_rep_dealloc_data_OBUF[0]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[0]_i_1__2 
       (.I0(\r_sreg[0]_i_2__6_n_0 ),
        .I1(\r_sreg[0]_i_3__6_n_0 ),
        .O(r_data_buf__104[0]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[10]),
        .Q(o_rep_dealloc_data_OBUF[10]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[10]_i_1__2 
       (.I0(\r_sreg[10]_i_2__2_n_0 ),
        .I1(\r_sreg[10]_i_3__2_n_0 ),
        .O(r_data_buf__104[10]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[11]),
        .Q(o_rep_dealloc_data_OBUF[11]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[11]_i_1__2 
       (.I0(\r_sreg[11]_i_2__2_n_0 ),
        .I1(\r_sreg[11]_i_3__2_n_0 ),
        .O(r_data_buf__104[11]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[12]),
        .Q(o_rep_dealloc_data_OBUF[12]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[12]_i_1__2 
       (.I0(\r_sreg[12]_i_2__2_n_0 ),
        .I1(\r_sreg[12]_i_3__2_n_0 ),
        .O(r_data_buf__104[12]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[13]),
        .Q(o_rep_dealloc_data_OBUF[13]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[13]_i_1__2 
       (.I0(\r_sreg[13]_i_2__2_n_0 ),
        .I1(\r_sreg[13]_i_3__2_n_0 ),
        .O(r_data_buf__104[13]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[14]),
        .Q(o_rep_dealloc_data_OBUF[14]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[14]_i_1__2 
       (.I0(\r_sreg[14]_i_2__2_n_0 ),
        .I1(\r_sreg[14]_i_3__2_n_0 ),
        .O(r_data_buf__104[14]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[1]),
        .Q(o_rep_dealloc_data_OBUF[1]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[1]_i_1__2 
       (.I0(\r_sreg[1]_i_2__2_n_0 ),
        .I1(\r_sreg[1]_i_3__2_n_0 ),
        .O(r_data_buf__104[1]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[2]),
        .Q(o_rep_dealloc_data_OBUF[2]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[2]_i_1__2 
       (.I0(\r_sreg[2]_i_2__2_n_0 ),
        .I1(\r_sreg[2]_i_3__2_n_0 ),
        .O(r_data_buf__104[2]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[3]),
        .Q(o_rep_dealloc_data_OBUF[3]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[3]_i_1__2 
       (.I0(\r_sreg[3]_i_2__2_n_0 ),
        .I1(\r_sreg[3]_i_3__2_n_0 ),
        .O(r_data_buf__104[3]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[4]),
        .Q(o_rep_dealloc_data_OBUF[4]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[4]_i_1__2 
       (.I0(\r_sreg[4]_i_2__2_n_0 ),
        .I1(\r_sreg[4]_i_3__2_n_0 ),
        .O(r_data_buf__104[4]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[5]),
        .Q(o_rep_dealloc_data_OBUF[5]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[5]_i_1__2 
       (.I0(\r_sreg[5]_i_2__2_n_0 ),
        .I1(\r_sreg[5]_i_3__2_n_0 ),
        .O(r_data_buf__104[5]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[6]),
        .Q(o_rep_dealloc_data_OBUF[6]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[6]_i_1__2 
       (.I0(\r_sreg[6]_i_2__2_n_0 ),
        .I1(\r_sreg[6]_i_3__2_n_0 ),
        .O(r_data_buf__104[6]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[7]),
        .Q(o_rep_dealloc_data_OBUF[7]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[7]_i_1__2 
       (.I0(\r_sreg[7]_i_2__2_n_0 ),
        .I1(\r_sreg[7]_i_3__2_n_0 ),
        .O(r_data_buf__104[7]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[8]),
        .Q(o_rep_dealloc_data_OBUF[8]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[8]_i_1__2 
       (.I0(\r_sreg[8]_i_2__2_n_0 ),
        .I1(\r_sreg[8]_i_3__2_n_0 ),
        .O(r_data_buf__104[8]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_dealloc_rdy_IBUF),
        .D(r_data_buf__104[9]),
        .Q(o_rep_dealloc_data_OBUF[9]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[9]_i_1__2 
       (.I0(\r_sreg[9]_i_2__2_n_0 ),
        .I1(\r_sreg[9]_i_3__2_n_0 ),
        .O(r_data_buf__104[9]),
        .S(\r_sreg_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "skids" *) 
module skids__parameterized1_13
   (o_rep_alloc_data_OBUF,
    \r_sreg_reg[0]_0 ,
    Q,
    \r_sreg_reg[14]_0 ,
    \r_sreg_reg[0]_1 ,
    \r_sreg_reg[14]_1 ,
    \r_sreg_reg[0]_2 ,
    \r_sreg_reg[14]_2 ,
    \r_sreg_reg[14]_3 ,
    \r_sreg_reg[14]_4 ,
    \r_sreg_reg[14]_5 ,
    \r_sreg_reg[14]_6 ,
    i_rst_IBUF,
    i_rep_alloc_rdy_IBUF,
    i_clk_IBUF_BUFG);
  output [14:0]o_rep_alloc_data_OBUF;
  input \r_sreg_reg[0]_0 ;
  input [14:0]Q;
  input [14:0]\r_sreg_reg[14]_0 ;
  input \r_sreg_reg[0]_1 ;
  input [14:0]\r_sreg_reg[14]_1 ;
  input \r_sreg_reg[0]_2 ;
  input [14:0]\r_sreg_reg[14]_2 ;
  input [14:0]\r_sreg_reg[14]_3 ;
  input [14:0]\r_sreg_reg[14]_4 ;
  input [14:0]\r_sreg_reg[14]_5 ;
  input [14:0]\r_sreg_reg[14]_6 ;
  input i_rst_IBUF;
  input i_rep_alloc_rdy_IBUF;
  input i_clk_IBUF_BUFG;

  wire [14:0]Q;
  wire i_clk_IBUF_BUFG;
  wire i_rep_alloc_rdy_IBUF;
  wire i_rst_IBUF;
  wire [14:0]o_rep_alloc_data_OBUF;
  wire [14:0]r_data_buf__104;
  wire \r_sreg[0]_i_2__4_n_0 ;
  wire \r_sreg[0]_i_3__4_n_0 ;
  wire \r_sreg[10]_i_2__1_n_0 ;
  wire \r_sreg[10]_i_3__1_n_0 ;
  wire \r_sreg[11]_i_2__1_n_0 ;
  wire \r_sreg[11]_i_3__1_n_0 ;
  wire \r_sreg[12]_i_2__1_n_0 ;
  wire \r_sreg[12]_i_3__1_n_0 ;
  wire \r_sreg[13]_i_2__1_n_0 ;
  wire \r_sreg[13]_i_3__1_n_0 ;
  wire \r_sreg[14]_i_2__1_n_0 ;
  wire \r_sreg[14]_i_3__1_n_0 ;
  wire \r_sreg[1]_i_2__1_n_0 ;
  wire \r_sreg[1]_i_3__1_n_0 ;
  wire \r_sreg[2]_i_2__1_n_0 ;
  wire \r_sreg[2]_i_3__1_n_0 ;
  wire \r_sreg[3]_i_2__1_n_0 ;
  wire \r_sreg[3]_i_3__1_n_0 ;
  wire \r_sreg[4]_i_2__1_n_0 ;
  wire \r_sreg[4]_i_3__1_n_0 ;
  wire \r_sreg[5]_i_2__1_n_0 ;
  wire \r_sreg[5]_i_3__1_n_0 ;
  wire \r_sreg[6]_i_2__1_n_0 ;
  wire \r_sreg[6]_i_3__1_n_0 ;
  wire \r_sreg[7]_i_2__1_n_0 ;
  wire \r_sreg[7]_i_3__1_n_0 ;
  wire \r_sreg[8]_i_2__1_n_0 ;
  wire \r_sreg[8]_i_3__1_n_0 ;
  wire \r_sreg[9]_i_2__1_n_0 ;
  wire \r_sreg[9]_i_3__1_n_0 ;
  wire \r_sreg_reg[0]_0 ;
  wire \r_sreg_reg[0]_1 ;
  wire \r_sreg_reg[0]_2 ;
  wire [14:0]\r_sreg_reg[14]_0 ;
  wire [14:0]\r_sreg_reg[14]_1 ;
  wire [14:0]\r_sreg_reg[14]_2 ;
  wire [14:0]\r_sreg_reg[14]_3 ;
  wire [14:0]\r_sreg_reg[14]_4 ;
  wire [14:0]\r_sreg_reg[14]_5 ;
  wire [14:0]\r_sreg_reg[14]_6 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_2__4 
       (.I0(Q[0]),
        .I1(\r_sreg_reg[14]_0 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [0]),
        .O(\r_sreg[0]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[0]_i_3__4 
       (.I0(\r_sreg_reg[14]_3 [0]),
        .I1(\r_sreg_reg[14]_4 [0]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [0]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [0]),
        .O(\r_sreg[0]_i_3__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_2__1 
       (.I0(Q[10]),
        .I1(\r_sreg_reg[14]_0 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [10]),
        .O(\r_sreg[10]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[10]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [10]),
        .I1(\r_sreg_reg[14]_4 [10]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [10]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [10]),
        .O(\r_sreg[10]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_2__1 
       (.I0(Q[11]),
        .I1(\r_sreg_reg[14]_0 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [11]),
        .O(\r_sreg[11]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[11]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [11]),
        .I1(\r_sreg_reg[14]_4 [11]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [11]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [11]),
        .O(\r_sreg[11]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_2__1 
       (.I0(Q[12]),
        .I1(\r_sreg_reg[14]_0 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [12]),
        .O(\r_sreg[12]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[12]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [12]),
        .I1(\r_sreg_reg[14]_4 [12]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [12]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [12]),
        .O(\r_sreg[12]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_2__1 
       (.I0(Q[13]),
        .I1(\r_sreg_reg[14]_0 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [13]),
        .O(\r_sreg[13]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[13]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [13]),
        .I1(\r_sreg_reg[14]_4 [13]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [13]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [13]),
        .O(\r_sreg[13]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_2__1 
       (.I0(Q[14]),
        .I1(\r_sreg_reg[14]_0 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [14]),
        .O(\r_sreg[14]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[14]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [14]),
        .I1(\r_sreg_reg[14]_4 [14]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [14]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [14]),
        .O(\r_sreg[14]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_2__1 
       (.I0(Q[1]),
        .I1(\r_sreg_reg[14]_0 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [1]),
        .O(\r_sreg[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[1]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [1]),
        .I1(\r_sreg_reg[14]_4 [1]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [1]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [1]),
        .O(\r_sreg[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_2__1 
       (.I0(Q[2]),
        .I1(\r_sreg_reg[14]_0 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [2]),
        .O(\r_sreg[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[2]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [2]),
        .I1(\r_sreg_reg[14]_4 [2]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [2]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [2]),
        .O(\r_sreg[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_2__1 
       (.I0(Q[3]),
        .I1(\r_sreg_reg[14]_0 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [3]),
        .O(\r_sreg[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[3]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [3]),
        .I1(\r_sreg_reg[14]_4 [3]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [3]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [3]),
        .O(\r_sreg[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_2__1 
       (.I0(Q[4]),
        .I1(\r_sreg_reg[14]_0 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [4]),
        .O(\r_sreg[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[4]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [4]),
        .I1(\r_sreg_reg[14]_4 [4]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [4]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [4]),
        .O(\r_sreg[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_2__1 
       (.I0(Q[5]),
        .I1(\r_sreg_reg[14]_0 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [5]),
        .O(\r_sreg[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[5]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [5]),
        .I1(\r_sreg_reg[14]_4 [5]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [5]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [5]),
        .O(\r_sreg[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_2__1 
       (.I0(Q[6]),
        .I1(\r_sreg_reg[14]_0 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [6]),
        .O(\r_sreg[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[6]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [6]),
        .I1(\r_sreg_reg[14]_4 [6]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [6]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [6]),
        .O(\r_sreg[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_2__1 
       (.I0(Q[7]),
        .I1(\r_sreg_reg[14]_0 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [7]),
        .O(\r_sreg[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[7]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [7]),
        .I1(\r_sreg_reg[14]_4 [7]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [7]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [7]),
        .O(\r_sreg[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_2__1 
       (.I0(Q[8]),
        .I1(\r_sreg_reg[14]_0 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [8]),
        .O(\r_sreg[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[8]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [8]),
        .I1(\r_sreg_reg[14]_4 [8]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [8]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [8]),
        .O(\r_sreg[8]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_2__1 
       (.I0(Q[9]),
        .I1(\r_sreg_reg[14]_0 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_1 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_2 [9]),
        .O(\r_sreg[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_sreg[9]_i_3__1 
       (.I0(\r_sreg_reg[14]_3 [9]),
        .I1(\r_sreg_reg[14]_4 [9]),
        .I2(\r_sreg_reg[0]_1 ),
        .I3(\r_sreg_reg[14]_5 [9]),
        .I4(\r_sreg_reg[0]_2 ),
        .I5(\r_sreg_reg[14]_6 [9]),
        .O(\r_sreg[9]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[0]),
        .Q(o_rep_alloc_data_OBUF[0]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[0]_i_1__1 
       (.I0(\r_sreg[0]_i_2__4_n_0 ),
        .I1(\r_sreg[0]_i_3__4_n_0 ),
        .O(r_data_buf__104[0]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[10]),
        .Q(o_rep_alloc_data_OBUF[10]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[10]_i_1__1 
       (.I0(\r_sreg[10]_i_2__1_n_0 ),
        .I1(\r_sreg[10]_i_3__1_n_0 ),
        .O(r_data_buf__104[10]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[11]),
        .Q(o_rep_alloc_data_OBUF[11]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[11]_i_1__1 
       (.I0(\r_sreg[11]_i_2__1_n_0 ),
        .I1(\r_sreg[11]_i_3__1_n_0 ),
        .O(r_data_buf__104[11]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[12]),
        .Q(o_rep_alloc_data_OBUF[12]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[12]_i_1__1 
       (.I0(\r_sreg[12]_i_2__1_n_0 ),
        .I1(\r_sreg[12]_i_3__1_n_0 ),
        .O(r_data_buf__104[12]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[13]),
        .Q(o_rep_alloc_data_OBUF[13]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[13]_i_1__1 
       (.I0(\r_sreg[13]_i_2__1_n_0 ),
        .I1(\r_sreg[13]_i_3__1_n_0 ),
        .O(r_data_buf__104[13]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[14]),
        .Q(o_rep_alloc_data_OBUF[14]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[14]_i_1__1 
       (.I0(\r_sreg[14]_i_2__1_n_0 ),
        .I1(\r_sreg[14]_i_3__1_n_0 ),
        .O(r_data_buf__104[14]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[1]),
        .Q(o_rep_alloc_data_OBUF[1]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[1]_i_1__1 
       (.I0(\r_sreg[1]_i_2__1_n_0 ),
        .I1(\r_sreg[1]_i_3__1_n_0 ),
        .O(r_data_buf__104[1]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[2]),
        .Q(o_rep_alloc_data_OBUF[2]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[2]_i_1__1 
       (.I0(\r_sreg[2]_i_2__1_n_0 ),
        .I1(\r_sreg[2]_i_3__1_n_0 ),
        .O(r_data_buf__104[2]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[3]),
        .Q(o_rep_alloc_data_OBUF[3]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[3]_i_1__1 
       (.I0(\r_sreg[3]_i_2__1_n_0 ),
        .I1(\r_sreg[3]_i_3__1_n_0 ),
        .O(r_data_buf__104[3]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[4]),
        .Q(o_rep_alloc_data_OBUF[4]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[4]_i_1__1 
       (.I0(\r_sreg[4]_i_2__1_n_0 ),
        .I1(\r_sreg[4]_i_3__1_n_0 ),
        .O(r_data_buf__104[4]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[5]),
        .Q(o_rep_alloc_data_OBUF[5]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[5]_i_1__1 
       (.I0(\r_sreg[5]_i_2__1_n_0 ),
        .I1(\r_sreg[5]_i_3__1_n_0 ),
        .O(r_data_buf__104[5]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[6]),
        .Q(o_rep_alloc_data_OBUF[6]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[6]_i_1__1 
       (.I0(\r_sreg[6]_i_2__1_n_0 ),
        .I1(\r_sreg[6]_i_3__1_n_0 ),
        .O(r_data_buf__104[6]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[7]),
        .Q(o_rep_alloc_data_OBUF[7]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[7]_i_1__1 
       (.I0(\r_sreg[7]_i_2__1_n_0 ),
        .I1(\r_sreg[7]_i_3__1_n_0 ),
        .O(r_data_buf__104[7]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[8]),
        .Q(o_rep_alloc_data_OBUF[8]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[8]_i_1__1 
       (.I0(\r_sreg[8]_i_2__1_n_0 ),
        .I1(\r_sreg[8]_i_3__1_n_0 ),
        .O(r_data_buf__104[8]),
        .S(\r_sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sreg_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_rep_alloc_rdy_IBUF),
        .D(r_data_buf__104[9]),
        .Q(o_rep_alloc_data_OBUF[9]),
        .R(i_rst_IBUF));
  MUXF7 \r_sreg_reg[9]_i_1__1 
       (.I0(\r_sreg[9]_i_2__1_n_0 ),
        .I1(\r_sreg[9]_i_3__1_n_0 ),
        .O(r_data_buf__104[9]),
        .S(\r_sreg_reg[0]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
