set "clk_p" 10.0;

create_clock -name sys_clk -period "$clk_p" [get_ports "i_clk"];

set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_rst"]];
set_input_delay -clock "sys_clk" -min 1.5 [get_ports [list "i_rst"]];
set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_rep_alloc_rdy" "i_req_alloc_vld" "i_req_alloc_data" "i_rep_dealloc_rdy" "i_req_dealloc_vld" "i_req_dealloc_data"]];
set_input_delay -clock "sys_clk" -min 1.5 [get_ports [list "i_rep_alloc_rdy" "i_req_alloc_vld" "i_req_alloc_data" "i_rep_dealloc_rdy" "i_req_dealloc_vld" "i_req_dealloc_data"]];
set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_aux_vld" "i_aux_data*" "i_aux_user*" "i_aux_last" "i_base_vld" "i_base_data*" "i_base_user*" "i_base_last"]];
set_input_delay -clock "sys_clk" -min 1.5 [get_ports [list "i_aux_vld" "i_aux_data*" "i_aux_user*" "i_aux_last" "i_base_vld" "i_base_data*" "i_base_user*" "i_base_last"]];

set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_req_alloc_rdy" "o_rep_alloc_vld" "o_rep_alloc_data" "o_req_dealloc_rdy" "o_rep_dealloc_vld" "o_rep_dealloc_data"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_req_alloc_rdy" "o_rep_alloc_vld" "o_rep_alloc_data" "o_req_dealloc_rdy" "o_rep_dealloc_vld" "o_rep_dealloc_data"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_aux_rdy" "o_base_rdy"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_aux_rdy" "o_base_rdy"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_blk_full" "o_blk_avail"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_blk_full" "o_blk_avail"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]];
#set_max_delay 9.9 -from [get_clocks "sys_clk"] -to [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]] -datapath_only;
#set_min_delay 9.0 -from [get_clocks "sys_clk"] -to [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]] -datapath_only;
