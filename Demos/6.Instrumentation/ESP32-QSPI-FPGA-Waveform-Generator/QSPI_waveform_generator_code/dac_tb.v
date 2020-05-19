`timescale 1ns / 1ps 
module dac_tb();

reg clk = 1'b0;

always #1 clk <= ~clk;

reg [11:0] rom_data;

initial begin
    rom_data = 12'b101101110111;
end

dac dac(
.clk(clk),
.rom_data(rom_data)
);

endmodule