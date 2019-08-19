`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:08 04/08/2017 
// Design Name: 
// Module Name:    mux32bit2_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux32bit21( clk,reset,a,b,sel,out);
parameter width=32;
input [width-1:0]a,b;
input sel,clk,reset;
output reg [width-1:0] out;

always@(posedge clk)
begin
if (reset)
out=32'b0;

else if (sel)
out=b;
else
out=a;
end
endmodule 