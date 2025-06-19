`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 22:40:39
// Design Name: 
// Module Name: dec_ptv_stage
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


module dec_ptv_stage #(
        parameter BITMAP        = 128,
        parameter STAGE         = 6,
        localparam NODES        = BITMAP/2,
        localparam ADDR_W       = $clog2(BITMAP)
    )(
        input wire  [NODES-1:0]     i_stg_scb,          // SCBs corresponding to the stage
        input wire  [ADDR_W-1:0]    i_paddr,            // Input virtual address
        input wire  [NODES-1:0]     i_actv,             // Activation pattern from prev stage
        
        output wire                 o_scb,              // Final scb of this stage
        output wire [NODES-1:0]     o_actv              // Activation pattern to next stage
    );
    
    localparam STAGES           = $clog2(BITMAP);
    localparam GROUPS           = 2**(STAGES-STAGE-1);  // Number of groups in this stage
    localparam GRP_W            = (GROUPS == 1) ? 1 : $clog2(GROUPS);       // width of address group select
    localparam GRP_S            = 2**STAGE;             // Number of bits per group
    localparam CNODES           = 2*GRP_S;
    
    localparam OFFSET           = 2**STAGE;
    
    wire                        w_inv;
    wire    [GRP_W-1:0]         w_grp_sel;
    wire    [GRP_S-1:0]         w_grp_scb[0:GROUPS-1];
    wire    [GRP_S-1:0]         w_scb;                  // Chosen scbs
    wire    [GRP_S-1:0]         w_stg_bit;
    wire    [CNODES-1:0]        w_cactv;
    
    genvar i;
    
    assign w_grp_sel = i_paddr >> (STAGE+1);
    assign w_scb = w_grp_scb[w_grp_sel];
    assign w_inv = i_paddr[STAGE];
    
    assign o_scb = |w_stg_bit;
    assign o_actv = {{NODES{1'b0}}, w_cactv[0 +: CNODES]};
    
    // Split stg_scb into groups
    generate
        for (i = 0; i < GROUPS; i = i+1) begin      :   gen_grp_scb
            assign w_grp_scb[i] = i_stg_scb[i*GRP_S +: GRP_S];
        end
    endgenerate
    
    // Create nodes
    generate
        for (i = 0; i < GRP_S; i = i+1) begin
            dec_node dec_node_i (
                .i_scb(w_scb[i]),
                .i_pactv(i_actv[i]),
                .i_inv(w_inv),
                
                .o_scb(w_stg_bit[i]),
                .o_lcactv(w_cactv[i]),
                .o_lractv(w_cactv[i+OFFSET])
            );
        end
    endgenerate
    
endmodule
