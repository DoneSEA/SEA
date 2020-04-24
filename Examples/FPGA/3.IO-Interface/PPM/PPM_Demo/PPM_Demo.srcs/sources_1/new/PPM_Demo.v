`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/14 15:21:51
// Design Name: 
// Module Name: PPM_Demo
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


module PPM_Demo(
    input clk_100MHz,
    input PPM,
    input UART0_Rx,
    output UART0_Tx
    );
    wire [12:0]CH_0;
    wire [12:0]CH_1;
    wire [12:0]CH_2;
    wire [12:0]CH_3;
    wire [12:0]CH_4;
    wire [12:0]CH_5;
    wire [12:0]CH_6;
    wire [12:0]CH_7;
    //UART data
    wire Tx_ACK;
    wire Rx_ACK;
    wire clk_10MHz;
    wire Tx_En;
    wire [7:0]Send_Buffer;
    wire [7:0]Rx_Data;
    reg [30:0]Baud_Rate=115200;
    
    //Crossover
    clk_wiz_0 clk_10(.clk_out1(clk_10MHz),.clk_in1(clk_100MHz));
    
    //PPM Instantiation
    Driver_PPM_Decoder Driver_PPM0(
        .clk_100MHz(clk_100MHz),
        .Rst(1),
        .PPM(PPM),
        .CH_0(CH_0),
        .CH_1(CH_1),
        .CH_2(CH_2),
        .CH_3(CH_3),
        .CH_4(CH_4),
        .CH_5(CH_5),
        .CH_6(CH_6),
        .CH_7(CH_7)
    );
    Driver_UART UART0(
        .clk_100MHz(clk_100MHz),
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
        .Data0(CH_0),
        .Data1(CH_1),
        .Data2(CH_2),
        .Data3(CH_3),
        .Data4(CH_4),
        .Data5(CH_5),
        .Data6(CH_7),
        .Tx_En(Tx_En),
        .Send_Buffer(Send_Buffer)
        );
endmodule