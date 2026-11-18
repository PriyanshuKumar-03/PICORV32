#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Dec 12 13:26:02 2025                
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
save_global picorv32_wb_5.globals
set init_gnd_net VSS
set init_lef_file {/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog genus.v
set init_mmmc_file picorv32_wb_5.view
set init_pwr_net {VDD }
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 250 250 20 20 20 20
uiSetTool select
getIoFlowFlag
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
saveDesign prePlacement
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -maxRouteLayer 9 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
place_opt_design
checkPlace
group_path -name R2R -from [all_registers] -to [all_registers]
group_path -name I2R -from [all_inputs] -to [all_registers]
group_path -name R2O -from [all_registers] -to [all_outputs]
group_path -name I2O -from [all_inputs] -to [all_outputs]
report_area > area_preCTS.txt
report_power > power_preCTS.txt
report_area
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_preCTS -outDir timingReports
add_ndr -width {Metal1 0.12 Metal2 0.16 Metal3 0.16 Metal4 0.16 Metal5 0.16 Metal6 0.16 Metal7 0.16 Metal8 0.16 Metal9 0.16 Metal10 0.44 Metal11 0.44 } -name 2W1S
saveDesign preCTS
create_route_type -name clk_trunk_type -top_preferred_layer 9 -bottom_preferred_layer 8 -non_default_rule 2W1S -shield_net VSS -shield_side both_side
set_ccopt_property route_type clk_trunk_type -net_type trunk
set_ccopt_property target_max_trans 0.04 -net_type trunk
create_route_type -name clk_leaf_type -top_preferred_layer 9 -bottom_preferred_layer 8 -shield_net VSS -shield_side both_side
set_ccopt_property route_type clk_leaf_type -net_type leaf
set_ccopt_property target_max_trans 0.04 -net_type leaf
set_ccopt_property target_skew 1.0
create_ccopt_clock_tree_spec -file clk.spec
ccopt_design
report_ccopt_clock_trees > report_clock_tree.txt
report_ccopt_skew_groups > report_skew_groups.txt
report_area > area_postCTS.txt
report_power > power_postCTS.txt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_postCTS -outDir timingReports
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
optDesign -postRoute -setup -hold
setAnalysisMode -analysisTyoe onChipVariation -cppr both
setAnalysisMode -analysisType onChipVariation -cppr both
optDesign -postRoute -setup -hold
report_area > area_postRoute.txt
report_power > power_postRoute.txt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_postRoute -outDir timingReports
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
