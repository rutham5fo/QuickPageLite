{# SOF #}
//---------------------------------------------
//  AUTO GENERATED FROM TEMPLATE
//---------------------------------------------

module qpl_synth_tb;
    
    // Sim time config
    timeunit 1ns;
    timeprecision 1ps;
    
    parameter GSR_DLY       = 100;              // 100ns of Global Set/Reset asserted by XSIM prior to tb run | only applicable to post-synth/impl sims
    
    import environment_pkg::*;
    
    // Drivable signals
    logic                               d_clk;
    logic                               d_rst;

    // Bridge sigs
    logic   [CHANS-1:0]                 w_aux_vld;
    logic   [CHANS-1:0]                 w_aux_rdy;
    logic   [CHANS-1:0][VADDR_W-1:0]    w_aux_data;
    logic   [CHANS-1:0][BLOCK_W-1:0]    w_aux_user;
    logic   [CHANS-1:0]                 w_aux_last;
    logic   [CHANS-1:0]                 w_base_vld;
    logic   [CHANS-1:0]                 w_base_rdy;
    logic   [CHANS-1:0][VADDR_W-1:0]    w_base_data;
    logic   [CHANS-1:0][BLOCK_W-1:0]    w_base_user;
    logic   [CHANS-1:0]                 w_base_last;

    // Clocking blocks
    default clocking cb_rst @(posedge d_clk);
        output negedge d_rst;
    endclocking
          
    // Streaming interfaces
    strm_intf #(.DATA_W(REQ_W), .USER_W(BLOCK_W)) req_alloc_str (.i_clk(d_clk));
    strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) req_dealloc_str (.i_clk(d_clk));
    strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) rep_alloc_str (.i_clk(d_clk));
    strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) rep_dealloc_str (.i_clk(d_clk));
    {% for i in range(ctxt.chans) %}
    strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W)) ch{{i}}_aux_str (.i_clk(d_clk));
    strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W)) ch{{i}}_base_str (.i_clk(d_clk));
    {% endfor %}
    // Output interface
    qpl_intf #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(PADDR_W)) qpl_if (.i_clk(d_clk));
    // Environment interface to pass tb_clock
    env_intf    env_if (.i_clk(d_clk));
    
    virtual strm_intf #(.DATA_W(REQ_W), .USER_W(BLOCK_W)) vreq_alloc_str = req_alloc_str;
    virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) vreq_dealloc_str = req_dealloc_str;
    virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) vrep_alloc_str = rep_alloc_str;
    virtual strm_intf #(.DATA_W(REP_W), .USER_W(BLOCK_W)) vrep_dealloc_str = rep_dealloc_str;
    {% for i in range(ctxt.chans) %}
    virtual strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W)) vch{{i}}_aux_str = ch{{i}}_aux_str;
    virtual strm_intf #(.DATA_W(VADDR_W), .USER_W(BLOCK_W)) vch{{i}}_base_str = ch{{i}}_base_str;
    {% endfor %}
    virtual qpl_intf #(.CHANS(CHANS), .BLOCK_W(BLOCK_W), .ADDR_W(PADDR_W)) vqpl_if = qpl_if;
    virtual env_intf    venv_if = env_if;

    {% for i in range(ctxt.chans) %}
    assign w_aux_vld[{{i}}] = ch{{i}}_aux_str.vld;
    assign w_aux_data[{{i}}] = ch{{i}}_aux_str.data;
    assign w_aux_user[{{i}}] = ch{{i}}_aux_str.user;
    assign w_aux_last[{{i}}] = ch{{i}}_aux_str.last;
    assign ch{{i}}_aux_str.rdy = w_aux_rdy[{{i}}];

    assign w_base_vld[{{i}}] = ch{{i}}_base_str.vld;
    assign w_base_data[{{i}}] = ch{{i}}_base_str.data;
    assign w_base_user[{{i}}] = ch{{i}}_base_str.user;
    assign w_base_last[{{i}}] = ch{{i}}_base_str.last;
    assign ch{{i}}_base_str.rdy = w_base_rdy[{{i}}];

    {% endfor %}
    
    // Instantiate DUT
    // Vivado 2023.2 throws error for named module port instatiation.
    // Instead use positioned port instantiation.
    // Use 'write_verilog' command in tcl to find port order in synth RTL.
    qpl_top syn_dut_i (
	    d_clk,
		d_rst,
		req_alloc_str.vld,
		req_alloc_str.data,
		req_alloc_str.rdy,
		req_dealloc_str.vld,
		req_dealloc_str.data,
		req_dealloc_str.rdy,
		rep_alloc_str.rdy,
		rep_alloc_str.vld,
		rep_alloc_str.data,
		rep_dealloc_str.rdy,
		rep_dealloc_str.vld,
		rep_dealloc_str.data,
		w_aux_vld,
        {% for i in range(ctxt.chans)|reverse %}
        w_aux_data[{{i}}],
        {% endfor %}
        {% for i in range(ctxt.chans)|reverse %}
        w_aux_user[{{i}}],
        {% endfor %}
        w_aux_last,
		w_aux_rdy,
		w_base_vld,
        {% for i in range(ctxt.chans)|reverse %}
        w_base_data[{{i}}],
        {% endfor %}
        {% for i in range(ctxt.chans)|reverse %}
        w_base_user[{{i}}],
        {% endfor %}
        w_base_last,
		w_base_rdy,
		qpl_if.blk_full,
		qpl_if.blk_avail,
		qpl_if.blk_aux_we,
		qpl_if.blk_base_we,
        {% for i in range(ctxt.chans)|reverse %}
        qpl_if.blk_aux_addr[{{i}}],
        {% endfor %}
        {% for i in range(ctxt.chans)|reverse %}
		qpl_if.blk_base_addr[{{i}}]{{"," if not loop.last else ""}}
        {% endfor %}
	);
    
    // Gen clock
    always #(CLK_PERIOD/2) d_clk = ~d_clk;
    
    initial begin
        // Init all drivable sigs
        d_clk = 1'b1;
        d_rst = 1'b0;
    end

    // Declare handles
    environment env;

    // Test
    initial begin
        // Wait for GSR to be over
        ##(GSR_DLY) cb_rst.d_rst <= 1'b1;
        ##(GSR_DLY+4) cb_rst.d_rst <= 1'b0;

        // Instantiate Environment
        env = new(venv_if, vreq_alloc_str, vreq_dealloc_str,
                  vrep_alloc_str, vrep_dealloc_str, vch0_aux_str, 
                  vch0_base_str, vch1_aux_str, vch1_base_str, vqpl_if);
        // START
        env.run();
        repeat (2) @cb_rst;
        env.verify();
        
        // END
        repeat (5) @cb_rst;
        $finish;
    end

endmodule
{# EOF #}