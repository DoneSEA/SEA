`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/04 20:20:43
// Design Name: 
// Module Name: Clk_Division
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

//This is an example of an integer divider that includes odd and even crossovers.
module Clk_Division(
   input clk_100MHz,
   input [30:0] clk_mode,
   output clk_out
   );
   
   reg Clk=0;
   reg flag=0;
   reg Is_Odd=0;
   integer Count=0;
   
   //Half cycle flag update
   always @(negedge clk_100MHz)
        begin
            Is_Odd=clk_mode[0];         //Determine whether the frequency division coefficient is an odd number
            if(Count==clk_mode/2)
                flag=1;
            else
                flag=0;
        end
   //Frequency division count
   always @(posedge clk_100MHz)
      begin
        if(Is_Odd)
            if(Count==clk_mode-1)
                begin
                    Count=0;
                    Clk=~Clk;
                end
            else if(Count==clk_mode/2)
                begin
                    Count=Count+1;
                    Clk=~Clk;
                end
            else
                Count=Count+1;
       else
            if(Count==clk_mode/2-1)
                begin
                     Count=0;
                     Clk=~Clk;
                end
            else
                Count=Count+1;
      end
      
   //Frequency divided clock output
   assign clk_out=Clk|(flag&Is_Odd);
endmodule
