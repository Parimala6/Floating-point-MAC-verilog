`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:32 04/03/2017 
// Design Name: 
// Module Name:    carrysaveadder 
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
module carrysaveadder(carry,sum,inp1,inp2,inp3);
parameter width=50;
input [width-1:0]inp1;

input [width-1:0]inp2;

input [width-1:0]inp3;

output [width-1:0]sum;

output [width:0]carry;

assign carry[0]=1'b0;

genvar i;
generate
for(i=0;i<=width-1;i=i+1)
begin:stage
full_adder f1(inp1[i],inp2[i],inp3[i],sum[i],carry[i+1]);

end
endgenerate
//
//fulladder f2(inp1[1],inp2[1],inp3[1],sum[1],carry[2]);
//
//fulladder f3(inp1[2],inp2[2],inp3[2],sum[2],carry[3]);
//
//fulladder f4(inp1[3],inp2[3],inp3[3],sum[3],carry[4]);
//
//fulladder f5(inp1[4],inp2[4],inp3[4],sum[4],carry[5]);
//
//fulladder f6(inp1[5],inp2[5],inp3[5],sum[5],carry[6]);
//
//fulladder f7(inp1[6],inp2[6],inp3[6],sum[6],carry[7]);
//
//fulladder f8(inp1[7],inp2[7],inp3[7],sum[7],carry[8]);
//
//fulladder f9(inp1[8],inp2[8],inp3[8],sum[8],carry[9]);
//
//fulladder f10(inp1[9],inp2[9],inp3[9],sum[9],carry[10]);
//
//fulladder f11(inp1[10],inp2[10],inp3[10],sum[10],carry[11]);
//
//fulladder f12(inp1[11],inp2[11],inp3[11],sum[11],carry[12]);
//
//fulladder f13(inp1[12],inp2[12],inp3[12],sum[12],carry[13]);
//
//fulladder f14(inp1[13],inp2[13],inp3[13],sum[13],carry[14]);
//
//fulladder f15(inp1[14],inp2[14],inp3[14],sum[14],carry[15]);
//
//fulladder f16(inp1[15],inp2[15],inp3[15],sum[15],carry[16]);
//
//fulladder f17(inp1[16],inp2[16],inp3[16],sum[16],carry[17]);
//
//fulladder f18(inp1[17],inp2[17],inp3[17],sum[17],carry[18]);
//
//fulladder f19(inp1[18],inp2[18],inp3[18],sum[18],carry[19]);
//
//fulladder f20(inp1[19],inp2[19],inp3[19],sum[19],carry[20]);
//
//fulladder f21(inp1[20],inp2[20],inp3[20],sum[20],carry[21]);
//
//fulladder f22(inp1[21],inp2[21],inp3[21],sum[21],carry[22]);
//
//fulladder f23(inp1[22],inp2[22],inp3[22],sum[22],carry[23]);
//
//fulladder f24(inp1[23],inp2[23],inp3[23],sum[23],carry[24]);
//
//fulladder f25(inp1[24],inp2[24],inp3[24],sum[24],carry[25]);
//
//fulladder f26(inp1[25],inp2[25],inp3[25],sum[25],carry[26]);
//
//fulladder f27(inp1[26],inp2[26],inp3[26],sum[26],carry[27]);
//
//fulladder f28(inp1[27],inp2[27],inp3[27],sum[27],carry[28]);
//
//fulladder f29(inp1[28],inp2[28],inp3[28],sum[28],carry[29]);
//
//fulladder f30(inp1[29],inp2[29],inp3[29],sum[29],carry[30]);
//
//fulladder f31(inp1[30],inp2[30],inp3[30],sum[30],carry[31]);
//
//fulladder f32(inp1[31],inp2[31],inp3[31],sum[31],carry[32]);
//
//fulladder f33(inp1[32],inp2[32],inp3[32],sum[32],carry[33]);
//
//fulladder f34(inp1[33],inp2[33],inp3[33],sum[33],carry[34]);
//
//fulladder f35(inp1[34],inp2[34],inp3[34],sum[34],carry[35]);
//
//fulladder f36(inp1[35],inp2[35],inp3[35],sum[35],carry[36]);
//
//fulladder f37(inp1[36],inp2[36],inp3[36],sum[36],carry[37]);
//
//fulladder f38(inp1[37],inp2[37],inp3[37],sum[37],carry[38]);
//
//fulladder f39(inp1[38],inp2[38],inp3[38],sum[38],carry[39]);
//
//fulladder f40(inp1[39],inp2[39],inp3[39],sum[39],carry[40]);
//
//fulladder f41(inp1[40],inp2[40],inp3[40],sum[40],carry[41]);
//
//fulladder f42(inp1[41],inp2[41],inp3[41],sum[41],carry[42]);
//
//fulladder f43(inp1[42],inp2[42],inp3[42],sum[42],carry[43]);
//
//fulladder f44(inp1[43],inp2[43],inp3[43],sum[43],carry[44]);
//
//fulladder f45(inp1[44],inp2[44],inp3[44],sum[44],carry[45]);
//
//fulladder f46(inp1[45],inp2[45],inp3[45],sum[45],carry[46]);
//
//fulladder f47(inp1[46],inp2[46],inp3[46],sum[46],carry[47]);
//
//fulladder f48(inp1[47],inp2[47],inp3[47],sum[47],carry[48]);
//
//fulladder f49(inp1[48],inp2[48],inp3[48],sum[48],carry[49]);
//
//fulladder f50(inp1[49],inp2[49],inp3[49],sum[49],carry[50]);
//
//fulladder f51(inp1[50],inp2[50],inp3[50],sum[50],carry[51]);
//
//fulladder f52(inp1[51],inp2[51],inp3[51],sum[51],carry[52]);
//
//fulladder f53(inp1[52],inp2[52],inp3[52],sum[52],carry[53]);
//
//fulladder f54(inp1[53],inp2[53],inp3[53],sum[53],carry[54]);
//
//fulladder f55(inp1[54],inp2[54],inp3[54],sum[54],carry[55]);
//
//fulladder f56(inp1[55],inp2[55],inp3[55],sum[55],carry[56]);
//
//fulladder f57(inp1[56],inp2[56],inp3[56],sum[56],carry[57]);
//
//fulladder f58(inp1[57],inp2[57],inp3[57],sum[57],carry[58]);
//
//fulladder f59(inp1[58],inp2[58],inp3[58],sum[58],carry[59]);
//
//fulladder f60(inp1[59],inp2[59],inp3[59],sum[59],carry[60]);
//
//fulladder f61(inp1[60],inp2[60],inp3[60],sum[60],carry[61]);
//
//fulladder f62(inp1[61],inp2[61],inp3[61],sum[61],carry[62]);
//
//fulladder f63(inp1[62],inp2[62],inp3[62],sum[62],carry[63]);
//
//fulladder f64(inp1[63],inp2[63],inp3[63],sum[63],carry[64]);

//assign sum[64]=1'b0;

endmodule



