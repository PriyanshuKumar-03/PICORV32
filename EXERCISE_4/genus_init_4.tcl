# initializes the genus tool when calling : genus -f ~/vlsi_asic/script/genus_init.tcl

########## GENERAL SETUP ##################
# ----------------------------------------------------------------------------------------------------------
# path initialization
set_db init_lib_search_path /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045   
set_db script_search_path /home/p/prigians/vlsi_asic/script/
set_db init_hdl_search_path /home/p/prigians/vlsi_asic/verilog/

# timing libary -> slow_vdd1v2_basicCells.lib
set_db library /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing/slow_vdd1v2_basicCells.lib
 
# physical parameter libs
set_db lef_library {/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
 
# parasitic info library
read_qrc /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch 

# verilog file path
read_hdl /home/p/prigians/vlsi_asic/verilog/picorv32.v

#Do not replace DFF with SDFF
set_db / .use_scan_seqs_for_non_dft false 

# end of initialization
 
# circuit elaboration with picorv32_wb as top level module
elaborate picorv32_wb

# check elaboration results and make sure that there are zero uresolved refereneces
check_design

# read sdc file from the script path
read_sdc picorv32_constraints_4.sdc

# check timing conditions
check_timing_intent


############ OPTIMIZATION ###############

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


# synthesize the design
# -----------------------------------------------------------------------------
# convert RTL into structural description using primitives 
syn_generic
# assign the primitives from the previous step to the library cells
syn_map
# optimize the result of the  previous synthesis  steps
syn_opt


# analyze design
# -----------------------------------------------------------------------------
# area analysis report
report_area > area_report_4.txt
# selected gates analysis report
report_gates > gate_report_4.txt
# timing analysis report including worst path of design
report_timing > timing_report_4.txt
# power analysis report
report_power > power_report_4.txt
# quality of results
report_qor > qor_report_4.txt


# export design
# -----------------------------------------------------------------------------
# export gate-level-netlist called netlist_1.v under the ~/vlsi_asic/exrcise_1
write_hdl > netlist_4.v
# design constraints
write_script > constraints_4.g
# design constarints in sdc form
write_sdc > constraints_4.sdc


# export design for innovus
# ----------------------------------------------------------------------------
# create all necessary files for innovus
write_design -innovus picorv32_wb


# check timing conditions
check_timing_intent
