vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/dist_mem_gen_v8_0_12

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap dist_mem_gen_v8_0_12 questa_lib/msim/dist_mem_gen_v8_0_12

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ipshared/2fbb/IO_reg.v" \
"../../../bd/design_1/ipshared/2fbb/alu.v" \
"../../../bd/design_1/ipshared/2fbb/decoder.v" \
"../../../bd/design_1/ipshared/2fbb/distribute.v" \
"../../../bd/design_1/ipshared/2fbb/timer.v" \
"../../../bd/design_1/ipshared/2fbb/pic16c56.v" \
"../../../bd/design_1/ip/design_1_pic16c56_0_0_1/sim/design_1_pic16c56_0_0.v" \

vlog -work dist_mem_gen_v8_0_12 -64 \
"../../../../project_5.srcs/sources_1/bd/design_1/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_dist_mem_gen_0_0/sim/design_1_dist_mem_gen_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

