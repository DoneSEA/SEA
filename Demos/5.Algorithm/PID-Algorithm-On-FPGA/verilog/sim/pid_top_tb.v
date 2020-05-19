`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/05 11:13:05
// Design Name: 
// Module Name: pid_top_tb
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


module pid_top_tb();
  
    // Inputs   
    reg clk;   
    reg rst_n;   
    reg [8:0] error;   
  
    // Outputs   
    wire [16:0] uk;   
  
    // Instantiate the Unit Under Test (UUT)   
    pid_top pid_top_inst (   
        .clk(clk),    
        .rst_n(rst_n),    
        .error(error),    
        .uk(uk)   
    );   
  
  
    initial begin   
        // Initialize Inputs   
        clk = 0;   
        rst_n = 0;   
        error = 0;   
  
        // Wait 100 ns for global reset to finish   
        #40 rst_n=1;   
      #20 error=9'b001111111;   
        #400 error=9'b000111111;   
        #400 error=9'b000011111;   
        #400 error=9'b000001111;   
        #400 error=9'b000000111;   
        #400 error=9'b000000011;   
        #1200 error=0;   
        #400 error=9'b111000000;   
        #400 error=9'b111110000;   
        #400 error=9'b111111111;   
        #1200 error=0;   
    //  #200 error=9'b100000001;   
               
        // Add stimulus here   
  
    end   
  always #10 clk=~clk;         
endmodule  
