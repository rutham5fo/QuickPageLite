{# SOF #}
//---------------------------------------------
//  AUTO GENERATED FROM TEMPLATE
//---------------------------------------------

module qpl_tb;
    
    // Sim time config
    timeunit 1ns;
    timeprecision 1ps;
    
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
    qpl_top #(
        //------------ STREAM -------------------
        .BUF_D(BUF_D),                                  // Stream buffer depth | Valid values for BUFFER_D = 1, 3, 7, 15, ...
        .BUF_OREG_EN(BUF_OREG_EN),                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        .TBUF_OREG_EN(TBUF_OREG_EN),
        .MEM_OREG_EN(MEM_OREG_EN),
        .CHANS(CHANS),                    // Total number of address channels per block
        .DUAL_PORT(DUAL_PORT),
        //------------ ALLOCATOR ----------------
        .LINE_BYTE(LINE_BYTE),                   // Number of bytes per line
        .LINE_WORD(LINE_WORD),
        .BLOCK_D(BLOCK_D),                  // Number of lines per block
        .UDATA_W(UDATA_W)                    // User data width reserved within req/rep
    ) dut_i (
        .i_clk(d_clk),
        .i_rst(d_rst),
        // Alloc req stream
        .i_req_alloc_vld(req_alloc_str.vld),
        .i_req_alloc_data(req_alloc_str.data),
        .o_req_alloc_rdy(req_alloc_str.rdy),
        // Dealloc req stream
        .i_req_dealloc_vld(req_dealloc_str.vld),
        .i_req_dealloc_data(req_dealloc_str.data),
        .o_req_dealloc_rdy(req_dealloc_str.rdy),
        // Alloc rep stream
        .i_rep_alloc_rdy(rep_alloc_str.rdy),        // Ready signal from alloc reply stream
        .o_rep_alloc_vld(rep_alloc_str.vld),        // 1 for valid reply
        .o_rep_alloc_data(rep_alloc_str.data),
        // Dealloc rep stream
        .i_rep_dealloc_rdy(rep_dealloc_str.rdy),      // Ready signal from dealloc reply stream
        .o_rep_dealloc_vld(rep_dealloc_str.vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(rep_dealloc_str.data),
        
        // Translator sigs
        // Read Channels
        .i_aux_vld(w_aux_vld),
        .i_aux_data(w_aux_data),
        .i_aux_user(w_aux_user),
        .i_aux_last(w_aux_last),
        .o_aux_rdy(w_aux_rdy),
        // Write Channels
        .i_base_vld(w_base_vld),
        .i_base_data(w_base_data),
        .i_base_user(w_base_user),
        .i_base_last(w_base_last),
        .o_base_rdy(w_base_rdy),
        
        // To Ext
        .o_blk_full(qpl_if.blk_full),
        .o_blk_avail(qpl_if.blk_avail),
        // To memory
        .o_blk_aux_we(qpl_if.blk_aux_we),
        .o_blk_base_we(qpl_if.blk_base_we),
        .o_blk_aux_addr(qpl_if.blk_aux_addr),
        .o_blk_base_addr(qpl_if.blk_base_addr)
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
        // Reset system
        ##1 cb_rst.d_rst <= 1'b1;
        ##4 cb_rst.d_rst <= 1'b0;

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