# Clock Tree Synthesis after the creation of 2W1S non-default rule

# Clock Trunk Routing Type -> max: M9, min: M8, NDR: 2W1S, Shielding net: VSS
create_route_type -name clk_trunk_type -top_preferred_layer 9 -bottom_preferred_layer 8 -non_default_rule 2W1S -shield_net VSS -shield_side both_side

# Clock Trunk Definition -> type: clk_trunk_type, max transition: 1%(2.5ps) = 0.025ns
set_ccopt_property route_type clk_trunk_type  -net_type trunk
set_ccopt_property target_max_trans 0.025 -net_type trunk

# Clock Leaf Routing Type -> max: M9, min: M8, NDR: default(1W1S1), Shielding net: VSS
create_route_type -name clk_leaf_type -top_preferred_layer 9 -bottom_preferred_layer 8 -shield_net VSS -shield_side both_side

# Clock Leaf Definition -> type: clk_leaf_type, max transition: 1%(2.5ps) = 0.025ns
set_ccopt_property route_type clk_leaf_type  -net_type leaf
set_ccopt_property target_max_trans 0.025 -net_type leaf

# Target skew: 1ns
set_ccopt_property target_skew 1.0

# SPEC file creation
create_ccopt_clock_tree_spec -file clk.spec

# Clock tree creation/synthesis
ccopt_design

# Clock tree optimization
#optDesign –postCTS

# Reports
report_ccopt_clock_trees > report_clock_tree.txt
report_ccopt_skew_groups > report_skew_groups.txt
