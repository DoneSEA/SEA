# tary, 18:52 2019/6/19
set_property PACKAGE_PIN H4 [get_ports osc_clk]
set_property IOSTANDARD LVCMOS33 [get_ports osc_clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports osc_clk]

set_property IOSTANDARD LVCMOS33 [get_ports sk6805_do]

# UART export through GPORT_C[1:0]
# set_property IOSTANDARD LVCMOS33 [get_ports i_uart_rx]
# set_property IOSTANDARD LVCMOS33 [get_ports o_uart_tx]
# set_property PACKAGE_PIN C12 [get_ports i_uart_rx]
# set_property PACKAGE_PIN A12 [get_ports o_uart_tx]

set_property IOSTANDARD LVCMOS33 [get_ports spi_clk]
set_property IOSTANDARD LVCMOS33 [get_ports spi_fss]
set_property IOSTANDARD LVCMOS33 [get_ports spi_in]
set_property IOSTANDARD LVCMOS33 [get_ports spi_out]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_a[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_b[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_c[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_dx[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_e[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_fx[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gport_z[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {o_adc_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_adc_data[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {o_dac_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_dac_sync_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_dac_data}]


# FPGA_IO0 - FPGA_IO7
set_property PACKAGE_PIN N14 [get_ports {gport_a[0]}]
set_property PACKAGE_PIN M14 [get_ports {gport_a[1]}]
set_property PACKAGE_PIN C4  [get_ports {gport_a[2]}]
set_property PACKAGE_PIN B13 [get_ports {gport_a[3]}]
set_property PACKAGE_PIN N10 [get_ports {gport_a[4]}]
set_property PACKAGE_PIN M10 [get_ports {gport_a[5]}]
set_property PACKAGE_PIN B14 [get_ports {gport_a[6]}]
set_property PACKAGE_PIN D3  [get_ports {gport_a[7]}]

# FPGA_IO8 - FPGA_IO9
set_property PACKAGE_PIN P5   [get_ports {gport_b[0]}]
set_property PACKAGE_PIN E11  [get_ports {gport_b[1]}]

# FPGA_QSPI
set_property PACKAGE_PIN L14  [get_ports {gport_b[2]}]
set_property PACKAGE_PIN P2   [get_ports {gport_b[3]}]
set_property PACKAGE_PIN D13  [get_ports {gport_b[4]}]
set_property PACKAGE_PIN J13  [get_ports {gport_b[5]}]

# FPGA_LED1/2
set_property PACKAGE_PIN J1  [get_ports {gport_b[6]}]
set_property PACKAGE_PIN A13 [get_ports {gport_b[7]}]

# ARDUINO_D0 - D8
set_property PACKAGE_PIN A12 [get_ports {gport_c[0]}]
set_property PACKAGE_PIN C12 [get_ports {gport_c[1]}]
set_property PACKAGE_PIN A10 [get_ports {gport_c[2]}]
set_property PACKAGE_PIN B6  [get_ports {gport_c[3]}]
set_property PACKAGE_PIN A5  [get_ports {gport_c[4]}]
set_property PACKAGE_PIN B5  [get_ports {gport_c[5]}]
set_property PACKAGE_PIN A4  [get_ports {gport_c[6]}]
set_property PACKAGE_PIN A3  [get_ports {gport_c[7]}]

set_property PACKAGE_PIN B3  [get_ports {gport_fx[0]}]
# ARDUINO_D11 - D13
set_property PACKAGE_PIN B1  [get_ports {gport_fx[1]}]
set_property PACKAGE_PIN H1  [get_ports {gport_fx[2]}]
set_property PACKAGE_PIN H2  [get_ports {gport_fx[3]}]

# IMU_AD
set_property PACKAGE_PIN J14 [get_ports {gport_dx[0]}]
# IMU_INT2
set_property PACKAGE_PIN L12 [get_ports {gport_dx[1]}]
# AR_3V3_EN
set_property PACKAGE_PIN L13 [get_ports {gport_dx[2]}]
# FPGA_QSPI
set_property PACKAGE_PIN H14 [get_ports {gport_dx[3]}]
set_property PACKAGE_PIN M13 [get_ports {gport_dx[4]}]
# FPGA I2C
set_property PACKAGE_PIN P13 [get_ports {gport_dx[5]}]
set_property PACKAGE_PIN P12 [get_ports {gport_dx[6]}]

# K1 - K4
set_property PACKAGE_PIN M2  [get_ports {gport_e[0]}]
set_property PACKAGE_PIN L2  [get_ports {gport_e[1]}]
set_property PACKAGE_PIN L3  [get_ports {gport_e[2]}]
set_property PACKAGE_PIN K3  [get_ports {gport_e[3]}]
# USER1/2
set_property PACKAGE_PIN C3  [get_ports {gport_e[4]}]
set_property PACKAGE_PIN M4  [get_ports {gport_e[5]}]
# FPGA_RST
set_property PACKAGE_PIN D14 [get_ports {gport_e[6]}]
# ADC1173./OE
set_property PACKAGE_PIN J4  [get_ports {gport_e[7]}]

# ADC1173.CLK
set_property PACKAGE_PIN C5  [get_ports {o_adc_clk}]

# ADC1173.DATA
set_property PACKAGE_PIN J3  [get_ports {i_adc_data[0]}]
set_property PACKAGE_PIN J2  [get_ports {i_adc_data[1]}]
set_property PACKAGE_PIN D12 [get_ports {i_adc_data[2]}]
set_property PACKAGE_PIN E12 [get_ports {i_adc_data[3]}]
set_property PACKAGE_PIN F12 [get_ports {i_adc_data[4]}]
set_property PACKAGE_PIN C11 [get_ports {i_adc_data[5]}]
set_property PACKAGE_PIN H11 [get_ports {i_adc_data[6]}]
set_property PACKAGE_PIN H12 [get_ports {i_adc_data[7]}]

# VERSION
set_property PACKAGE_PIN P4  [get_ports {gport_z[0]}]
set_property PACKAGE_PIN P3  [get_ports {gport_z[1]}]
set_property PACKAGE_PIN C14 [get_ports {gport_z[2]}]
# AR_DETECT
set_property PACKAGE_PIN B11 [get_ports {gport_z[3]}]
# AR_RESET
set_property PACKAGE_PIN K4  [get_ports {gport_z[4]}]
# DG2788A IN12
set_property PACKAGE_PIN H3  [get_ports {gport_z[5]}]
# TXS0104E-0
set_property PACKAGE_PIN N4  [get_ports {gport_z[6]}]
# TXS0104E-1
set_property PACKAGE_PIN M3  [get_ports {gport_z[7]}]

# ARDUINO SPI
set_property PACKAGE_PIN A2  [get_ports rst_n]
set_property PACKAGE_PIN B2  [get_ports spi_fss]
# set_property PACKAGE_PIN H2 [get_ports spi_clk]
# set_property PACKAGE_PIN B1 [get_ports spi_in]
# set_property PACKAGE_PIN H1 [get_ports spi_out]
set_property PACKAGE_PIN H13 [get_ports spi_clk]
set_property PACKAGE_PIN M5  [get_ports spi_in]
set_property PACKAGE_PIN L5  [get_ports spi_out]

# SK6805
set_property PACKAGE_PIN N11 [get_ports sk6805_do]

# DAC7311
set_property PACKAGE_PIN M1  [get_ports {o_dac_clk}]
set_property PACKAGE_PIN N1  [get_ports {o_dac_sync_n}]
set_property PACKAGE_PIN L1  [get_ports {o_dac_data}]

