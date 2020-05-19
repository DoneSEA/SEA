vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../test.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../test.srcs/sources_1/bd/TEST/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../test.srcs/sources_1/bd/TEST/ipshared/b65a" \
"../../../bd/TEST/ip/TEST_test_0_0/sim/TEST_test_0_0.v" \
"../../../bd/TEST/sim/TEST.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0_0/TEST_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0_0/TEST_clk_wiz_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

