`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 16:03:56
// Design Name: 
// Module Name: Edge_Check
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

//Edge detection
module Edge_Check(
    input clk_Image_Process,
    input Rst,
    input RGB_DE,
    input [7:0]Gray_Data,
    input [7:0]Gray_Gate,
    output [2:0]Delay_Num,
    output [23:0]RGB_Data
    );
    //Edge detection takes up the clock
    parameter Edge_Delay_Clk=2;
    parameter Edge_Delay_Clk_De=3;
    //Shift register intermediate data
    wire [7:0]D0;
    wire [7:0]D1;
    wire [7:0]D2;
    wire [7:0]D3;
    //Defining the edge detection data matrix 3*3, each 8 bits, with 9*8=72 bits
    reg [71:0]Matrix_Edge_Check_Data=0;
    wire [7:0]Matrix_00=Matrix_Edge_Check_Data[71:64];
    wire [7:0]Matrix_01=Matrix_Edge_Check_Data[63:56];
    wire [7:0]Matrix_02=Matrix_Edge_Check_Data[55:48];
    wire [7:0]Matrix_10=Matrix_Edge_Check_Data[47:40];
    wire [7:0]Matrix_11=Matrix_Edge_Check_Data[39:32];
    wire [7:0]Matrix_12=Matrix_Edge_Check_Data[31:24];
    wire [7:0]Matrix_20=Matrix_Edge_Check_Data[23:16];
    wire [7:0]Matrix_21=Matrix_Edge_Check_Data[15:8];
    wire [7:0]Matrix_22=Matrix_Edge_Check_Data[7:0];
    //Define edge detection intermediate calculation data matrix
    wire [10:0]Matrix_Cal_X_0=Matrix_00+2*Matrix_01+Matrix_02;
    wire [10:0]Matrix_Cal_X_1=Matrix_20+2*Matrix_21+Matrix_22;
    wire [10:0]Matrix_Cal_Y_0=Matrix_00+2*Matrix_10+Matrix_20;
    wire [10:0]Matrix_Cal_Y_1=Matrix_02+2*Matrix_12+Matrix_22;
    //Defining the edge detection calculation result, absolute value
    wire [10:0]Matrix_Res_X=(Matrix_Cal_X_1>Matrix_Cal_X_0)?(Matrix_Cal_X_1-Matrix_Cal_X_0):(Matrix_Cal_X_0-Matrix_Cal_X_1);
    wire [10:0]Matrix_Res_Y=(Matrix_Cal_Y_1>Matrix_Cal_Y_0)?(Matrix_Cal_Y_1-Matrix_Cal_Y_0):(Matrix_Cal_Y_0-Matrix_Cal_Y_1);
    //Defining the sum of squares of thresholds
    wire [15:0]Gate2=Gray_Gate*Gray_Gate;
    //Defining the data signal after the delay
    wire De_Delay;
    //Define binarized output
    wire Binary_Data_Out=(Matrix_Res_X*Matrix_Res_X+Matrix_Res_Y*Matrix_Res_Y>Gate2)?Rst&De_Delay:0;
    //Image output connection, binarization
    assign RGB_Data=Binary_Data_Out?24'hffffff:0;
    assign Delay_Num=Edge_Delay_Clk;
    //Edge detection data matrix movement
    always@(posedge clk_Image_Process or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Matrix_Edge_Check_Data<=0;
            else if(RGB_DE)
                Matrix_Edge_Check_Data<={Matrix_Edge_Check_Data[47:24],Matrix_Edge_Check_Data[23:0],D1,D3,Gray_Data};
        end
    //Data valid signal delay
    Delay_Signal Delay_De(
        .clk_Signal(clk_Image_Process),       //Signal unit clock
        .Rst(Rst),                            //Reset signal, low reset
        .Signal_In(RGB_DE),                   //Delayed input signal
        .Delay_Num(Edge_Delay_Clk_De),        //The number of clocks that need to be delayed, no more than 8, can be cascaded
        .Delay_Signal(De_Delay)               //Signal output after delay
        );
    //Since the image data cannot be completely stored and the storage space is insufficient, the shift register is used, two lines are stored, and one line is processed.
    //The maximum value of the shift register is 1088, and our image for one line is 1280, so we create a new 640 unit shift register and instantiate 4 uses.
    //The internal and the first signals of the shift register chain are connected, and the external first and last signals are respectively: the input is gray scale data, and the output is shift data.
    //First Line
    Shift_Line Image_Line_Buffer00(
      .D(Gray_Data),                        // input wire [7 : 0] D
      .CLK(clk_Image_Process&RGB_DE),       // input wire CLK
      .Q(D0)                                // output wire [7 : 0] Q
    );  
    Shift_Line Image_Line_Buffer01(
      .D(D0),                               // input wire [7 : 0] D
      .CLK(clk_Image_Process&RGB_DE),       // input wire CLK
      .Q(D1)                                // output wire [7 : 0] Q
    );  
    //Second Line
    Shift_Line Image_Line_Buffer10(
      .D(D1),                               // input wire [7 : 0] D
      .CLK(clk_Image_Process&RGB_DE),       // input wire CLK
      .Q(D2)                                // output wire [7 : 0] Q
    );  
    Shift_Line Image_Line_Buffer11(
      .D(D2),                               // input wire [7 : 0] D
      .CLK(clk_Image_Process&RGB_DE),       // input wire CLK
      .Q(D3)                                // output wire [7 : 0] Q
    );  
endmodule
