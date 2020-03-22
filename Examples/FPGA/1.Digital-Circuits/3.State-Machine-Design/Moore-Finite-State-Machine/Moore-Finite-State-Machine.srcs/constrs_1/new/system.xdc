set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN C3  IOSTANDARD LVCMOS33 } [get_ports {Key1}];
set_property -dict { PACKAGE_PIN M4  IOSTANDARD LVCMOS33 } [get_ports {Key2}];

set_property -dict { PACKAGE_PIN J1  IOSTANDARD LVCMOS33 } [get_ports {LED}];