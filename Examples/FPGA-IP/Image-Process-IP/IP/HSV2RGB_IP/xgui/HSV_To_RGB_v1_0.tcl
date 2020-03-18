# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "HSV2RGB_Delay_Clk" -parent ${Page_0}


}

proc update_PARAM_VALUE.HSV2RGB_Delay_Clk { PARAM_VALUE.HSV2RGB_Delay_Clk } {
	# Procedure called to update HSV2RGB_Delay_Clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HSV2RGB_Delay_Clk { PARAM_VALUE.HSV2RGB_Delay_Clk } {
	# Procedure called to validate HSV2RGB_Delay_Clk
	return true
}


proc update_MODELPARAM_VALUE.HSV2RGB_Delay_Clk { MODELPARAM_VALUE.HSV2RGB_Delay_Clk PARAM_VALUE.HSV2RGB_Delay_Clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HSV2RGB_Delay_Clk}] ${MODELPARAM_VALUE.HSV2RGB_Delay_Clk}
}

