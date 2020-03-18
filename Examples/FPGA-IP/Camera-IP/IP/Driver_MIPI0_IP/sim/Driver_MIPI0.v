`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/01 18:10:05
// Design Name: 
// Module Name: Driver_MIPI0
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Driver_MIPI0(
    input clk_200MHz,
    input Clk_Rx_Data_N,
    input Clk_Rx_Data_P,
    input [1:0]Rx_Data_N,
    input [1:0]Rx_Data_P,
    input Data_N,
    input Data_P,
    output Camera_GPIO,
    output RGB_HSync,
    output RGB_VSync,
    output RGB_VDE,
    output [7:0]Data,
    output [10:0]HCnt,
    output [9:0]VCnt,
    output clk_100MHz_out
    );
    //First level
    wire clk_out;
    wire trig_req;
    wire trig_ack;
    wire cl_enable;
    wire cl_stopstate;
    wire cl_rxclkactivehs;
    wire dl0_enable;
    wire dl0_rxactivehs;
    wire dl0_rxvalidhs;
    wire dl0_rxsynchs;
    wire [7:0]dl0_datahs;
    wire dl1_enable;
    wire dl1_rxactivehs;
    wire dl1_rxvalidhs;
    wire dl1_rxsynchs;
    wire [7:0]dl1_datahs;
    //Second Level
    wire CSI_Axis_Last;      
    wire CSI_Axis_User;    
    wire CSI_Axis_Valid;     
    wire [15:0]CSI_Axis_Data;
    wire CSI_Axis_Ready;
    //Enable
    reg Enable_Or_Rst=1;
    assign clk_100MHz_out=clk_out;
    //First level data read instantiation
    csi2_d_phy_rx_0 Data_Read(
        .in_delay_clk(clk_200MHz),
        .clk_rxp(Clk_Rx_Data_P),
        .clk_rxn(Clk_Rx_Data_N),
        .data_rxp(Rx_Data_P),
        .data_rxn(Rx_Data_N),
        .data_lp_p(Data_P),
        .data_lp_n(Data_N),
        .trig_req(trig_req),
        .trig_ack(trig_ack),
        .rxbyteclkhs(clk_out),
        .cl_enable(cl_enable),
        .cl_stopstate(cl_stopstate),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .dl0_enable(dl0_enable),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_datahs(dl0_datahs),
        .dl1_enable(dl1_enable),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_datahs(dl1_datahs),
        .dl2_enable(1'b0),
        .dl3_enable(1'b0)
    );
    //The second level of data is converted into CSI instantiation
    csi_to_axis_0 Data_To_Csi(
        .enable_in(Enable_Or_Rst),
        .rxbyteclkhs(clk_out),
        .cl_enable(cl_enable),
        .cl_stopstate(cl_stopstate),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .dl0_enable(dl0_enable),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_datahs(dl0_datahs),
        .dl1_enable(dl1_enable),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_datahs(dl1_datahs),
        .trig_req(trig_req),
        .trig_ack(trig_ack),
        .m_axis_tdata(CSI_Axis_Data),
        .m_axis_tuser(CSI_Axis_User),
        .m_axis_tlast(CSI_Axis_Last),
        .m_axis_tvalid(CSI_Axis_Valid),
        .m_axis_tready(CSI_Axis_Ready),
        .m_axis_aclk(clk_out),
        .m_axis_aresetn(Enable_Or_Rst)
    );
    //Third level CSI2DVP instantiation
    Driver_Csi_To_Dvp Driver_Csi_To_Dvp0(
       .s_axis_aclk(clk_out),
       .s_axis_tlast(CSI_Axis_Last),
       .s_axis_tuser(CSI_Axis_User),
       .s_axis_tvalid(CSI_Axis_Valid),
       .s_axis_tdata(CSI_Axis_Data),
       .s_axis_tready(CSI_Axis_Ready),
       .vid_clk(clk_100MHz_out),
       .vid_hsync(RGB_HSync),
       .vid_vsync(RGB_VSync),
       .vid_active_video(RGB_VDE),
       .vid_data(Data),
       .hdata(HCnt),
       .vdata(VCnt)
    );
    assign Camera_GPIO=Enable_Or_Rst;
endmodule
