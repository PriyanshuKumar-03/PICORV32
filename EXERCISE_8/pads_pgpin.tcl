#############################################################

globalNetConnect VDD -type pgpin -pin VDD -inst *

globalNetConnect VSS -type pgpin -pin VSS -inst *

##############################################################

globalNetConnect VDD -type tiehi -instanceBasename *

globalNetConnect VSS -type tielo -instanceBasename *

##############################################################

globalNetConnect VDD -type pgpin -pin PAD -inst u_picorv32_wb_pads/pad_vdd

globalNetConnect VSS -type pgpin -pin PAD -inst u_picorv32_wb_pads/pad_vss

##############################################################

createPGPin VDD -net VDD -geom Metal11 240.0 5443.77 242.0 5447.77

createPGPin VSS -net VSS -geom Metal10 5398.0 5443.77 5400.0 5447.77
