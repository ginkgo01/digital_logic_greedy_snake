`timescale 1ns / 1ps

module top_tb();


reg clk;
reg reset;
reg up,right,down,left;
reg pause;
reg slow_down;

wire [7:0]an;
wire [7:0]seg;
wire [11:0]vga;
wire h_sync,v_sync;

top test1(clk,reset,up,right,down,left,pause,slow_down,an,seg,vga,h_sync,v_sync);


initial
begin
clk = 0;
reset = 0;
up = 0;
right = 0;
down = 0;
left = 0;
pause = 0;
slow_down = 0;

end

always
begin

#15
clk <= ~clk;

end

endmodule
