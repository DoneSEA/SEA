`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/01 18:32:49
// Design Name: 
// Module Name: LED_Demo
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
`define LED_Task_msecond_100  2'h0
`define LED_Task_msecond_200  2'h1
`define LED_Task_msecond_500  2'h2
`define LED_Task_second_1     2'h3

`define LED_1   0
`define LED_2   1

//This is a sample demo for LED flashing
module LED_Demo(
    output [1:0]LED_tri_o,
    output RGB_LED_tri_o,
    input clk_100MHz
    );

    wire clk_10MHz;
    wire clk_1kHz;
    wire clk_1MHz;
    
    reg [30:0]Clk_Divide_1kHz=100000/2;
    reg [30:0]Clk_Divide_1MHz=100/2;
    reg [1:0]Task_Num_LED1;
    reg [1:0]Task_Num_LED2;
    reg [7:0]R_In1;
    reg [7:0]G_In1;
    reg [7:0]B_In1;
    reg [7:0]R_In2;
    reg [7:0]G_In2;
    reg [7:0]B_In2;
    reg Rst=1;
    //////////////////
    reg [5:0]Period_100mSecond=10;
    reg [10:0]Light_Num=1000;
    /////////////////
    integer Cnt=0;
    wire Light;
    initial
        begin
            Task_Num_LED1=`LED_Task_msecond_500;
            Task_Num_LED2=`LED_Task_msecond_500;
            R_In1=255;
            G_In1=0;
            B_In1=0;
            R_In2=255;
            G_In2=0;
            B_In2=0;
            Rst=1;
        end
    always @(posedge clk_1kHz)
        begin
            if(Cnt==1)
                begin
                    R_In1<=255;
                    G_In1<=0;
                    B_In1<=0;
                    R_In2=255;
                    G_In2<=0;
                    B_In2<=0;
                    Rst=0;
                end
            else if(Cnt==24000)
                begin
                    R_In1<=0;
                    G_In1<=255;
                    B_In1<=0;
                    R_In2<=0;
                    G_In2<=255;
                    B_In2<=0;
                    Rst=0;
                end
            else if(Cnt==48000)
                begin
                    R_In1<=0;
                    G_In1<=0;
                    B_In1<=255;
                    R_In2<=0;
                    G_In2<=0;
                    B_In2<=255;
                    Rst=0;
                end
            else if(Cnt==72000)
                begin
                    Cnt=0;
                    Rst=1;
                end
            else
                Rst=1;
                
            Cnt=Cnt+1;
        end
    clk_wiz_0 clk_10(.clk_out1(clk_10MHz),.clk_in1(clk_100MHz));
    Clk_Division Clk_Division0(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_1MHz),.clk_out(clk_1MHz));
    Clk_Division Clk_Division1(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_1kHz),.clk_out(clk_1kHz));
    
    LED_Task LED_Task0(.Task_Num(Task_Num_LED1),.clk_100MHz(clk_100MHz),.LED_IO(LED_tri_o[`LED_1]));
    LED_Task LED_Task1(.Task_Num(Task_Num_LED2),.clk_100MHz(clk_100MHz),.LED_IO(LED_tri_o[`LED_2]));
    
   //RGBLED task instantiation, breathing light
    RGB_LED_Task RGB_LED_Task0(
           .clk_100MHz(clk_100MHz),
           .clk_10MHz(clk_10MHz),
           .Period_100mSecond(Period_100mSecond),
           .R_In(R_In1),
           .G_In(G_In1),
           .B_In(B_In1),
           .Light_Num(Light_Num),
           .Rst(Rst),
           .RGB_LED_IO(RGB_LED_tri_o),
           .Light_Ok(Light)
           );
endmodule