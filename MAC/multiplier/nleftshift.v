`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:30:37 04/12/2017 
// Design Name: 
// Module Name:    sp 
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


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:59 04/08/2017 
// Design Name: 
// Module Name:    nleftshit 
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
module nleftshift( clk,reset,a,out,m);
 parameter width= 26;
input [width-1:0] a;
input clk,reset;
//wire j[25:0];
output  [width-1:0]out;
output reg [width-1:0]m;
reg [width-1:0]k,s;
 //reg n=25'b0;
//integer i;
//assign s=a;
always@( posedge clk)
begin
if(reset)
begin
s=a;
m=25'b0;
k=25'b0;

end
else if(a[width-1]==0 && s[width-1]==0)
begin
 k=s<<1;
 s=k;
 m=m+1'b1;
 //n=m;
 end
 else
 s=k;
 
 
 end    //end f
   //end always
assign out=k;

endmodule




