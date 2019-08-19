`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2018 16:55:48
// Design Name: 
// Module Name: fpmul
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

module fpmul(clk,reset,a,b,fprod);
parameter w=32;
input [w-1:0] a,b;
input clk,reset;

output  [w-1:0] fprod;

wire [w-1:0]s1,s2;
wire [w-1-8:0] m1,m2;
wire [w-1-6:0] routm;
wire [w-1-24:0] e1,e2,oe;
wire signa,signb,carry;

wire [47:0] prod1;
reg [7:0] oute;
reg signout;
reg [47:0] prod;
 reg [w-1-6:0]outm;

  assign s1=a;
  assign s2=b;
  assign e1=s1[30:23];
  assign e2=s2[30:23];
  assign m1[23]=1;
  assign m1[22:0]=s1[22:0];
  assign m2[23]=1;
  assign m2[22:0]=s2[22:0];
  assign signa=s1[31];
  assign signb=s2[31];

smallalu ee(0,clk,reset,e1,e2,oe);
//assign oute=oe+7'b01111111;
//assign signout=(signa^signb);

wallace_tree v1 (carry,prod1,m1,m2);

//wallacemultiplier(carryf,product1,inp1,inp2);

always @ (posedge clk)
begin
if (reset)
begin
outm=26'b0;
oute=8'b0;
signout=1'b0;
prod=48'b0;
end
else if (prod1[47])
begin
prod=prod1>>1;
outm=prod[46:20];
oute=oe+8'b01111111+8'b00000001;
signout=(signa^signb);

end
else
begin
outm=prod1[47:21];
oute=oe+8'b01111111+8'b00000010;
signout=(signa^signb);

end



end//always

round rr (clk,reset,outm,routm);

assign fprod[31]=signout;
assign fprod[30:23]=oute;
assign fprod[22:0]=routm[24:2];

endmodule
