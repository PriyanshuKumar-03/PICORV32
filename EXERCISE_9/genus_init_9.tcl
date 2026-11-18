# initializes the genus tool when calling : genus -f ~/vlsi_asic/script/genus_init.tcl

########## GENERAL SETUP + DFT + Multibit Cells + Clock Gating ##################
# ----------------------------------------------------------------------------------------------------------
# path initialization
set_db init_lib_search_path /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045   
set_db script_search_path /home/p/prigians/vlsi_asic/script/
set_db init_hdl_search_path /home/p/prigians/vlsi_asic/verilog/

# timing libary -> fast_vdd1v2_basicCells.lib
set_db library {/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing/fast_vdd1v2_basicCells.lib}
 
# physical parameter libs
set_db lef_library {/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
 
# parasitic info library
read_qrc /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch 

# verilog file path
read_hdl /home/p/prigians/vlsi_asic/verilog/picorv32.v

# enable clock gating
set_db lp_insert_clock_gating true


# end of initialization
 
# circuit elaboration with picorv32_wb as top level module
elaborate picorv32_wb


# enable multibit optimization
#set_db use_multibit_cells true


# check elaboration results and make sure that there are zero uresolved refereneces
check_design

# read sdc file from the script path
read_sdc picorv32_constraints_9_588MHz.sdc

# check timing conditions
check_timing_intent


# GROUPING
# ------------------------------------------------------------------------------
# input-to-output path 
define_cost_group -name I2O_group -design picorv32_wb
path_group -from [all_inputs] -to [all_outputs] -group I2O_group -name I2O

# input-to-register path 
define_cost_group -name I2R_group -design picorv32_wb
path_group -from [all_inputs] -to [all_register] -group I2R_group -name I2R

# register-to-output path 
define_cost_group -name R2O_group -design picorv32_wb
path_group -from [all_register] -to [all_outputs] -group R2O_group -name R2O

# register-to-register path 
define_cost_group -name R2R_group -design picorv32_wb
path_group -from [all_register] -to [all_register] -group R2R_group -name R2R


# Enable DFT
set_db / .dft_scan_style muxed_scan
set_db / .dft_prefix DFT_
set_db / .dft_identify_top_level_test_clocks true
set_db / .dft_identify_test_signals true
set_db / .dft_identify_internal_test_clocks false
set_db / .use_scan_seqs_for_non_dft true

# Specify DFT
set_db "design:picorv32_wb" .dft_scan_map_mode tdrc_pass
set_db "design:picorv32_wb" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:picorv32_wb" .dft_connect_scan_data_pins_during_mapping loopback
set_db "design:picorv32_wb" .dft_scan_output_preference auto 
set_db "design:picorv32_wb" .dft_lockup_element_type preferred_level_sensitive  
set_db "design:picorv32_wb" .dft_mix_clock_edges_in_scan_chains true

# addition -create_port scanclk
define_test_clock -name scanclk -period 20000 [get_ports wb_clk_i]

define_shift_enable -name se -active high -create_port se

define_test_mode -name test_mode -active high -create_port test_mode

# applied only when clock gating is enabled
set_db "design:picorv32_wb" .lp_clock_gating_test_signal test_mode

define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -shift_enable se -create_ports

# applied only when clock gating is enabled
 add_clock_gates_test_connection

# check DFT Rules
check_dft_rules > dft_rule_check.txt
# scan registers report
report_scan_registers 
# scan setup report
report_scan_setup 


# synthesize the design
# -----------------------------------------------------------------------------
# convert RTL into structural description using primitives 
syn_generic
# assign the primitives from the previous step to the library cells
syn_map
# optimize the result of the  previous synthesis  steps
syn_opt


# re-run dft rule checker
check_dft_rules -advanced > advanced_dft_rule_check.txt


# connect scan chains
connect_scan_chains -auto_create_chains

# ignore scan mux paths for timing analysis
set_case_analysis 0 [get_ports se]
set_case_analysis 0 [get_ports test_mode]


# analyze design
# -----------------------------------------------------------------------------
# area analysis report
report_area > area_report_9.txt
# selected gates analysis report
report_gates > gate_report_9.txt
# timing analysis report including worst path of design
report_timing > timing_report_9.txt
# power analysis report
report_power > power_report_9.txt
# quality of results
report_qor > qor_report_9.txt
# clock gating report
report_clock_gating > clock_gating_report_9.txt


# scan chains report
report_scan_chains > scan_chains_report_9.txt
# scan setup report
report_scan_setup > scan_setup_report_9.txt
# write scandef
write_scandef > picorv32_wb.scandef
# write dft abstarct model
write_dft_abstract_model > picorv32_wb.dft_abstract
# write hdl abstract
write_hdl -abstract > picorv32_wb_abstract.v
# write script
write_script -analyze_all_scan_chains > analyze_scan.tcl

# export design
# -----------------------------------------------------------------------------
# export gate-level-netlist called netlist_1.v under the ~/vlsi_asic/exrcise_1
write_hdl > netlist_9.v
# design constraints
write_script > constraints_9.g
# design constraints in sdc form
write_sdc > constraints_9.sdc


# export design for innovus
# ----------------------------------------------------------------------------
# create all necessary files for innovus
write_design -innovus picorv32_wb


# check timing conditions
check_timing_intent

# report scan registers
report_scan_registers
