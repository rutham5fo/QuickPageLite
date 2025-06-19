`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 01:43:27
// Design Name: 
// Module Name: dec_ptv
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


module dec_ptv #(
        parameter BITMAP            = 128,
        localparam ADDR_W           = $clog2(BITMAP),
        localparam STAGES           = $clog2(BITMAP),
        localparam NODES            = BITMAP/2
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        input wire                          i_oreg_en,
        input wire  [ADDR_W-1:0]            i_paddr,
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        
        output wire [ADDR_W-1:0]            o_vaddr
    );
    
    wire    [NODES-1:0]             w_stg_scb[0:STAGES-1];
    wire    [STAGES-1:0][NODES-1:0] w_stg_actv;
    wire    [ADDR_W-1:0]            w_stg_bit_clean;
    wire                            w_stg_bit[0:ADDR_W-1];
    wire    [ADDR_W-1:0]            w_vaddr;
    
    reg     [ADDR_W-1:0]            r_vaddr;
    
    genvar i;
    
    assign w_vaddr = w_stg_bit_clean ^ i_paddr;
    
    assign o_vaddr = r_vaddr;
    
    // Get stage scbs
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_stg_scbs
            assign w_stg_scb[i] = i_scb[i][0 +: NODES];
            assign w_stg_bit_clean[i] = w_stg_bit[i];
        end
    endgenerate
    
    // Generate stages
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_dec_stages
            if (i == 0) begin
                dec_ptv_stage #(
                    .BITMAP(BITMAP),
                    .STAGE(i)
                ) dec_stg_i (
                    .i_stg_scb(w_stg_scb[i]),          // SCBs corresponding to the stage
                    .i_paddr(i_paddr),            // Input virtual address
                    .i_actv({NODES{1'b1}}),             // Activation pattern from prev stage
                    
                    .o_scb(w_stg_bit[i]),              // Final scb of this stage
                    .o_actv(w_stg_actv[i][0 +: NODES])              // Activation pattern to next stage
                );
            end
            else begin
                dec_ptv_stage #(
                    .BITMAP(BITMAP),
                    .STAGE(i)
                ) dec_stg_i (
                    .i_stg_scb(w_stg_scb[i]),          // SCBs corresponding to the stage
                    .i_paddr(i_paddr),            // Input virtual address
                    .i_actv(w_stg_actv[i-1][0 +: NODES]),             // Activation pattern from prev stage
                    
                    .o_scb(w_stg_bit[i]),              // Final scb of this stage
                    .o_actv(w_stg_actv[i][0 +: NODES])              // Activation pattern to next stage
                );
            end
        end
    endgenerate
    
    always @(posedge i_clk) begin
        r_vaddr <= (i_rst) ? 0 : (i_oreg_en) ? w_vaddr : r_vaddr;
    end
    
endmodule
