# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Sampling_Num" -parent ${Page_0}


}

proc update_PARAM_VALUE.Sampling_Num { PARAM_VALUE.Sampling_Num } {
	# Procedure called to update Sampling_Num when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Sampling_Num { PARAM_VALUE.Sampling_Num } {
	# Procedure called to validate Sampling_Num
	return true
}


proc update_MODELPARAM_VALUE.Sampling_Num { MODELPARAM_VALUE.Sampling_Num PARAM_VALUE.Sampling_Num } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Sampling_Num}] ${MODELPARAM_VALUE.Sampling_Num}
}

