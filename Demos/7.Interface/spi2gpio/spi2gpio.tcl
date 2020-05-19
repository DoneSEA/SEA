# tary, 16:58 2019/6/19

# Project Name
set project_name spi2gpio
# Device  Model
set device_model xc7s15ftgb196-1
# current Path
set prj_dir [pwd]

cd $prj_dir
puts "The project dir is ${prj_dir}!"

# Create Project
# open_project $project_name
create_project -force $project_name $prj_dir -part $device_model

set_property simulator_language Verilog [current_project]
set_property source_mgmt_mode None [current_project]

# Resource Files
add_files -norecurse ${prj_dir}/src/spi2gpio.v
add_files -norecurse ${prj_dir}/src/freq_div.v
# add_files -norecurse ${prj_dir}/src/led_segment.v
add_files -norecurse ${prj_dir}/src/milisec_clk.v
add_files -norecurse ${prj_dir}/src/sk6805.v
add_files -norecurse ${prj_dir}/src/adc1173.v
add_files -norecurse ${prj_dir}/src/dac7311.v
add_files -norecurse ${prj_dir}/src/freq_divider.vhd
add_files -norecurse ${prj_dir}/src/shifter.vhd
add_files -norecurse ${prj_dir}/src/uart_cell.vhd
set_property top_file {${prj_dir}/src/spi2gpio.v} [current_fileset]

# Update Sources
update_compile_order -fileset sources_1

# RTL ANALYSIS
synth_design -rtl -name rtl_1

# SYNTHESIS
reset_run   synth_1
launch_runs synth_1

# CONSTRAINS
add_files -fileset constrs_1 ${prj_dir}/spi2gpio.xdc
set_property target_constrs_file ${prj_dir}/spi2gpio.xdc [current_fileset -constrset]

# IMPLEMENTATION
launch_runs impl_1
wait_on_run impl_1

# BITSTREAM
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

# EXIT
quit 0
