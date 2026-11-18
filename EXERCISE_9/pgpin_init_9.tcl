#############################################################

globalNetConnect VDD -type pgpin -pin VDD -inst *

globalNetConnect VSS -type pgpin -pin VSS -inst *

##############################################################

globalNetConnect VDD -type tiehi  -instanceBasename *

globalNetConnect VSS -type tielo  -instanceBasename *

##############################################################

createPGPin VDD_PIN -net VDD -geom Metal11 0 194.395 1 195.645

createPGPin VSS_PIN -net VSS -geom Metal10 205 3.665 206 4.915

##############################################################
