{# SOF #}
//---------------------------------------------
//  AUTO GENERATED FROM TEMPLATE
//---------------------------------------------

module qpl_top_wrap #(
        //------------ STREAM -------------------
        parameter BUF_D                 = {{ctxt.buf_d}},                    // Stream buffer depth | Valid values for BUFFER_D = 1, 3, 7, 15, ...
        parameter BUF_OREG_EN           = {{ctxt.buf_oreg_en}},                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        parameter TBUF_D                = {{ctxt.tbuf_d}},                  // Transaction buffer depth
        parameter TBUF_OREG_EN          = {{ctxt.tbuf_oreg_en}},            // Enable QPL address channel output reg
        parameter MEM_OREG_EN           = {{ctxt.mem_oreg_en}},             // Enable QPL translator output reg
        parameter CHANS                 = {{ctxt.chans}},                    // Total number of address channels per block
        parameter DUAL_PORT             = {{ctxt.dual_port}},
        //------------ ALLOCATOR ----------------
        parameter LINE_BYTE             = {{ctxt.line_s}},                   // Number of bytes per line
        parameter LINE_WORD             = {{ctxt.line_l}},                  // Number of words per line
        parameter BLOCK_D               = {{ctxt.block_d}},                  // Number of lines per block
        parameter UDATA_W               = {{ctxt.udata_w}}                    // User data width reserved within req/rep
    )(
        input wire                              i_clk,
        input wire                              i_rst,
        // Alloc req stream
        strm_intf.slv                           i_req_alloc,
        // Dealloc req stream
        strm_intf.slv                           i_req_dealloc,
        // Alloc rep stream
        strm_intf.mst                           o_rep_alloc,
        // Dealloc rep stream
        strm_intf.mst                           o_rep_dealloc,
        
        // Translator Channels
        {% for i in range(ctxt.chans) %}
        strm_intf.slv                           i_ch{{i}}_aux,
        strm_intf.slv                           i_ch{{i}}_base,

        {% endfor %}
        // To Ext
        qpl_intf.mem                            o_qpl
    );
    
    localparam WORD_W               = $clog2(LINE_WORD);
    localparam BLOCK_W              = $clog2(BLOCK_D);
    localparam VADDR_W              = BLOCK_W + WORD_W;     // {User_data [UDATA_W], line [BLOCK_W], word [LINE_W]}
    
    // Read Channels
    wire    [CHANS-1:0]                 aux_vld;
    wire    [CHANS-1:0][VADDR_W-1:0]    aux_data;
    wire    [CHANS-1:0][BLOCK_W-1:0]    aux_user;
    wire    [CHANS-1:0]                 aux_last;
    wire    [CHANS-1:0]                 aux_rdy;
    // Write Channels
    wire    [CHANS-1:0]                 base_vld;
    wire    [CHANS-1:0][VADDR_W-1:0]    base_data;
    wire    [CHANS-1:0][BLOCK_W-1:0]    base_user;
    wire    [CHANS-1:0]                 base_last;
    wire    [CHANS-1:0]                 base_rdy;

    {% for i in range(ctxt.chans) %}
    assign aux_vld[{{i}}] = i_ch{{i}}_aux.vld;
    assign aux_data[{{i}}][0 +: VADDR_W] = i_ch{{i}}_aux.data;
    assign aux_user[{{i}}][0 +: BLOCK_W] = i_ch{{i}}_aux.user;
    assign aux_last[{{i}}] = i_ch{{i}}_aux.last;
    assign i_ch{{i}}_aux.rdy = aux_rdy[{{i}}];

    assign base_vld[{{i}}] = i_ch{{i}}_base.vld;
    assign base_data[{{i}}][0 +: VADDR_W] = i_ch{{i}}_base.data;
    assign base_user[{{i}}][0 +: BLOCK_W] = i_ch{{i}}_base.user;
    assign base_last[{{i}}] = i_ch{{i}}_base.last;
    assign i_ch{{i}}_base.rdy = base_rdy[{{i}}];

    {% endfor %}
    
    //(* dont_touch = "yes" *)
    qpl_top #(
        //------------ STREAM -------------------
        .BUF_D(BUF_D),                    // Stream buffer depth | Valid values for BUFFER_D = 1, 3, 7, 15, ...
        .BUF_OREG_EN(BUF_OREG_EN),                    // Enables registers on master side output of stream buffers
        //------------ TRANSACTOR ---------------
        .TBUF_D(TBUF_D),                  // Transaction buffer depth
        .TBUF_OREG_EN(TBUF_OREG_EN),
        .MEM_OREG_EN(MEM_OREG_EN),
        .CHANS(CHANS),                    // Total number of address channels per block
        .DUAL_PORT(DUAL_PORT),
        //------------ ALLOCATOR ----------------
        .LINE_BYTE(LINE_BYTE),                   // Number of bytes per line
        .LINE_WORD(LINE_WORD),
        .BLOCK_D(BLOCK_D),                  // Number of lines per block
        .UDATA_W(UDATA_W)                    // User data width reserved within req/rep
    ) top_i (
        .i_clk(i_clk),
        .i_rst(i_rst),
        // Alloc req stream
        .i_req_alloc_vld(i_req_alloc.vld),
        .i_req_alloc_data(i_req_alloc.data),
        .o_req_alloc_rdy(i_req_alloc.rdy),
        // Dealloc req stream
        .i_req_dealloc_vld(i_req_dealloc.vld),
        .i_req_dealloc_data(i_req_dealloc.data),
        .o_req_dealloc_rdy(i_req_dealloc.rdy),
        // Alloc rep stream
        .i_rep_alloc_rdy(o_rep_alloc.rdy),        // Ready signal from alloc reply stream
        .o_rep_alloc_vld(o_rep_alloc.vld),        // 1 for valid reply
        .o_rep_alloc_data(o_rep_alloc.data),
        // Dealloc rep stream
        .i_rep_dealloc_rdy(o_rep_dealloc.rdy),      // Ready signal from dealloc reply stream
        .o_rep_dealloc_vld(o_rep_dealloc.vld),      // 1 for valid dealloc
        .o_rep_dealloc_data(o_rep_dealloc.data),
        
        // Translator sigs
        // Read Channels
        .i_aux_vld(aux_vld),
        .i_aux_data(aux_data),
        .i_aux_user(aux_user),
        .i_aux_last(aux_last),
        .o_aux_rdy(aux_rdy),
        // Write Channels
        .i_base_vld(base_vld),
        .i_base_data(base_data),
        .i_base_user(base_user),
        .i_base_last(base_last),
        .o_base_rdy(base_rdy),
        
        // To Ext
        .o_blk_full(o_qpl.blk_full),
        .o_blk_avail(o_qpl.blk_avail),
        // To memory
        .o_blk_aux_we(o_qpl.blk_aux_we),
        .o_blk_base_we(o_qpl.blk_base_we),
        .o_blk_aux_addr(o_qpl.blk_aux_addr),
        .o_blk_base_addr(o_qpl.blk_base_addr)
    );
    
endmodule
{# EOF #}