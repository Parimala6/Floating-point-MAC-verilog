`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:19 04/08/2017 
// Design Name: 
// Module Name:    nrightshift 
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
module nrightshift( clk,reset,a,shift,out);

 parameter width= 26;
input [width-1:0] a;
input [width-19:0]shift;
input clk,reset;
output reg [width-1:0] out;

always@ (posedge clk)
begin
if (reset)
out=26'b0;
else
out = a>>shift;
end


endmodule
