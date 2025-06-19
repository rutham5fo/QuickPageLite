`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 16:14:37
// Design Name: 
// Module Name: dec_vtp_stage
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


module dec_vtp_stage #(
        parameter BITMAP        = 128,
        parameter STAGE         = 6,
        localparam NODES        = BITMAP/2,
        localparam ADDR_W       = $clog2(BITMAP)
    )(
        input wire  [NODES-1:0]     i_stg_scb,          // SCBs corresponding to the stage
        input wire  [ADDR_W-1:0]    i_vaddr,            // Input virtual address
        input wire  [NODES-1:0]     i_actv,             // Activation pattern from prev stage
        
        output wire                 o_scb,              // Final scb of this stage
        output wire [NODES-1:0]     o_actv              // Activation pattern to next stage
    );
    
    localparam STAGES           = $clog2(BITMAP);
    localparam GROUPS           = 2**(STAGES-STAGE-1);  // Number of groups in this stage
    localparam GRP_W            = (GROUPS == 1) ? 1 : $clog2(GROUPS);       // width of address group select
    localparam GRP_S            = 2**STAGE;             // Number of bits per group
    localparam CNODES           = 2*GRP_S;
    
    wire                        w_inv;
    wire    [GRP_W-1:0]         w_grp_sel;
    wire    [GRP_S-1:0]         w_grp_scb[0:GROUPS-1];
    wire    [GRP_S-1:0]         w_scb;                  // Chosen scbs
    wire    [GRP_S-1:0]         w_stg_bit;
    wire    [CNODES-1:0]        w_cactv;
    
    genvar i, j;
    
    generate
        if (STAGE == STAGES-1) begin
            assign w_grp_sel = 0;
            assign w_scb = w_grp_scb[w_grp_sel];
        end
        else begin
            assign w_grp_sel = i_vaddr[0 +: GRP_W];
            assign w_scb = w_grp_scb[w_grp_sel];
        end
    endgenerate
    assign w_inv = i_vaddr[STAGES-STAGE-1];
    
    assign o_scb = |w_stg_bit[0 +: GRP_S];
    generate
        for (i = 0; i < NODES; i = i+1) begin
            if (i < CNODES) assign o_actv[i] = w_cactv[i];
            else assign o_actv[i] = 1'b0;
        end
    endgenerate
    
    // Split stg_scb into groups
    generate
        for (i = 0; i < GROUPS; i = i+1) begin      :   gen_grp_scb_lp0
            for (j = 0; j < GRP_S; j = j+1) begin   :   gen_grp_scb_lp1
                assign w_grp_scb[i][j] = i_stg_scb[i+(j*GROUPS)];
            end
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
                .o_lcactv(w_cactv[2*i]),
                .o_lractv(w_cactv[2*i+1])
            );
        end
    endgenerate
    
endmodule
