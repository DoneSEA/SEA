`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/23 18:36:35
// Design Name: 
// Module Name: Gyro_Demo
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


module Gyro_Demo(
    input clk_100MHz,
    input UART0_Rx,
    inout Gyro_IIC_SDA,
    output Gyro_IIC_SCL,
    output UART0_Tx,
    output IIC_OE,
    output VCCEN,
    output VCC,
    output GND
    );
    //Clock
    wire clk_100MHz_System;
    wire clk_10MHz;
    //Control Output
    reg Ctrl_Temp_Out=1;
    reg Ctrl_Gyro_Out=1;
    reg Ctrl_Mag_Out=1;
    //Gyro part out
    wire [7:0]Addr;
    wire [15:0]Reg_Addr;
    wire [7:0]Reg_Data;
    //IIC
    wire Ctrl_IIC;
    wire IIC_Write;
    wire IIC_Read;
    wire [7:0]IIC_Read_Data;
    wire IIC_Busy;
    wire Reg_2Addr;   //Whether the register address is double address bit,0 is single register address, 1 is double.
    //UART data
    wire Tx_ACK;
    wire Rx_ACK;
    wire [15:0]Temp_Data;
    wire [15:0]Gyro_Data_X;
    wire [15:0]Gyro_Data_Y;
    wire [15:0]Gyro_Data_Z;
    wire [15:0]Mag_Data_X;
    wire [15:0]Mag_Data_Y;
    wire [15:0]Mag_Data_Z;
    wire Tx_En;
    wire [7:0]Send_Buffer;
    wire [7:0]Rx_Data;
    reg [30:0]Baud_Rate=115200;
    //IIC
    wire Gyro_IIC_SDA_I;
    wire Gyro_IIC_SDA_O;
    wire Gyro_IIC_SDA_T;
    assign IIC_OE=1;
    assign VCCEN=1;
    assign VCC=1;
    assign GND=0;
    //Frequency divider
    clk_wiz_0 clk_10(.clk_out1(clk_100MHz_System),.clk_out2(clk_10MHz),.clk_in1(clk_100MHz));
    //Tri-state gate
    IOBUF Camera_IIC_SDA_IOBUF
           (.I(Gyro_IIC_SDA_O),
            .IO(Gyro_IIC_SDA),
            .O(Gyro_IIC_SDA_I),
            .T(~Gyro_IIC_SDA_T));
    Driver_Gyro Driver_Gyro0(
        .clk_100MHz(clk_100MHz_System),
        .clk_10MHz(clk_10MHz),
        .IIC_Busy(IIC_Busy),
        .Enable_Gyro(1),
        .IIC_Data(IIC_Read_Data),
        .Ctrl_Temp_Out(Ctrl_Temp_Out),
        .Ctrl_Gyro_Out(Ctrl_Gyro_Out),
        .Ctrl_Mag_Out(Ctrl_Mag_Out),
        .Addr(Addr),
        .Reg_Addr(Reg_Addr),
        .Reg_Data(Reg_Data),
        .Temp_Data(Temp_Data),
        .Gyro_Data_X(Gyro_Data_X),
        .Gyro_Data_Y(Gyro_Data_Y),
        .Gyro_Data_Z(Gyro_Data_Z),
        .Mag_Data_X(Mag_Data_X),
        .Mag_Data_Y(Mag_Data_Y),
        .Mag_Data_Z(Mag_Data_Z),
        .IIC_Write(IIC_Write),
        .IIC_Read(IIC_Read),
        .Reg_2Addr(Reg_2Addr),
        .Ctrl_IIC(Ctrl_IIC)
        );
    Driver_UART UART0(
        .clk_100MHz(clk_100MHz_System),
        .Rst(1),
        .En_Rx(1),
        .En_Tx(Tx_En),
        .Baud_Rate(Baud_Rate),
        .Rx(UART0_Rx),
        .Tx_Data(Send_Buffer),
        .Tx(UART0_Tx),
        .Rx_Data(Rx_Data),
        .Rx_ACK(Rx_ACK),
        .Tx_ACK(Tx_ACK)
        );
    UART_Send UART_Send0(
        .clk_10MHz(clk_10MHz),
        .Tx_ACK(Tx_ACK),
        .Enable(1),
        .Temp_Data(Temp_Data),
        .Gyro_Data_X(Gyro_Data_X),
        .Gyro_Data_Y(Gyro_Data_Y),
        .Gyro_Data_Z(Gyro_Data_Z),
        .Mag_Data_X(Mag_Data_X),
        .Mag_Data_Y(Mag_Data_Y),
        .Mag_Data_Z(Mag_Data_Z),
        .Tx_En(Tx_En),
        .Send_Buffer(Send_Buffer)
        );
    Driver_IIC Driver_IIC0(
        .clk(clk_100MHz_System),        // input wire clk
        .Rst(Ctrl_IIC),                 // input wire Rst
        .Addr(Addr),                    // input wire [7 : 0] Addr
        .Reg_Addr(Reg_Addr),            // input wire [15 : 0] Reg_Addr
        .Data(Reg_Data),                // input wire [7 : 0] Data
        .IIC_Write(IIC_Write),          // input wire IIC_Write
        .IIC_Read(IIC_Read),            // input wire IIC_Read
        .IIC_Read_Data(IIC_Read_Data),  // output wire [7 : 0] IIC_Read_Data
        .IIC_Busy(IIC_Busy),            // output wire IIC_Busy
        .Reg_2Addr(Reg_2Addr),          // input wire Reg_2Addr
        .IIC_SCL(Gyro_IIC_SCL),         // output wire IIC_SCL
        .IIC_SDA_In(Gyro_IIC_SDA_I),    // input wire IIC_SDA_In
        .SDA_Dir(Gyro_IIC_SDA_T),       // output wire SDA_Dir
        .SDA_Out(Gyro_IIC_SDA_O)        // output wire SDA_Out
    );
endmodule
