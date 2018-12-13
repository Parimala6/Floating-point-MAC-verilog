`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2018 11:49:07
// Design Name: 
// Module Name: compshift
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

module cmpshift(e1,e2,s1,s2,m1,m2,clk,ex,ey,mx,my,s,sx1,sy1); //module for copare &shift
input [7:0]e1,e2;
input [23:0]m1,m2;
input clk,s1,s2;
output reg[7:0]ex,ey;
output reg[23:0]mx,my;
output reg s,sx1,sy1;
reg [7:0]diff;
always@(posedge clk)
begin
sx1=s1;
sy1=s2;
if(e1==e2)
begin
ex=e1+8'b1;
ey=e2+8'b1;
mx=m1;
my=m2;
s=1'b1;
end
else if(e1>e2)
begin
diff=e1-e2;
ex=e1+8'b1;
ey=e1+8'b1;
mx=m1;
my=m2>>diff;
s=1'b1;
end
else
begin
diff=e2-e1;
ex=e2+8'b1;
ey=e2+8'b1;
mx=m2;
my=m1>>diff;
s=1'b0;
end
end
endmodule