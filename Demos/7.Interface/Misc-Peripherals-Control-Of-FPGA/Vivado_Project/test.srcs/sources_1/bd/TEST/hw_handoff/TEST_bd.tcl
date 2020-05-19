
################################################################
# This is a generated script based on design: TEST
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source TEST_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# test

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7s15ftgb196-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name TEST

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set IN1_0 [ create_bd_port -dir O IN1_0 ]
  set IN4_0 [ create_bd_port -dir O IN4_0 ]
  set SCL_0 [ create_bd_port -dir O SCL_0 ]
  set SDA_0 [ create_bd_port -dir O SDA_0 ]
  set adc_date_0 [ create_bd_port -dir I -from 7 -to 0 adc_date_0 ]
  set adc_en_0 [ create_bd_port -dir O adc_en_0 ]
  set clk_in1_0 [ create_bd_port -dir I -type clk clk_in1_0 ]
  set clk_out2_0 [ create_bd_port -dir O -type clk clk_out2_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {20000000} \
 ] $clk_out2_0
  set clk_out3_0 [ create_bd_port -dir O -type clk clk_out3_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {20000000} \
 ] $clk_out3_0
  set din_0 [ create_bd_port -dir O din_0 ]
  set fpga_rgb_0 [ create_bd_port -dir O fpga_rgb_0 ]
  set io0_0 [ create_bd_port -dir O io0_0 ]
  set io10_0 [ create_bd_port -dir O io10_0 ]
  set io11_0 [ create_bd_port -dir O io11_0 ]
  set io12_0 [ create_bd_port -dir O io12_0 ]
  set io13_0 [ create_bd_port -dir O io13_0 ]
  set io1_0 [ create_bd_port -dir O io1_0 ]
  set io2_0 [ create_bd_port -dir O io2_0 ]
  set io3_0 [ create_bd_port -dir O io3_0 ]
  set io4_0 [ create_bd_port -dir O io4_0 ]
  set io5_0 [ create_bd_port -dir O io5_0 ]
  set io6_0 [ create_bd_port -dir O io6_0 ]
  set io7_0 [ create_bd_port -dir O io7_0 ]
  set io8_0 [ create_bd_port -dir O io8_0 ]
  set io9_0 [ create_bd_port -dir O io9_0 ]
  set k1_0 [ create_bd_port -dir I k1_0 ]
  set k2_0 [ create_bd_port -dir I k2_0 ]
  set k3_0 [ create_bd_port -dir I k3_0 ]
  set k4_0 [ create_bd_port -dir I k4_0 ]
  set led1_0 [ create_bd_port -dir O led1_0 ]
  set led2_0 [ create_bd_port -dir O led2_0 ]
  set sync_0 [ create_bd_port -dir O sync_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {209.588} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {10.000} \
   CONFIG.CLKOUT2_JITTER {183.243} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {20.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {183.243} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {20.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {100.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {50} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: test_0, and set properties
  set block_name test
  set block_cell_name test_0
  if { [catch {set test_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $test_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net adc_date_0_1 [get_bd_ports adc_date_0] [get_bd_pins test_0/adc_date]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports clk_in1_0] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins test_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_ports clk_out2_0] [get_bd_ports clk_out3_0] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins test_0/dac_clk]
  connect_bd_net -net k1_0_1 [get_bd_ports k1_0] [get_bd_pins test_0/k1]
  connect_bd_net -net k2_0_1 [get_bd_ports k2_0] [get_bd_pins test_0/k2]
  connect_bd_net -net k3_0_1 [get_bd_ports k3_0] [get_bd_pins test_0/k3]
  connect_bd_net -net k4_0_1 [get_bd_ports k4_0] [get_bd_pins test_0/k4]
  connect_bd_net -net test_0_IN1 [get_bd_ports IN1_0] [get_bd_pins test_0/IN1]
  connect_bd_net -net test_0_IN4 [get_bd_ports IN4_0] [get_bd_pins test_0/IN4]
  connect_bd_net -net test_0_SCL [get_bd_ports SCL_0] [get_bd_pins test_0/SCL]
  connect_bd_net -net test_0_SDA [get_bd_ports SDA_0] [get_bd_pins test_0/SDA]
  connect_bd_net -net test_0_adc_en [get_bd_ports adc_en_0] [get_bd_pins test_0/adc_en]
  connect_bd_net -net test_0_din [get_bd_ports din_0] [get_bd_pins test_0/din]
  connect_bd_net -net test_0_fpga_rgb [get_bd_ports fpga_rgb_0] [get_bd_pins test_0/fpga_rgb]
  connect_bd_net -net test_0_io0 [get_bd_ports io0_0] [get_bd_pins test_0/io0]
  connect_bd_net -net test_0_io1 [get_bd_ports io1_0] [get_bd_pins test_0/io1]
  connect_bd_net -net test_0_io2 [get_bd_ports io2_0] [get_bd_pins test_0/io2]
  connect_bd_net -net test_0_io3 [get_bd_ports io3_0] [get_bd_pins test_0/io3]
  connect_bd_net -net test_0_io4 [get_bd_ports io4_0] [get_bd_pins test_0/io4]
  connect_bd_net -net test_0_io5 [get_bd_ports io5_0] [get_bd_pins test_0/io5]
  connect_bd_net -net test_0_io6 [get_bd_ports io6_0] [get_bd_pins test_0/io6]
  connect_bd_net -net test_0_io7 [get_bd_ports io7_0] [get_bd_pins test_0/io7]
  connect_bd_net -net test_0_io8 [get_bd_ports io8_0] [get_bd_pins test_0/io8]
  connect_bd_net -net test_0_io9 [get_bd_ports io9_0] [get_bd_pins test_0/io9]
  connect_bd_net -net test_0_io10 [get_bd_ports io10_0] [get_bd_pins test_0/io10]
  connect_bd_net -net test_0_io11 [get_bd_ports io11_0] [get_bd_pins test_0/io11]
  connect_bd_net -net test_0_io12 [get_bd_ports io12_0] [get_bd_pins test_0/io12]
  connect_bd_net -net test_0_io13 [get_bd_ports io13_0] [get_bd_pins test_0/io13]
  connect_bd_net -net test_0_led1 [get_bd_ports led1_0] [get_bd_pins test_0/led1]
  connect_bd_net -net test_0_led2 [get_bd_ports led2_0] [get_bd_pins test_0/led2]
  connect_bd_net -net test_0_sync [get_bd_ports sync_0] [get_bd_pins test_0/sync]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


