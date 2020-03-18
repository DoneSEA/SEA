# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ACK0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACK1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACK2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACK3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACK4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NOACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RDDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCL_SUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STOP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRRADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRRADDR_H" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRSADDR0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRSADDR1" -parent ${Page_0}


}

proc update_PARAM_VALUE.ACK0 { PARAM_VALUE.ACK0 } {
	# Procedure called to update ACK0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACK0 { PARAM_VALUE.ACK0 } {
	# Procedure called to validate ACK0
	return true
}

proc update_PARAM_VALUE.ACK1 { PARAM_VALUE.ACK1 } {
	# Procedure called to update ACK1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACK1 { PARAM_VALUE.ACK1 } {
	# Procedure called to validate ACK1
	return true
}

proc update_PARAM_VALUE.ACK2 { PARAM_VALUE.ACK2 } {
	# Procedure called to update ACK2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACK2 { PARAM_VALUE.ACK2 } {
	# Procedure called to validate ACK2
	return true
}

proc update_PARAM_VALUE.ACK3 { PARAM_VALUE.ACK3 } {
	# Procedure called to update ACK3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACK3 { PARAM_VALUE.ACK3 } {
	# Procedure called to validate ACK3
	return true
}

proc update_PARAM_VALUE.ACK4 { PARAM_VALUE.ACK4 } {
	# Procedure called to update ACK4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACK4 { PARAM_VALUE.ACK4 } {
	# Procedure called to validate ACK4
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.NOACK { PARAM_VALUE.NOACK } {
	# Procedure called to update NOACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NOACK { PARAM_VALUE.NOACK } {
	# Procedure called to validate NOACK
	return true
}

proc update_PARAM_VALUE.RDDATA { PARAM_VALUE.RDDATA } {
	# Procedure called to update RDDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RDDATA { PARAM_VALUE.RDDATA } {
	# Procedure called to validate RDDATA
	return true
}

proc update_PARAM_VALUE.SCL_SUM { PARAM_VALUE.SCL_SUM } {
	# Procedure called to update SCL_SUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCL_SUM { PARAM_VALUE.SCL_SUM } {
	# Procedure called to validate SCL_SUM
	return true
}

proc update_PARAM_VALUE.START0 { PARAM_VALUE.START0 } {
	# Procedure called to update START0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START0 { PARAM_VALUE.START0 } {
	# Procedure called to validate START0
	return true
}

proc update_PARAM_VALUE.START1 { PARAM_VALUE.START1 } {
	# Procedure called to update START1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START1 { PARAM_VALUE.START1 } {
	# Procedure called to validate START1
	return true
}

proc update_PARAM_VALUE.STOP { PARAM_VALUE.STOP } {
	# Procedure called to update STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STOP { PARAM_VALUE.STOP } {
	# Procedure called to validate STOP
	return true
}

proc update_PARAM_VALUE.WRDATA { PARAM_VALUE.WRDATA } {
	# Procedure called to update WRDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRDATA { PARAM_VALUE.WRDATA } {
	# Procedure called to validate WRDATA
	return true
}

proc update_PARAM_VALUE.WRRADDR { PARAM_VALUE.WRRADDR } {
	# Procedure called to update WRRADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRRADDR { PARAM_VALUE.WRRADDR } {
	# Procedure called to validate WRRADDR
	return true
}

proc update_PARAM_VALUE.WRRADDR_H { PARAM_VALUE.WRRADDR_H } {
	# Procedure called to update WRRADDR_H when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRRADDR_H { PARAM_VALUE.WRRADDR_H } {
	# Procedure called to validate WRRADDR_H
	return true
}

proc update_PARAM_VALUE.WRSADDR0 { PARAM_VALUE.WRSADDR0 } {
	# Procedure called to update WRSADDR0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRSADDR0 { PARAM_VALUE.WRSADDR0 } {
	# Procedure called to validate WRSADDR0
	return true
}

proc update_PARAM_VALUE.WRSADDR1 { PARAM_VALUE.WRSADDR1 } {
	# Procedure called to update WRSADDR1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRSADDR1 { PARAM_VALUE.WRSADDR1 } {
	# Procedure called to validate WRSADDR1
	return true
}


proc update_MODELPARAM_VALUE.SCL_SUM { MODELPARAM_VALUE.SCL_SUM PARAM_VALUE.SCL_SUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCL_SUM}] ${MODELPARAM_VALUE.SCL_SUM}
}

proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.START0 { MODELPARAM_VALUE.START0 PARAM_VALUE.START0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START0}] ${MODELPARAM_VALUE.START0}
}

proc update_MODELPARAM_VALUE.WRSADDR0 { MODELPARAM_VALUE.WRSADDR0 PARAM_VALUE.WRSADDR0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRSADDR0}] ${MODELPARAM_VALUE.WRSADDR0}
}

proc update_MODELPARAM_VALUE.ACK0 { MODELPARAM_VALUE.ACK0 PARAM_VALUE.ACK0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACK0}] ${MODELPARAM_VALUE.ACK0}
}

proc update_MODELPARAM_VALUE.WRRADDR { MODELPARAM_VALUE.WRRADDR PARAM_VALUE.WRRADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRRADDR}] ${MODELPARAM_VALUE.WRRADDR}
}

proc update_MODELPARAM_VALUE.ACK1 { MODELPARAM_VALUE.ACK1 PARAM_VALUE.ACK1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACK1}] ${MODELPARAM_VALUE.ACK1}
}

proc update_MODELPARAM_VALUE.WRDATA { MODELPARAM_VALUE.WRDATA PARAM_VALUE.WRDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRDATA}] ${MODELPARAM_VALUE.WRDATA}
}

proc update_MODELPARAM_VALUE.ACK2 { MODELPARAM_VALUE.ACK2 PARAM_VALUE.ACK2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACK2}] ${MODELPARAM_VALUE.ACK2}
}

proc update_MODELPARAM_VALUE.STOP { MODELPARAM_VALUE.STOP PARAM_VALUE.STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STOP}] ${MODELPARAM_VALUE.STOP}
}

proc update_MODELPARAM_VALUE.START1 { MODELPARAM_VALUE.START1 PARAM_VALUE.START1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START1}] ${MODELPARAM_VALUE.START1}
}

proc update_MODELPARAM_VALUE.WRSADDR1 { MODELPARAM_VALUE.WRSADDR1 PARAM_VALUE.WRSADDR1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRSADDR1}] ${MODELPARAM_VALUE.WRSADDR1}
}

proc update_MODELPARAM_VALUE.ACK3 { MODELPARAM_VALUE.ACK3 PARAM_VALUE.ACK3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACK3}] ${MODELPARAM_VALUE.ACK3}
}

proc update_MODELPARAM_VALUE.RDDATA { MODELPARAM_VALUE.RDDATA PARAM_VALUE.RDDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RDDATA}] ${MODELPARAM_VALUE.RDDATA}
}

proc update_MODELPARAM_VALUE.NOACK { MODELPARAM_VALUE.NOACK PARAM_VALUE.NOACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NOACK}] ${MODELPARAM_VALUE.NOACK}
}

proc update_MODELPARAM_VALUE.WRRADDR_H { MODELPARAM_VALUE.WRRADDR_H PARAM_VALUE.WRRADDR_H } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRRADDR_H}] ${MODELPARAM_VALUE.WRRADDR_H}
}

proc update_MODELPARAM_VALUE.ACK4 { MODELPARAM_VALUE.ACK4 PARAM_VALUE.ACK4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACK4}] ${MODELPARAM_VALUE.ACK4}
}

