`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 13:11:44
// Design Name: 
// Module Name: shftr_stg
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


module shftr_stg #(
        parameter DATA_W        = 256,
        parameter STAGE         = 0
    )(
        input wire                  i_en,
        input wire  [DATA_W-1:0]    i_data,
        
        output wire [DATA_W-1:0]    o_data
    );
    
    localparam              rot_w        = (DATA_W == 1) ? 1 : $clog2(DATA_W);
    localparam [rot_w-1:0]  in_dist      = 1 << STAGE;
    
    genvar i;
    
    generate
        if (DATA_W == 1) begin
            assign o_data = (i_en) ? ~i_data : i_data;
        end
        else begin
            for (i = 0; i < DATA_W; i = i+1) begin    :   gen_rot_stg
                localparam [rot_w:0]    in_ctrl = i - in_dist;
                localparam [rot_w-1:0]  in_sel  = in_ctrl[0 +: rot_w];
                localparam [0:0]        in_inv  = in_ctrl[rot_w];
                
                if (in_inv) assign o_data[i] = (i_en) ? ~i_data[in_sel] : i_data[i];
                else assign o_data[i] = (i_en) ? i_data[in_sel] : i_data[i];
            end
        end
    endgenerate
    
endmodule
