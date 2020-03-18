# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_NUM_LANES" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_NUM_LP_LANES" -parent ${Page_0} -widget comboBox
  #Adding Group
  set Camera_Interface [ipgui::add_group $IPINST -name "Camera Interface" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_DIFF_TERM" -parent ${Camera_Interface}
  ipgui::add_param $IPINST -name "C_D0_SWAP" -parent ${Camera_Interface}
  ipgui::add_param $IPINST -name "C_D1_SWAP" -parent ${Camera_Interface}
  ipgui::add_param $IPINST -name "C_D2_SWAP" -parent ${Camera_Interface}
  set C_D3_SWAP [ipgui::add_param $IPINST -name "C_D3_SWAP" -parent ${Camera_Interface}]
  set_property tooltip {D3 P/N Swap} ${C_D3_SWAP}

  #Adding Group
  set Clocking_System [ipgui::add_group $IPINST -name "Clocking System" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_USE_DELAY" -parent ${Clocking_System}
  set C_IODELAY_GROUP [ipgui::add_param $IPINST -name "C_IODELAY_GROUP" -parent ${Clocking_System}]
  set_property tooltip {Iodelay Group} ${C_IODELAY_GROUP}
  ipgui::add_param $IPINST -name "C_ADD_IDELAYCTRL" -parent ${Clocking_System}
  ipgui::add_param $IPINST -name "C_CALIB_WAIT" -parent ${Clocking_System}
  ipgui::add_param $IPINST -name "C_RATE_LIMIT" -parent ${Clocking_System}



}

proc update_PARAM_VALUE.C_ADD_IDELAYCTRL { PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to update C_ADD_IDELAYCTRL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADD_IDELAYCTRL { PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to validate C_ADD_IDELAYCTRL
	return true
}

proc update_PARAM_VALUE.C_CALIB_WAIT { PARAM_VALUE.C_CALIB_WAIT } {
	# Procedure called to update C_CALIB_WAIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CALIB_WAIT { PARAM_VALUE.C_CALIB_WAIT } {
	# Procedure called to validate C_CALIB_WAIT
	return true
}

proc update_PARAM_VALUE.C_D0_SWAP { PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to update C_D0_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D0_SWAP { PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to validate C_D0_SWAP
	return true
}

proc update_PARAM_VALUE.C_D1_SWAP { PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to update C_D1_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D1_SWAP { PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to validate C_D1_SWAP
	return true
}

proc update_PARAM_VALUE.C_D2_SWAP { PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to update C_D2_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D2_SWAP { PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to validate C_D2_SWAP
	return true
}

proc update_PARAM_VALUE.C_D3_SWAP { PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to update C_D3_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D3_SWAP { PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to validate C_D3_SWAP
	return true
}

proc update_PARAM_VALUE.C_DIFF_TERM { PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to update C_DIFF_TERM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DIFF_TERM { PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to validate C_DIFF_TERM
	return true
}

proc update_PARAM_VALUE.C_IODELAY_GROUP { PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to update C_IODELAY_GROUP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IODELAY_GROUP { PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to validate C_IODELAY_GROUP
	return true
}

proc update_PARAM_VALUE.C_NUM_LANES { PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to update C_NUM_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_LANES { PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to validate C_NUM_LANES
	return true
}

proc update_PARAM_VALUE.C_NUM_LP_LANES { PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to update C_NUM_LP_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_LP_LANES { PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to validate C_NUM_LP_LANES
	return true
}

proc update_PARAM_VALUE.C_RATE_LIMIT { PARAM_VALUE.C_RATE_LIMIT } {
	# Procedure called to update C_RATE_LIMIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RATE_LIMIT { PARAM_VALUE.C_RATE_LIMIT } {
	# Procedure called to validate C_RATE_LIMIT
	return true
}

proc update_PARAM_VALUE.C_USE_DELAY { PARAM_VALUE.C_USE_DELAY } {
	# Procedure called to update C_USE_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_DELAY { PARAM_VALUE.C_USE_DELAY } {
	# Procedure called to validate C_USE_DELAY
	return true
}


proc update_MODELPARAM_VALUE.C_NUM_LANES { MODELPARAM_VALUE.C_NUM_LANES PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_LANES}] ${MODELPARAM_VALUE.C_NUM_LANES}
}

proc update_MODELPARAM_VALUE.C_NUM_LP_LANES { MODELPARAM_VALUE.C_NUM_LP_LANES PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_LP_LANES}] ${MODELPARAM_VALUE.C_NUM_LP_LANES}
}

proc update_MODELPARAM_VALUE.C_D0_SWAP { MODELPARAM_VALUE.C_D0_SWAP PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D0_SWAP}] ${MODELPARAM_VALUE.C_D0_SWAP}
}

proc update_MODELPARAM_VALUE.C_D1_SWAP { MODELPARAM_VALUE.C_D1_SWAP PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D1_SWAP}] ${MODELPARAM_VALUE.C_D1_SWAP}
}

proc update_MODELPARAM_VALUE.C_D2_SWAP { MODELPARAM_VALUE.C_D2_SWAP PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D2_SWAP}] ${MODELPARAM_VALUE.C_D2_SWAP}
}

proc update_MODELPARAM_VALUE.C_D3_SWAP { MODELPARAM_VALUE.C_D3_SWAP PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D3_SWAP}] ${MODELPARAM_VALUE.C_D3_SWAP}
}

proc update_MODELPARAM_VALUE.C_DIFF_TERM { MODELPARAM_VALUE.C_DIFF_TERM PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DIFF_TERM}] ${MODELPARAM_VALUE.C_DIFF_TERM}
}

proc update_MODELPARAM_VALUE.C_ADD_IDELAYCTRL { MODELPARAM_VALUE.C_ADD_IDELAYCTRL PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADD_IDELAYCTRL}] ${MODELPARAM_VALUE.C_ADD_IDELAYCTRL}
}

proc update_MODELPARAM_VALUE.C_IODELAY_GROUP { MODELPARAM_VALUE.C_IODELAY_GROUP PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IODELAY_GROUP}] ${MODELPARAM_VALUE.C_IODELAY_GROUP}
}

proc update_MODELPARAM_VALUE.C_USE_DELAY { MODELPARAM_VALUE.C_USE_DELAY PARAM_VALUE.C_USE_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_DELAY}] ${MODELPARAM_VALUE.C_USE_DELAY}
}

proc update_MODELPARAM_VALUE.C_CALIB_WAIT { MODELPARAM_VALUE.C_CALIB_WAIT PARAM_VALUE.C_CALIB_WAIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CALIB_WAIT}] ${MODELPARAM_VALUE.C_CALIB_WAIT}
}

proc update_MODELPARAM_VALUE.C_RATE_LIMIT { MODELPARAM_VALUE.C_RATE_LIMIT PARAM_VALUE.C_RATE_LIMIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RATE_LIMIT}] ${MODELPARAM_VALUE.C_RATE_LIMIT}
}

