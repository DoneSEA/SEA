## Clock signal 100 MHz

set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk_100MHz]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];

set_property -dict { PACKAGE_PIN N11  IOSTANDARD LVCMOS33 } [get_ports {RGB_LED_tri_o}];

set_property PACKAGE_PIN J1 [get_ports {LED_tri_o[0]}]
set_property PACKAGE_PIN A13 [get_ports {LED_tri_o[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {LED_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_tri_o[1]}]

set_property PULLDOWN true [get_ports {LED_tri_o[0]}]
set_property PULLDOWN true [get_ports {LED_tri_o[1]}]