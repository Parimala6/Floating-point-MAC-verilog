`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2018 11:45:41
// Design Name: 
// Module Name: buffer2
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

module buffer2(mxy1,s3,sr1,ex,sn3,sn4,clk,mxy2,ex3,sn5,sn6,s4,sr2);
input [24:0]mxy1;
input s3,clk,sr1,sn3,sn4;
input [7:0]ex;
output reg[24:0]mxy2;
output reg[7:0]ex3;
output reg s4,sn5,sn6,sr2;
always@(posedge clk)
begin
sr2=sr1;
sn5=sn3;
sn6=sn4;
ex3=ex;
mxy2=mxy1;
s4=s3;
end
endmodule