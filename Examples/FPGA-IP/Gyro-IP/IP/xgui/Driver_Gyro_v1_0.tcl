# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "State_Gyro" -parent ${Page_0}
  ipgui::add_param $IPINST -name "State_Init" -parent ${Page_0}
  ipgui::add_param $IPINST -name "State_Mag" -parent ${Page_0}
  ipgui::add_param $IPINST -name "State_Stop" -parent ${Page_0}
  ipgui::add_param $IPINST -name "State_Temp" -parent ${Page_0}


}

proc update_PARAM_VALUE.State_Gyro { PARAM_VALUE.State_Gyro } {
	# Procedure called to update State_Gyro when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.State_Gyro { PARAM_VALUE.State_Gyro } {
	# Procedure called to validate State_Gyro
	return true
}

proc update_PARAM_VALUE.State_Init { PARAM_VALUE.State_Init } {
	# Procedure called to update State_Init when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.State_Init { PARAM_VALUE.State_Init } {
	# Procedure called to validate State_Init
	return true
}

proc update_PARAM_VALUE.State_Mag { PARAM_VALUE.State_Mag } {
	# Procedure called to update State_Mag when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.State_Mag { PARAM_VALUE.State_Mag } {
	# Procedure called to validate State_Mag
	return true
}

proc update_PARAM_VALUE.State_Stop { PARAM_VALUE.State_Stop } {
	# Procedure called to update State_Stop when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.State_Stop { PARAM_VALUE.State_Stop } {
	# Procedure called to validate State_Stop
	return true
}

proc update_PARAM_VALUE.State_Temp { PARAM_VALUE.State_Temp } {
	# Procedure called to update State_Temp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.State_Temp { PARAM_VALUE.State_Temp } {
	# Procedure called to validate State_Temp
	return true
}


proc update_MODELPARAM_VALUE.State_Init { MODELPARAM_VALUE.State_Init PARAM_VALUE.State_Init } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.State_Init}] ${MODELPARAM_VALUE.State_Init}
}

proc update_MODELPARAM_VALUE.State_Temp { MODELPARAM_VALUE.State_Temp PARAM_VALUE.State_Temp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.State_Temp}] ${MODELPARAM_VALUE.State_Temp}
}

proc update_MODELPARAM_VALUE.State_Gyro { MODELPARAM_VALUE.State_Gyro PARAM_VALUE.State_Gyro } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.State_Gyro}] ${MODELPARAM_VALUE.State_Gyro}
}

proc update_MODELPARAM_VALUE.State_Mag { MODELPARAM_VALUE.State_Mag PARAM_VALUE.State_Mag } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.State_Mag}] ${MODELPARAM_VALUE.State_Mag}
}

proc update_MODELPARAM_VALUE.State_Stop { MODELPARAM_VALUE.State_Stop PARAM_VALUE.State_Stop } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.State_Stop}] ${MODELPARAM_VALUE.State_Stop}
}

