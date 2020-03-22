set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clock}];

set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports {reset}];
set_property -dict { PACKAGE_PIN A5  IOSTANDARD LVCMOS33 } [get_ports {a}];
set_property -dict { PACKAGE_PIN B3  IOSTANDARD LVCMOS33 } [get_ports {g}];
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports {f}];