`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:39 04/08/2017 
// Design Name: 
// Module Name:    twoscompliment 
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
module twoscompliment(clk,reset,a,out);
parameter width=32;
input clk,reset;
input [width-1:0] a;
output reg [width-1:0] out;
//reg [width-1:0] y;
always@ (posedge clk)
begin
if (reset)
out=32'b0;
else
 out=(~a)+1;
end

//assign out =y;


endmodule
