`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 16:43:08
// Design Name: 
// Module Name: dec_vtp
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


module dec_vtp #(
        parameter OREG_EN           = 1,
        parameter BITMAP            = 128,
        localparam ADDR_W           = $clog2(BITMAP),
        localparam STAGES           = $clog2(BITMAP),
        localparam NODES            = BITMAP/2
    )(
        input wire                          i_clk,
        input wire                          i_rst,
        input wire  [ADDR_W-1:0]            i_vaddr,
        input wire  [STAGES-1:0][NODES-1:0] i_scb,
        
        output wire [ADDR_W-1:0]            o_paddr
    );
    
    wire    [NODES-1:0]             w_stg_scb[0:STAGES-1];
    wire    [NODES-1:0]             w_stg_actv[0:STAGES-1];
    wire    [ADDR_W-1:0]            w_stg_bit;
    wire    [ADDR_W-1:0]            w_paddr;
    
    reg     [ADDR_W-1:0]            r_paddr;
    
    genvar i;
    
    assign w_paddr = w_stg_bit ^ i_vaddr;
    
    generate
        if (OREG_EN) begin
            reg     [ADDR_W-1:0]    r_paddr;
            
            assign o_paddr = r_paddr;
            
            always @(posedge i_clk) begin
                r_paddr <= (i_rst) ? 0 : w_paddr;
            end
        end
        else begin
            assign o_paddr = w_paddr;
        end
    endgenerate
    
    // Get stage scbs
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_stg_scbs
            assign w_stg_scb[i] = i_scb[i][0 +: NODES];
        end
    endgenerate
    
    // Generate stages
    generate
        for (i = 0; i < STAGES; i = i+1) begin      :   gen_dec_stages
            localparam REV_STAGE = STAGES - i - 1;
            if (i == 0) begin
                dec_vtp_stage #(
                    .BITMAP(BITMAP),
                    .STAGE(i)
                ) dec_stg_i (
                    .i_stg_scb(w_stg_scb[REV_STAGE]),          // SCBs corresponding to the stage
                    .i_vaddr(i_vaddr),            // Input virtual address
                    .i_actv({NODES{1'b1}}),             // Activation pattern from prev stage
                    
                    .o_scb(w_stg_bit[REV_STAGE]),              // Final scb of this stage
                    .o_actv(w_stg_actv[i])              // Activation pattern to next stage
                );
            end
            else begin
                dec_vtp_stage #(
                    .BITMAP(BITMAP),
                    .STAGE(i)
                ) dec_stg_i (
                    .i_stg_scb(w_stg_scb[REV_STAGE]),          // SCBs corresponding to the stage
                    .i_vaddr(i_vaddr),            // Input virtual address
                    .i_actv(w_stg_actv[i-1]),             // Activation pattern from prev stage
                    
                    .o_scb(w_stg_bit[REV_STAGE]),              // Final scb of this stage
                    .o_actv(w_stg_actv[i])              // Activation pattern to next stage
                );
            end
        end
    endgenerate
    
endmodule
