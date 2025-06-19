`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 19:52:41
// Design Name: 
// Module Name: axis_fifo
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


module axis_fifo #(
        parameter RESET_N           = 0,            // Set for active low reset
        parameter OREG_EN           = 0,            // Output reg enable
        parameter DATA_W            = 32,           // Stream data width
        parameter BUFFER_D          = 7             // Stream buffer depth | must be 2^n - R ,i.e., one less than the nearest power of 2
                                                    // Valid values for BUFFER_D = 7, 15, ...
    )(
        input wire                  s_aclk,
        input wire                  s_areset,
        // AXI stream slave
        input wire                  s_tvalid,
        input wire  [DATA_W-1:0]    s_tdata,
        // AXI stream master
        input wire                  m_tready,
                
        // AXI stream slave
        output wire                 s_tready,
        // AXI stream master
        output wire                 m_tvalid,
        output wire [DATA_W-1:0]    m_tdata
    );
    
    localparam THRESH       = BUFFER_D;             // The max number of packets stored until buffer is considered full.
    localparam R            = 1;                    // This parameter indicates how many inputs we would have to buffer
                                                    // Essentially, this is determined by the number of cycles it takes
                                                    // to make a decision and toggle s_tready.
    localparam BUF_LEN      = THRESH + R;
    localparam BUF_W        = $clog2(BUF_LEN);
    
    wire                            reset;
    wire    [BUF_W:0]               w_skid_step;
    wire    [BUF_W-1:0]             w_rd_ptr_prev;              // The current read pointer offset by R backwards
    wire    [BUF_W-1:0]             w_wr_ptr_next;              // The current write pointer offset by 1 forwards
    wire    [BUF_LEN-1:0]           w_wr_data_en;
    wire    [BUF_LEN-1:0]           w_rd_data_en;
    wire                            w_wr_valid;
    wire                            w_rd_valid;
	wire	[DATA_W-1:0]			w_sdata;
    wire                            w_mtvalid;
    wire    [DATA_W-1:0]            w_mtdata;
    wire                            w_mt_vld;
    wire    [DATA_W-1:0]            w_mt_data;
    wire                            w_omt_vld;
    wire    [DATA_W-1:0]            w_omt_data;
    
    reg     [0:BUF_LEN-1]           r_valid_buf;
    reg     [DATA_W-1:0]            r_data_buf[0:BUF_LEN-1];
    reg                             r_sready;
    
    reg     [BUF_W-1:0]             r_wr_ptr;
    reg     [BUF_W-1:0]             r_rd_ptr;
    reg     [BUF_W:0]               r_skid_cntr;
    reg                             r_almost_full;
    
    integer k;
    
    assign w_skid_step = (r_sready) ? 1 : (s_tvalid) ? -1 : 0;
    assign w_rd_ptr_prev = r_rd_ptr - R;
    assign w_wr_ptr_next = r_wr_ptr + 1;
    assign w_wr_valid = (s_tvalid && (r_sready || r_skid_cntr)) ? 1'b1 : 1'b0;
    assign w_rd_valid = (m_tready && w_mtvalid) ? 1'b1 : 1'b0;
    assign w_wr_data_en = w_wr_valid << r_wr_ptr;
    assign w_rd_data_en = w_rd_valid << r_rd_ptr;
    assign w_mtvalid = r_valid_buf[r_rd_ptr];                                       // Downstream tvalid signal is not registered after decoder here
    assign w_mtdata = r_data_buf[r_rd_ptr];                                         // Downstream tdata signal is not registered after decoder here
    
    assign w_sdata = s_tdata;
    assign w_omt_vld = w_mt_vld;
    assign w_omt_data = w_mt_data;
    
    assign s_tready = r_sready;
    
    generate
        if (RESET_N) assign reset = ~s_areset;
        else assign reset = s_areset;
    endgenerate
    
    generate
        if (OREG_EN) begin
            reg                     r_mtvld;
            reg     [DATA_W-1:0]    r_mtdata;
            
            assign m_tvalid = r_mtvld;
            assign m_tdata = r_mtdata;
            
            always @(posedge s_aclk) begin
                r_mtvld <= (reset) ? 0 : w_omt_vld;
                r_mtdata <= (reset) ? 0 : w_omt_data;
            end
        end
        else begin
            assign m_tvalid = w_omt_vld;
            assign m_tdata = w_omt_data;
        end
    endgenerate
    
    // Output skid buffer
    skids #(
        .DATA_W(1)
    ) skid_mst_vld_i (
        .i_clk(s_aclk),
        .i_reset(reset),
        .i_skid_en(m_tready),
        .i_din(w_mtvalid),
        
        .o_dout(w_mt_vld)
    );
    
    skids #(
        .DATA_W(DATA_W)
    ) skid_mst_data_i (
        .i_clk(s_aclk),
        .i_reset(reset),
        .i_skid_en(m_tready),
        .i_din(w_mtdata),
        
        .o_dout(w_mt_data)
    );
    
    // Input Skid buffer counter
    always @(posedge s_aclk) begin
        if (reset) r_skid_cntr <= 0;
        else r_skid_cntr <= ((r_skid_cntr == R && r_sready) || (r_skid_cntr == 0 && !r_sready)) ? r_skid_cntr : r_skid_cntr + w_skid_step;
    end
    
    // Write pointer
    always @(posedge s_aclk) begin
        if (reset) r_wr_ptr <= 0;
        else r_wr_ptr <= (w_wr_valid) ? r_wr_ptr + 1 : r_wr_ptr;
    end
    
    // Read pointer
    always @(posedge s_aclk) begin
        if (reset) r_rd_ptr <= 0;
        else r_rd_ptr <= (w_rd_valid) ? r_rd_ptr + 1 : r_rd_ptr;
    end
    
    // s_tready register
    always @(posedge s_aclk) begin
        if (reset || (r_almost_full && w_rd_valid)) r_sready <= 1'b1;           // If else assumes priority and hence this condition wins in the case of simultaneous read and write
        else if (r_almost_full && w_wr_valid) r_sready <= 1'b0;
        else r_sready <= r_sready;
    end
    
    // Buffer
    always @(posedge s_aclk) begin
        for (k = 0; k < BUF_LEN; k = k+1) begin
            // Writes will set corresponding valid bit and reads will clear them
            r_valid_buf[k] <= (reset || w_rd_data_en[k]) ? 1'b0 : (w_wr_data_en[k]) ? 1'b1 : r_valid_buf[k];
            r_data_buf[k] <= (reset) ? 'b0 : (w_wr_data_en[k]) ? w_sdata : r_data_buf[k];
        end
    end
    
    // Misc
    always @(posedge s_aclk) begin
        r_almost_full <= (reset) ? 0 : (w_wr_ptr_next == w_rd_ptr_prev);
    end
    
endmodule
