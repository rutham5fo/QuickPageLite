//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 00:34:02
// Design Name: 
// Module Name: config
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


`ifndef __CCONFIG_H__
`define __CONFIG_H__
    
    // Sim params
    parameter CLK_PERIOD        = 10;
    
    parameter CHANS             = 2;
    parameter DUAL_PORT         = 1;
    parameter LINE_BYTE         = 64;
    parameter LINE_WORD         = 16;
    parameter BLOCK_D           = 8;
    parameter UDATA_W           = 8;
    parameter BLOCK_W           = $clog2(BLOCK_D);
    parameter REQ_S             = BLOCK_D * LINE_BYTE;             // Max allocable bytes
    parameter REQ_W             = UDATA_W + $clog2(REQ_S) + 1;
    parameter REP_W             = UDATA_W + 2*BLOCK_W + 1;
    parameter WORD_W            = $clog2(LINE_WORD);
    parameter VADDR_W           = BLOCK_W + WORD_W;     // {line [BLOCK_W], word [WORD_W]}
    parameter PADDR_W           = BLOCK_W + WORD_W;
    
    parameter STAGES            = $clog2(BLOCK_D);
    parameter NODES             = BLOCK_D / 2;
    
    parameter BUF_D             = 7;
    parameter BUF_OREG_EN       = 1;                        // Latency introduced by (de)alloc req/rep channels

    parameter TBUF_OREG_EN      = 0;                        // Latency introduced by virtual address channels
    parameter MEM_OREG_EN       = 1;                        // Latency introduced by qpl translator
    
    parameter TRANS_DLY         = TBUF_OREG_EN + MEM_OREG_EN;       // Latency introduced by qpl translator (1 cycle) and channel
    
    typedef logic                       bool_t;
    typedef logic[UDATA_W-1:0]          udata_t;
    typedef logic[REQ_W-UDATA_W-1:0]    size_t;
    typedef logic[REP_W-UDATA_W-1:0]    obj_t;
    typedef logic[REQ_W-1:0]            req_t;
    typedef logic[REP_W-1:0]            rep_t;
    typedef logic[BLOCK_W-1:0]          blk_t;
    typedef logic[BLOCK_W:0]            avail_t;
    typedef logic[WORD_W-1:0]           word_t;
    typedef logic[VADDR_W-1:0]          vaddr_t;
    typedef logic[PADDR_W-1:0]          paddr_t;
    typedef logic[63:0]                 mem_t;

`endif // __CONFIG_H__
