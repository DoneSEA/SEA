## Clock signal 100 MHz
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk_100MHz]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100MHz]

#SMG
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {o_bit[0]}]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports {o_bit[1]}]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports {o_bit[2]}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {o_bit[3]}]

set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports {o_segment[0]}]
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS33} [get_ports {o_segment[1]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {o_segment[2]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {o_segment[3]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {o_segment[4]}]
set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVCMOS33} [get_ports {o_segment[5]}]
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {o_segment[6]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {o_segment[7]}]

#source
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports o_en[0]]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports o_en[1]]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33} [get_ports o_en[2]]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]