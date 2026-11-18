#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Dec  6 23:41:01 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.35-s114_1 (64bit) 10/13/2022 12:11 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.35-s114_1 NR220912-2004/21_15-UB (database version 18.20.592_1) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 10/13/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
save_global picorv32_wb.globals
set init_gnd_net VSS
set init_lef_file {/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog genus.v
set init_mmmc_file picorv32_wb.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 250 250 20 20 20 20
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -d 250.0 250.04 20.0 19.95 20.0 19.95
uiSetTool select
getIoFlowFlag
fit
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} -width {top 4 bottom 4 left 4 right 4} -spacing {top 4 bottom 4 left 4 right 4} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal10 -direction vertical -width 4 -spacing 4 -set_to_set_distance 57.5 -start_from left -start_offset 41.5 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi -instanceBasename *
globalNetConnect VSS -type tielo -instanceBasename *
createPGPin VDD_PIN -net VDD -geom Metal11 0 234.265 1 236.265
createPGPin VSS_PIN -net VSS -geom Metal10 249 13.735 250 15.735
setSrouteMode -viaConnectToShape { padring ring stripe blockring blockpin noshape blockwire corewire followpin iowire noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -maxRouteLayer 9 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
getPlaceMode
place_opt_design
checkPlace
group_path -name R2R -from [all_registers] -to [all_registers]
group_path -name I2R -from [all_inputs] -to [all_registers]
group_path -name R2O -from [all_registers] -to [all_outputs]
group_path -name I2O -from [all_inputs] -to [all_outputs]
report_area > area_preCTS.txt
report_power > power_preCTS.txt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_preCTS -outDir timingReports
set_power_analysis_mode -reset
set_power_analysis_mode -method static -analysis_view default_emulate_view -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./run1
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile ./run1/picorv32_wb.rpt
set_rail_analysis_mode -method era_static -power_switch_eco false -generate_movies false -save_voltage_waveforms false -accuracy xd -analysis_view default_emulate_view -process_techgen_em_rules false -enable_rlrp_analysis false -extraction_tech_file /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch -vsrc_search_distance 50 -ignore_shorts false -enable_manufacturing_effects false -report_via_current_direction false
setDrawView place
create_power_pads -net VDD -auto_fetch
setDrawView place
create_power_pads -net VDD -vsrc_file vdd.pp
set_pg_nets -net VDD -voltage 1.32 -threshold 1.2
set_power_data -reset
set_power_data -format current -scale 1 run1/static_VDD.ptiavg
set_power_pads -reset
set_power_pads -net VDD -format xy -file vdd.pp
set_package -reset
set_package -spice {} -mapping {}
set_net_group -reset
set_advanced_rail_options -reset
analyze_rail -type net -results_directory ./run1 VDD
getCTSMode -engine -quiet
setLayerPreference powerNet -color {#0000FF #0010DE #0020BD #00319C #00417B #00525A #006239 #007318 #088300 #299400 #4AA400 #6AB400 #8BC500 #ACD500 #CDE600 #EEF600 #FFF900 #FFED00 #FFE200 #FFD600 #FFCB00 #FFBF00 #FFB400 #FFA800 #FF9500 #FF8000 #FF6A00 #FF5500 #FF4000 #FF2A00 #FF1500 #FF0000}
set_power_rail_display -plot none
setLayerPreference powerNet -color {#0000ff #0010de #0020bd #00319c #00417b #00525a #006239 #007318 #088300 #299400 #4aa400 #6ab400 #8bc500 #acd500 #cde600 #eef600 #fff900 #ffed00 #ffe200 #ffd600 #ffcb00 #ffbf00 #ffb400 #ffa800 #ff9500 #ff8000 #ff6a00 #ff5500 #ff4000 #ff2a00 #ff1500 #ff0000}
set_power_rail_display -enable_voltage_sources 0
set_power_rail_display -enable_percentage_range 0
fit
set_power_rail_display -plot none
setLayerPreference powerNet -color {#0000ff #0010de #0020bd #00319c #00417b #00525a #006239 #007318 #088300 #299400 #4aa400 #6ab400 #8bc500 #acd500 #cde600 #eef600 #fff900 #ffed00 #ffe200 #ffd600 #ffcb00 #ffbf00 #ffb400 #ffa800 #ff9500 #ff8000 #ff6a00 #ff5500 #ff4000 #ff2a00 #ff1500 #ff0000}
::read_power_rail_results -power_db run1/power.db -rail_directory run1/VDD_25C_avg_1 -instance_voltage_window { timing  whole  } -instance_voltage_method {  worst  best  avg  worstavg worstslidingavg bestslidingavg }
set_power_rail_display -plot ir
setLayerPreference powerNet -color {#0000ff #0010de #0020bd #00319c #00417b #00525a #006239 #007318 #088300 #299400 #4aa400 #6ab400 #8bc500 #acd500 #cde600 #eef600 #fff900 #ffed00 #ffe200 #ffd600 #ffcb00 #ffbf00 #ffb400 #ffa800 #ff9500 #ff8000 #ff6a00 #ff5500 #ff4000 #ff2a00 #ff1500 #ff0000}
set_power_rail_display -plot none
setLayerPreference powerNet -color {#0000ff #0010de #0020bd #00319c #00417b #00525a #006239 #007318 #088300 #299400 #4aa400 #6ab400 #8bc500 #acd500 #cde600 #eef600 #fff900 #ffed00 #ffe200 #ffd600 #ffcb00 #ffbf00 #ffb400 #ffa800 #ff9500 #ff8000 #ff6a00 #ff5500 #ff4000 #ff2a00 #ff1500 #ff0000}
fit
setRouteMode -earlyGlobalMinRouteLayer 1 -earlyGlobalMaxRouteLayer 11 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
setRouteMode -earlyGlobalMinRouteLayer 5 -earlyGlobalMaxRouteLayer 10 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
reportCongestion -hotspot
setRouteMode -earlyGlobalMinRouteLayer 1 -earlyGlobalMaxRouteLayer 11 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
panPage 0 1
fit
reportCongestion -hotspot
saveDesign preCTS_design
add_ndr -width {Metal1 0.12 Metal2 0.16 Metal3 0.16 Metal4 0.16 Metal5 0.16 Metal6 0.16 Metal7 0.16 Metal8 0.16 Metal9 0.16 Metal10 0.44 Metal11 0.44 } -name 2W1S
create_route_type -name clk_trunk_type -top_preferred_layer 9 -bottom_preferred_layer 8 -non_default_rule 2W1S -shield_net VSS -shield_side both_side
set_ccopt_property route_type clk_trunk_type -net_type trunk
set_ccopt_property target_max_trans 0.04 -net_type trunk
create_route_type -name clk_leaf_type -top_preferred_layer 9 -bottom_preferred_layer 8 -shield_net VSS -shield_side both_side
set_ccopt_property route_type clk_leaf_type -net_type leaf
set_ccopt_property target_max_trans 0.04 -net_type leaf
set_ccopt_property target_skew 1.0
create_ccopt_clock_tree_spec -file clk.spec
ccopt_design
report_area > area_postCTS.txt
report_power > power_postCTS.txt
report_ccopt_clock_trees > report_clock_tree.txt
report_ccopt_skew_groups > report_skew_groups.txt
saveDesign preRoute_design
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort medium
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 11
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_postRoute -outDir timingReports
setAnalysisMode -analysisType onChipVariation -cppr both
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_postRoute -outDir timingReports
report_area > area_postRoute.txt
report_power > power_postRoute.txt
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report picorv32_wb.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyConnectivity -type all -error 1000 -warning 50
setMetalFill -layer Metal1 -opcActiveSpacing 0.060 -minDensity 10.00
setMetalFill -layer Metal2 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal3 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal4 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal5 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal6 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal7 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal8 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal9 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal10 -opcActiveSpacing 0.200 -minDensity 10.00
setMetalFill -layer Metal11 -opcActiveSpacing 0.200 -minDensity 10.00
addMetalFill -layer { Metal1 Metal2 Metal3 Metal4 Metal5 Metal6 Metal7 Metal8 Metal9 Metal10 Metal11 } -net { VSS VDD }
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report picorv32_wb.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveDesign postRoute_design
