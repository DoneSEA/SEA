set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports UART_0_rxd]
set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVCMOS33} [get_ports UART_0_txd]

set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[0]}]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[1]}]

#MIPI
set_property PACKAGE_PIN M12 [get_ports {cam_gpio[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gpio[0]}]
#set_property PULLUP true [get_ports {cam_gpio_tri_io[0]}];

set_property -dict {PACKAGE_PIN K11 IOSTANDARD LVCMOS33} [get_ports cam_iic_scl_io]
set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS33} [get_ports cam_iic_sda_io]

set_property PULLUP true [get_ports cam_iic_scl_io]
set_property PULLUP true [get_ports cam_iic_sda_io]

set_property INTERNAL_VREF 0.6 [get_iobanks 14]

#set_property PACKAGE_PIN C10 [get_ports {data_lp_n_0[0]}];#FPGA_IO12
#set_property IOSTANDARD HSUL_12 [get_ports {data_lp_n_0[0]};
#set_property PACKAGE_PIN D10 [get_ports {data_lp_p_0[0]}];#FPGA_IO13
#set_property IOSTANDARD HSUL_12 [get_ports {data_lp_p_0[0]}];

set_property -dict {PACKAGE_PIN C10 IOSTANDARD HSUL_12} [get_ports {data_lp_n_0[0]}]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD HSUL_12} [get_ports {data_lp_p_0[0]}]



set_property -dict {PACKAGE_PIN F11 IOSTANDARD LVDS_25} [get_ports clk_rxn_0]
set_property -dict {PACKAGE_PIN G11 IOSTANDARD LVDS_25} [get_ports clk_rxp_0]

set_property -dict {PACKAGE_PIN J12 IOSTANDARD LVDS_25} [get_ports {data_rxn_0[0]}]
set_property -dict {PACKAGE_PIN J11 IOSTANDARD LVDS_25} [get_ports {data_rxp_0[0]}]
set_property -dict {PACKAGE_PIN P11 IOSTANDARD LVDS_25} [get_ports {data_rxn_0[1]}]
set_property -dict {PACKAGE_PIN P10 IOSTANDARD LVDS_25} [get_ports {data_rxp_0[1]}]

## Clock signal 100 MHz

set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk_in1_0]

##HDMI Tx

#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L19N_T3_VREF_35 Sch=hdmi_tx_cec
set_property -dict {PACKAGE_PIN F4 IOSTANDARD TMDS_33} [get_ports TMDS_0_clk_n]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD TMDS_33} [get_ports TMDS_0_clk_p]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_n[0]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_p[0]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_n[1]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_p[1]}]
set_property -dict {PACKAGE_PIN C1 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_n[2]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD TMDS_33} [get_ports {TMDS_0_data_p[2]}]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_hpdn }]; #IO_0_34 Sch=hdmi_tx_hpdn



create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_in1_0]
create_clock -period 10.760 -name dphy_hs_clock_p -waveform {0.000 5.380} [get_ports clk_rxp_0]
#set_false_path -from [get_clocks [get_clocks -of_objects [get_pins system_i/csi2_d_phy_rx_0/U0/clock_system_inst/BUFR_inst/O]]] -to [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0] -filter {IS_GENERATED && MASTER_CLOCK == clk_in1_0}]]
#set_false_path -from [get_clocks [get_clocks -of_objects [get_pins system_i/csi2_d_phy_rx_0/U0/clock_system_inst/BUFR_inst/O]]] -to [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0] -filter {IS_GENERATED && MASTER_CLOCK == sys_clk_pin}]]
set_false_path -from [get_clocks [get_clocks -of_objects [get_pins system_i/csi2_d_phy_rx_0/U0/clock_system_inst/BUFR_inst/O]]] -to [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_1/inst/mmcm_adv_inst/CLKOUT0]]]

set_property PACKAGE_PIN P2 [get_ports qspi_d0_0]
set_property PACKAGE_PIN L14 [get_ports qspi_d1_0]
set_property PACKAGE_PIN J13 [get_ports qspi_d2_0]
set_property PACKAGE_PIN D13 [get_ports qspi_d3_0]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_d0_0]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_d1_0]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_d2_0]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_d3_0]
set_property PACKAGE_PIN M13 [get_ports I_qspi_cs_0]
set_property IOSTANDARD LVCMOS33 [get_ports I_qspi_cs_0]
set_property IOSTANDARD LVCMOS33 [get_ports I_qspi_clk_0]
set_property PACKAGE_PIN H14 [get_ports I_qspi_clk_0]

set_property IOSTANDARD LVCMOS33 [get_ports spi_sclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_sdi_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_sdo_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_ss_n_0]
set_property PACKAGE_PIN H13 [get_ports spi_sclk_0]
set_property PACKAGE_PIN L5 [get_ports spi_sdo_0]
set_property PACKAGE_PIN M5 [get_ports spi_sdi_0]
set_property PACKAGE_PIN B2 [get_ports spi_ss_n_0]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {I_qspi_clk_0_IBUF}]
