set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports Clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {Clock}];

set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports {Reset}];
set_property -dict { PACKAGE_PIN A5  IOSTANDARD LVCMOS33 } [get_ports {A}];
set_property -dict { PACKAGE_PIN B3  IOSTANDARD LVCMOS33 } [get_ports {G}];
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports {F}];