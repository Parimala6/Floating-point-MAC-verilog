`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2018 11:53:54
// Design Name: 
// Module Name: add
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

module fpadd(a,b,clk,out);
input[31:0]a,b;
input clk;
output [31:0]out;
wire [7:0]e1,e2,ex,ey,exy,ex1,ey1,ex2,ex3;
wire s1,s2,s,s3,sr,sn,s4,sx1,sy1,sn1,sn2,sn3,sn4,sr1,sr2,sn5,sn6;
wire [23:0]m1,m2,mx,my,mxy,mx1,my1;
wire [24:0]mxy1,mxy2;
assign s1=a[31];
assign s2=b[31];
assign e1=a[30:23];
assign e2=b[30:23];
assign m1[23]=1'b1;
assign m2[23]=1'b1;
assign m1[22:0]=a[22:0];
assign m2[22:0]=b[22:0];
//submodule for compare and shfit
cmpshift as(e1[7:0],e2[7:0],s1,s2,m1[23:0],m2[23:0],clk,ex,ey,mx,my,s,sx1,sy1);
//buffer1 buff1(ex,ey,sx1,sy1,mx,my,s,clk,ex1,ey1,mx1,my1,sn,sn1,sn2);
//sub module for mantissa addition snd subtraction
faddsub as1(mx,my,sx1,sy1,s,ex,clk,mxy1,ex2,sn3,sn4,s3,sr1);
//faddsub as1(mx1,my1,sn1,sn2,sn,ex1,clk,mxy1,ex2,sn3,sn4,s3,sr1);
buffer2 buff2(mxy1,s3,sr1,ex2,sn3,sn4,clk,mxy2,ex3,sn5,sn6,s4,sr2);
//sub module for normalization
//normalized as2(mxy1,sr1,sn3,sn4,s3,clk,ex3,sr,exy,mxy);
normalized as2(mxy2,sr2,sn5,sn6,s4,clk,ex3,sr,exy,mxy);
assign out={sr,exy,mxy[22:0]};
endmodule

