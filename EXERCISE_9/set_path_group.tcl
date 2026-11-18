# Create path groups
group_path -name R2R -from [all_registers] -to [all_registers]
group_path -name I2R -from [all_inputs] -to [all_registers]
group_path -name R2O -from [all_registers] -to [all_outputs]
group_path -name I2O -from [all_inputs] -to [all_outputs]
