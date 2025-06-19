set "qpl_clk_p" 10.0;
set "mem_clk_p" 5.0;

create_clock -name "sys_clk" -period "$qpl_clk_p" [get_ports "i_qpl_clk"];
create_clock -name "mem_clk" -period "$mem_clk_p" [get_ports "i_mem_clk"];

#set_clock_groups -group sys_clk -group mem_clk -asynchronous;

set_input_delay -clock "sys_clk" -max 1.0 [get_ports "i_rst"];
set_input_delay -clock "sys_clk" -min 1.0 [get_ports "i_rst"];
set_input_delay -clock "mem_clk" -max 1.6 [get_ports "i_rst"];
set_input_delay -clock "mem_clk" -min 1.4 [get_ports "i_rst"];

#set_false_path -from [get_ports "i_rst"] -to [get_clocks [list "sys_clk" "mem_clk"]];

set_input_delay -clock "sys_clk" -max 1.4 [get_ports [list "i_rep*_alloc_rdy" "i_req*_alloc_vld" "i_rep*_dealloc_rdy" "i_req*_dealloc_vld"]];
set_input_delay -clock "sys_clk" -min 1.2 [get_ports [list "i_rep*_alloc_rdy" "i_req*_alloc_vld" "i_rep*_dealloc_rdy" "i_req*_dealloc_vld"]];
set_input_delay -clock "sys_clk" -max 1.4 [get_ports [list "i_req*_alloc_data" "i_req*_dealloc_data"]];
set_input_delay -clock "sys_clk" -min 1.2 [get_ports [list "i_req*_alloc_data" "i_req*_dealloc_data"]];
set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_aux*_vld" "i_aux*_data*" "i_aux*_user*" "i_aux*_last" "i_base*_vld" "i_base*_user*" "i_base*_last"]];
set_input_delay -clock "sys_clk" -min 1.3 [get_ports [list "i_aux*_vld" "i_aux*_data*" "i_aux*_user*" "i_aux*_last" "i_base*_vld" "i_base*_user*" "i_base*_last"]];
set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_base*_data*"]];
set_input_delay -clock "sys_clk" -min 1.3 [get_ports [list "i_base*_data*"]];
set_input_delay -clock "sys_clk" -max 1.5 [get_ports [list "i_net*_base_we" "i_net*_aux_we" "i_net*_base_addr" "i_net*_aux_addr"]];
set_input_delay -clock "sys_clk" -min 1.3 [get_ports [list "i_net*_base_we" "i_net*_aux_we" "i_net*_base_addr" "i_net*_aux_addr"]];

set_input_delay -clock "mem_clk" -max 1.6 [get_ports [list "i_mem*_wr_data*"]];
set_input_delay -clock "mem_clk" -min 1.6 [get_ports [list "i_mem*_wr_data*"]];

set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_req*_alloc_rdy" "o_rep*_alloc_vld" "o_rep*_alloc_data" "o_req*_dealloc_rdy" "o_rep*_dealloc_vld" "o_rep*_dealloc_data"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_req*_alloc_rdy" "o_rep*_alloc_vld" "o_rep*_alloc_data" "o_req*_dealloc_rdy" "o_rep*_dealloc_vld" "o_rep*_dealloc_data"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_aux*_rdy" "o_base*_rdy"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_aux*_rdy" "o_base*_rdy"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_blk*_full" "o_blk*_avail"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_blk*_full" "o_blk*_avail"]];
set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_net*_base_we" "o_net*_aux_we" "o_net*_base_addr" "o_net*_aux_addr"]];
set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_net*_base_we" "o_net*_aux_we" "o_net*_base_addr" "o_net*_aux_addr"]];
#set_max_delay 9.9 -from [get_clocks "sys_clk"] -to [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]] -datapath_only;
#set_min_delay 9.0 -from [get_clocks "sys_clk"] -to [get_ports [list "o_blk_base_we" "o_blk_aux_we" "o_blk_base_addr*" "o_blk_aux_addr*"]] -datapath_only;

#set_output_delay -clock "sys_clk" -max 1.0 [get_ports [list "o_mem_rd_data*"]];
#set_output_delay -clock "sys_clk" -min 1.0 [get_ports [list "o_mem_rd_data*"]];
set_max_delay 9.9 -from [get_clocks "mem_clk"] -to [get_ports [list "o_mem*_rd_data*"]] -datapath_only;
set_min_delay 1.5 -from [get_clocks "mem_clk"] -to [get_ports [list "o_mem*_rd_data*"]] -datapath_only;

#set_max_delay 4.0 -from [get_clocks "sys_clk"] -to [get_clocks "mem_clk"];
#set_min_delay 2.0 -from [get_clocks "sys_clk"] -to [get_clocks "mem_clk"];

#set_max_delay 9.9 -from [get_clocks "mem_clk"] -to [get_clocks "sys_clk"];
#set_min_delay 1.0 -from [get_clocks "mem_clk"] -to [get_clocks "sys_clk"];
