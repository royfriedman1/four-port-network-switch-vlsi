#lappend search_path scripts design_data
set_host_options -max_cores 4
set TECH_FILE     "/data/synopsys/lib/saed32nm/ref/tech/saed32nm_1p9m.tf"
########################################################################
### Physical Library Settings
########################################################################
# Clean previous run
file delete -force switch_4port_no_cg_f.dlib

create_lib  -technology $TECH_FILE  -ref_libs { /data/synopsys/lib/saed32nm/ref/CLIBs/saed32_hvt.ndm /data/synopsys/lib/saed32nm/ref/CLIBs/saed32_lvt.ndm /data/synopsys/lib/saed32nm/ref/CLIBs/saed32_rvt.ndm }  switch_4port_no_cg_f.dlib
open_lib switch_4port_no_cg_f.dlib
report_ref_libs
read_parasitic_tech -tlu /data/synopsys/lib/saed32nm/ref/tech/saed32nm_1p9m_Cmax.lv.tluplus -name Cmax
read_parasitic_tech -tlu /data/synopsys/lib/saed32nm/ref/tech/saed32nm_1p9m_Cmin.lv.tluplus -name Cmin
#
save_lib
remove_design -all

analyze -format sverilog {packet_types.sv arbiter.sv Arbiter_control_unit.sv Arbiter_data_path.sv d_ff.sv FIFO.sv internal_if.sv Master_control_unit.sv Routing.sv switch_port.sv port_if.sv switch_4port.sv}
elaborate switch_4port
set_top_module switch_4port

# --- Preserve RTL/HDL names as much as possible ---
set_app_var preserve_hdl_name true
set_app_var preserve_design_name true

# save hir
set_app_options -name  compile.flow.autoungroup  -value false
#start_gui
save_block -as switch_4port/elaborate

# mcmm_setup:
# Remove all MCMM related info
remove_corners   -all
remove_modes     -all
remove_scenarios -all
# Create Corners
create_corner Fast
create_corner Slow
#
## Set parasitics parameters
set_parasitics_parameters -early_spec Cmin -late_spec  Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec  Cmax -corners {Slow}
#
## Create Mode
create_mode  FUNC
current_mode FUNC
#
## Create Scenarios
create_scenario -mode FUNC -corner Fast    -name FUNC_Fast
create_scenario -mode FUNC -corner Slow    -name FUNC_Slow
#

#sourse ConFiles/con431.con
current_scenario FUNC_Fast
source  /project/verif/users/hadarlevy1/ws/ex_vlsi_0/switch_4port.sdc
current_scenario FUNC_Slow
source  /project/verif/users/hadarlevy1/ws/ex_vlsi_0/switch_4port.sdc

set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

set_clock_gating_objects -exclude switch_4port

compile_fusion -to logic_opto
#create_placement
#legalize_placement
##Power
#compile_fusion -to final_opto

#save_block -as switch_4port/final_opto
file mkdir reports_no_cg_f
report_timing -delay_type max > reports_no_cg_f/timing_setup.rpt
report_timing -delay_type min > reports_no_cg_f/timing_hold.rpt
report_area > reports_no_cg_f/area.rpt
report_power > reports_no_cg_f/power.rpt
report_resources > reports_no_cg_f/resources.rpt
current_block switch_4port

#change_names -hierarchy -rules verilog
#uniquify
write_verilog switch_4port_no_cg_f.v
write_sdf switch_4port_no_cg_f.sdf
#set_attribute [get_layers {M1 M3 M5 M7 M9}]   routing_direction vertical
#set_attribute [get_layers {M2 M4 M6 M8 MRDL}] routing_direction horizontal

#source create_pg_network.tcl
#clock_opt
#route_opt
#save_block -as ALU/route_opt