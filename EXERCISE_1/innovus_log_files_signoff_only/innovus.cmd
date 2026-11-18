#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Feb 18 12:57:30 2026                
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
restoreDesign postRoute_new.dat picorv32_wb
uiSetTool stretchWire
uiSetTool select
setEditMode -type regular
saveDesign postRoute_NEW
uiSetTool copy
setExtractRCMode -engine postRoute -effortLevel high
extractRC
setDesignMode -process 45
setExtractRCMode -engine postRoute -effortLevel signoff âcoupled true âlefTechFileMap extr.picorv32_wb.layermap.log
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix picorv32_wb_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix picorv32_wb_signOff -outDir timingReports
zoomBox -90.65250 -104.22200 362.21450 343.64100
