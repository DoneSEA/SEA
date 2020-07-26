`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/08 12:58:30
// Design Name: 
// Module Name: top
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


module top(
    RA,
    mclr,
    osc1);
  inout [3:0]RA;
  input mclr;
  input osc1;
 wire clk1;
  design_1_wrapper ww
     (.RA(RA),
      .mclr(mclr),
      .osc1(osc1)
      );
  time1 tt(
                  .clk(osc1),
                  .rst_n(mclr),
                  .clk_out(clk1)
          );

endmodule
