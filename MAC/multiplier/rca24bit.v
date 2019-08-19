`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:05 04/03/2017 
// Design Name: 
// Module Name:    rca24bit 
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
//`include "rca32bit.v"

module rca24bit(inp1,inp2,cin,sum,cout);
parameter width=50;
input [width-1:0]inp1;

input [width-1:0]inp2;
input cin;

output [width-1:0]sum;

wire [width:0]c1;


output cout;

assign c1[0]=cin;
assign cout=c1[width];
genvar i;
generate
for(i=0;i<=width-1;i=i+1)
begin:stage
full_adder f1(inp1[i],inp2[i],c1[i],sum[i],c1[i+1]);

end
endgenerate




//
//input [64:0]a;
//input [64:0]b;
//
//input cin;
//output [64:0]sum;
//
//assign sum[64]=1'b0;
//
//output carry;
//
//wire c1;
//
//rca32bit r1(a[31:0],b[31:0],cin,sum[31:0],c1);
//
//rca32bit r2(a[63:32],b[63:32],c1,sum[63:32],carry);
//
endmodule
//
