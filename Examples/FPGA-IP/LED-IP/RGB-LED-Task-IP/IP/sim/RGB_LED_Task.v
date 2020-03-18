`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/02 10:24:40
// Design Name: 
// Module Name: RGB_LED_Task
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
//RGB light and dark state
`define PWM_Dir_Up      0
`define PWM_Dir_Down    1

//RGB breathing light task, can be called by the stack to take the task, or can be called directly
module RGB_LED_Task(
   input clk_100MHz,
   input clk_10MHz,
   input [5:0]Period_100mSecond,
   input [7:0]R_In,
   input [7:0]G_In,
   input [7:0]B_In,
   input [10:0]Light_Num,
   input Rst,
   output RGB_LED_IO,
   output reg Light_Ok
   );
   //PWM duty cycle count maximum, minimum
   parameter PWM_PERCENT_Max=500;
   parameter PWM_PERCENT_Min=0;
   //Minimum resolution of 0.01us
   parameter Delta_Min=10;
   //Output
   reg [7:0]R_Out=0;
   reg [7:0]G_Out=0;
   reg [7:0]B_Out=0;
   
   //Frequency division coefficient
   reg [30:0]Clk_Divide_1=0;
   reg [30:0]Clk_Divide_2=0;
   
   //Modulation count
   reg [10:0]Cnt_1=0;
   reg [10:0]Cnt_2=0;
   reg [10:0]Cnt_3=0;
   
   reg RGB_State=0;         //Bright and dark state of RGB breathing light
   reg [10:0]Light_Cnt=0;   //RGB flicker count
   
   //RGB breathing light modulation clock
   wire Clk_1;
   wire Clk_2;
   
   //ÊµÀý»¯SK6805Çý¶¯
   Driver_SK6805 Driver_SK6805_0(.R_In1(R_Out),.G_In1(G_Out),.B_In1(B_Out),.R_In2(R_Out),.G_In2(G_Out),.B_In2(B_Out),.clk_10MHz(clk_10MHz),.Rst(Rst),.LED_IO(RGB_LED_IO));
   
   //Instantiation to generate a modulation clock
   Clk_Division Clk_Division0(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_1),.clk_out(Clk_1));
   Clk_Division Clk_Division1(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_2),.clk_out(Clk_2));
   //Calculating the frequency division coefficient
   always@(posedge clk_100MHz)
        begin
            Clk_Divide_1=5*Period_100mSecond*Delta_Min;
            Clk_Divide_2<=Clk_Divide_1*PWM_PERCENT_Max;
        end
   
   //First level modulation count
   always@(posedge Clk_1 or negedge Rst)
        begin
            if(!Rst)
                begin
                    Cnt_1<=0;
                end
            else
                begin
                    if(Cnt_1<PWM_PERCENT_Max-1)
                        Cnt_1<=Cnt_1+1;
                    else
                        Cnt_1<=0;
                end
        end
   //Second stage modulation count
   always@(negedge Clk_2 or negedge Rst)
        begin
            if(!Rst)
                begin
                    Cnt_2<=0;
                end
            else
                begin
                    if(Cnt_2<=PWM_PERCENT_Max-1)
                        Cnt_2<=Cnt_2+1;
                    else
                        Cnt_2<=0;
                end
        end
    //Third-level modulation, switching between dark and dark states every cycle
    always@(negedge Clk_2 or negedge Rst)
        begin
            if(!Rst)
                begin
                    RGB_State<=0;
                    Cnt_3<=0;
                    Light_Cnt<=0;
                    Light_Ok<=0;
                end
            else
                begin
                    if(Cnt_3==PWM_PERCENT_Max)
                        begin
                            Cnt_3<=0;
                            RGB_State<=~RGB_State;
                            
                            //Flip count
                            if(Light_Cnt==Light_Num)
                                begin
                                     Light_Cnt<=0;
                                     Light_Ok<=1;
                                end
                            else
                                begin
                                    Light_Ok<=0;
                                    if(RGB_State==`PWM_Dir_Down)
                                        Light_Cnt<=Light_Cnt+1;
                                end
                               
                        end
                    else
                        Cnt_3<=Cnt_3+1;
                end
        end
    //Fourth stage modulation, output PWM to RGB
    always@(posedge clk_100MHz or negedge Rst)
        begin
            if(!Rst)
                begin
                    R_Out<=0;
                    G_Out<=0;
                    B_Out<=0;
                end
            else
                begin
                    //If the light is bright
                    if(RGB_State==`PWM_Dir_Up)
                        begin
                            //If the first stage count is less than the second stage count, it is high level, that is, normal output; vice versa, low level, 0 value output
                            if(Cnt_1<Cnt_2)
                                begin
                                    R_Out<=R_In;
                                    G_Out<=G_In;
                                    B_Out<=B_In;
                                end
                            else
                                begin
                                    R_Out<=0;
                                    G_Out<=0;
                                    B_Out<=0;
                                end    
                        end
                    //If the light is dark
                    else if(RGB_State==`PWM_Dir_Down)
                        begin
                            //If the first stage count is less than the second stage count, it is low level, that is, 0 value output; otherwise, it is high level, normal output
                            if(Cnt_1<Cnt_2)
                                begin
                                    R_Out<=0;
                                    G_Out<=0;
                                    B_Out<=0;
                                end
                            else
                                begin
                                    R_Out<=R_In;
                                    G_Out<=G_In;
                                    B_Out<=B_In;
                                end    
                        end
                end
        end
endmodule
