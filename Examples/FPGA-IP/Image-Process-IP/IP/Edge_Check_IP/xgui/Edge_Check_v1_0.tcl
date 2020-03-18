# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Edge_Delay_Clk" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Edge_Delay_Clk_De" -parent ${Page_0}


}

proc update_PARAM_VALUE.Edge_Delay_Clk { PARAM_VALUE.Edge_Delay_Clk } {
	# Procedure called to update Edge_Delay_Clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Edge_Delay_Clk { PARAM_VALUE.Edge_Delay_Clk } {
	# Procedure called to validate Edge_Delay_Clk
	return true
}

proc update_PARAM_VALUE.Edge_Delay_Clk_De { PARAM_VALUE.Edge_Delay_Clk_De } {
	# Procedure called to update Edge_Delay_Clk_De when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Edge_Delay_Clk_De { PARAM_VALUE.Edge_Delay_Clk_De } {
	# Procedure called to validate Edge_Delay_Clk_De
	return true
}


proc update_MODELPARAM_VALUE.Edge_Delay_Clk { MODELPARAM_VALUE.Edge_Delay_Clk PARAM_VALUE.Edge_Delay_Clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Edge_Delay_Clk}] ${MODELPARAM_VALUE.Edge_Delay_Clk}
}

proc update_MODELPARAM_VALUE.Edge_Delay_Clk_De { MODELPARAM_VALUE.Edge_Delay_Clk_De PARAM_VALUE.Edge_Delay_Clk_De } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Edge_Delay_Clk_De}] ${MODELPARAM_VALUE.Edge_Delay_Clk_De}
}

