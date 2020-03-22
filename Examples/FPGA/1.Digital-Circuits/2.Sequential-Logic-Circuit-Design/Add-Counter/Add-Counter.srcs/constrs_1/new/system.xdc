set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports {Q[0]}];
set_property -dict { PACKAGE_PIN A5  IOSTANDARD LVCMOS33 } [get_ports {Q[1]}];
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports {Q[2]}];
set_property -dict { PACKAGE_PIN B3  IOSTANDARD LVCMOS33 } [get_ports {Q[3]}];