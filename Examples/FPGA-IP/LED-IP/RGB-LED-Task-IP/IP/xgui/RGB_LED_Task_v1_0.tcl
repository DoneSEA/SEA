# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Delta_Min" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PWM_PERCENT_Max" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PWM_PERCENT_Min" -parent ${Page_0}


}

proc update_PARAM_VALUE.Delta_Min { PARAM_VALUE.Delta_Min } {
	# Procedure called to update Delta_Min when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Delta_Min { PARAM_VALUE.Delta_Min } {
	# Procedure called to validate Delta_Min
	return true
}

proc update_PARAM_VALUE.PWM_PERCENT_Max { PARAM_VALUE.PWM_PERCENT_Max } {
	# Procedure called to update PWM_PERCENT_Max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_PERCENT_Max { PARAM_VALUE.PWM_PERCENT_Max } {
	# Procedure called to validate PWM_PERCENT_Max
	return true
}

proc update_PARAM_VALUE.PWM_PERCENT_Min { PARAM_VALUE.PWM_PERCENT_Min } {
	# Procedure called to update PWM_PERCENT_Min when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_PERCENT_Min { PARAM_VALUE.PWM_PERCENT_Min } {
	# Procedure called to validate PWM_PERCENT_Min
	return true
}


proc update_MODELPARAM_VALUE.PWM_PERCENT_Max { MODELPARAM_VALUE.PWM_PERCENT_Max PARAM_VALUE.PWM_PERCENT_Max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_PERCENT_Max}] ${MODELPARAM_VALUE.PWM_PERCENT_Max}
}

proc update_MODELPARAM_VALUE.PWM_PERCENT_Min { MODELPARAM_VALUE.PWM_PERCENT_Min PARAM_VALUE.PWM_PERCENT_Min } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_PERCENT_Min}] ${MODELPARAM_VALUE.PWM_PERCENT_Min}
}

proc update_MODELPARAM_VALUE.Delta_Min { MODELPARAM_VALUE.Delta_Min PARAM_VALUE.Delta_Min } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Delta_Min}] ${MODELPARAM_VALUE.Delta_Min}
}

