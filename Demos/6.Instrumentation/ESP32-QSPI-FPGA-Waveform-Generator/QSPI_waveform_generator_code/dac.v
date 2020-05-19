`timescale 1ns / 1ps 
module dac(
input clk,
output reg sync,
output reg din,
input [11:0] rom_data,
output reg rom_en,
output [8:0] rom_addr,
input [8:0] freq
);

reg [4:0] cnt = 5'd0;
reg [8:0] addr = 9'd0;

assign rom_addr = addr;


always@(posedge clk)
    if(cnt == 16)
	    cnt <= 5'd0;
	else
	    cnt <= cnt + 5'd1;

always@(posedge clk)
    case(cnt)
	    5'd0: begin 
		        din <= 1'b0;
				rom_en <= 1'b0;
			  end
		5'd1: din <= rom_data[11];
		5'd2: din <= rom_data[10];
		5'd3: din <= rom_data[9];
		5'd4: din <= rom_data[8];
		5'd5: din <= rom_data[7];
		5'd6: din <= rom_data[6];
		5'd7: din <= rom_data[5];
		5'd8: din <= rom_data[4];
		5'd9: din <= rom_data[3];
		5'd10: din <= rom_data[2];
		5'd11: din <= rom_data[1];
		5'd12: din <= rom_data[0];
		5'd13: din <= 1'b0;
		5'd14: din <= 1'b0;
		5'd15: begin
		        din <= 1'b0;
				addr <= addr + freq;
				sync <= 1'b1;
			   end
		5'd16: begin 
		        din <= 1'b0;
				sync <= 1'b0;
				rom_en <= 1'b1;
			   end
	endcase

endmodule