module timer(clk, reset, clk1, clk2, clk3,osc2);
 
input clk, reset;
output clk1, clk2, clk3;
output osc2;

wire clk, reset;
reg clk1, clk2, clk3;
reg osc2;

reg[7:0] state;

parameter  	
            S1 = 8'b0000_0001,
			   S2 = 8'b0000_0010,
			   S3 = 8'b0000_0100,
			   S4 = 8'b0000_1000,
			   S5 = 8'b0001_0000,
			   S6 = 8'b0010_0000,
			   S7 = 8'b0100_0000,
			   S8 = 8'b1000_0000,
			   idle = 8'b0000_0000;



always @(posedge clk or negedge reset)
      if(reset==0)
         osc2<=0;
         
      else
        
         osc2<=~osc2;   




always @(posedge clk or negedge reset)   
	if(~reset)
		begin 
			clk1 <= 0;
			clk2 <= 0;
			clk3<=0;
			//clk4<=0;
			state <= idle;
		end
	else 
		begin 
			case (state)
				S1:
					begin 
						clk1 <= 1;
						
						state <= S2;
					end
					
				S2:
					begin
						clk1 <= 0;
						
						state <= S3;
					end
				S3:
					begin
						clk2 <= 1;
						state <= S4;
					end
				S4:
					begin
						clk2 <= 0;
						
						state = S5;
					end
				S5:
					begin
						clk3 = 1;
						state = S6;
					end
				S6:
					begin
						clk3 <= 0;
						
						state = S1;
					end
			/*	S7:
					begin
						clk4<= 1;
						state = S8;
					end
				S8:
					begin
						
						clk4 <=0;
						
						state = S1;
					end
					
	      */				
				idle: 		state <= S1;
				default: 	state <= idle;
			endcase
		end
endmodule
						
