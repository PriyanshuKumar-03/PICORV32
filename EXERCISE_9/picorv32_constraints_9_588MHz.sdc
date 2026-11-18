# constraints file
# units must be same as the fast_vdd1v2_basicCells.lib
# time_units -> ns  cap_units -> pF
# -min flag -> hold time analysis
# -max flag -> setup time analysis
# no -{min,max} -> same value for both setup and hold time analysis

# 1.clock creation -> name:clk  duty_cycle:50%  freq:588MHz
create_clock [get_ports wb_clk_i] -name clk -period 1.7 -waveform {0 0.85}

# 2.clock latency -> 200ps = 0.20ns
set_clock_latency 0.20 [get_clocks clk]

# 3.clock uncertainty -> 20ps = 0.02ns (clock network)
set_clock_uncertainty 0.02 [get_clocks clk]

# 4.clock transition time (rissing/falling) -> 1% of T = 1% of 1.7 = 0.017ns
set_clock_transition 0.017 [get_clocks clk]

# 5. output delay for setup time analysis + clock network delay -> 0.50ns
set_output_delay -clock clk -network_latency_included -max 0.50 [all_outputs]

# 6. output delay for hold time analysis + clock network delay -> 0.25ns
set_output_delay -clock clk -network_latency_included -min 0.25 [all_outputs]

# 7. output load for setup time analysis -> 0.3pF = 300fF [expects the capaciatnce value in pF]
set_load -max 0.30 [all_outputs]

# 8. output load for hold time analysis -> 0.04pF = 40fF  [expects the capaciatnce value in pF]
set_load -min 0.04 [all_outputs]

# 9. input delay for setup time analysis + clock network delay -> 0.50ns
set_input_delay -clock clk -network_latency_included -max 0.50 [all_inputs -no_clocks]

# 10. input delay for hold time analysis + clock network delay -> 0.25ns
set_input_delay -clock clk -network_latency_included -min 0.25 [all_inputs -no_clocks]

# 11. input driving cell for setup time analysis -> BUFX2
set_driving_cell -lib_cell BUFX2 -max [all_inputs -no_clocks]

# 12. input driving cell for hold time analysis -> BUFX8
set_driving_cell -lib_cell BUFX8 -min [all_inputs -no_clocks]


