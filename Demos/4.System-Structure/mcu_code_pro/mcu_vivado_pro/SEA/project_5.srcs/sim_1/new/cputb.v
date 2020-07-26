
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/03 21:50:47
// Design Name: 
// Module Name: cputb
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



`timescale 1 ns / 1 ns
module cputb;
  reg   mclr;
  reg   osc1;
  wire   [3:0] RA;
  top wrapp
     (RA,
      mclr,
      osc1);
      
always #5  osc1=~osc1;   
initial
begin
    mclr=0;
    osc1=0;
    #10 mclr=1;
end

endmodule
