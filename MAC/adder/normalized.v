`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2018 11:46:33
// Design Name: 
// Module Name: normalise
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

module normalized(mxy1,s,s1,s2,s3,clk,ex,sr,exy,mxy);
input[24:0]mxy1;
input s,s1,s2,s3,clk;
input[7:0]ex;
output reg sr;
output reg[7:0]exy;
output reg[23:0]mxy;
reg [24:0]mxy2;
always@(posedge clk)
begin
sr=s?s1^(mxy1[24]&s3):s2^(mxy1[24]&s3);
mxy2=(mxy1[24]&s3)?~mxy1+25'b1:mxy1;
mxy=mxy2[24:1];
exy=ex;
repeat(24)
begin
if(mxy[23]==1'b0)
begin
mxy=mxy<<1'b1;
exy=exy-8'b1;
end
end
end
endmodule