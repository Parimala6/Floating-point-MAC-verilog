`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:23 04/08/2017 
// Design Name: 
// Module Name:    smallalu 
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
module smallalu(sel,clk,reset,a,b,out );

parameter width=8;
  input        [1:0] sel ;
  input         reset,     clk;
  input        [width-1:0] a;
  input        [width-1:0] b;
  output reg   [width-1:0] out;

wire [7:0] MUX [0:3];

assign MUX[0] = a+b;
assign MUX[1] = a-b;
assign MUX[2] = a^b;
assign MUX[3] = a&b;

always@(posedge clk)
begin
if (reset)
  out<=7'b0;
  else
  out <= MUX[sel];
end
 endmodule 
 
 
 
 
 