`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:55 04/03/2017 
// Design Name: 
// Module Name:    wallacemultiplier 
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
//`include "rca64bit.v"
//`include "carrysaveadder.v"
module wallace_tree(carryf,product1,inp1,inp2);

input [23:0]inp1;
input [23:0]inp2;

wire [47:0]product;

output [47:0]product1;

output carryf;

wire [49:0]p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24;

//wire[64:0]p2;
//
//wire [64:0]p3;
//
//wire [64:0]p4;
//
//wire [64:0]p5;
//
//wire [64:0]p6;
//
//wire [64:0]p7
//
//wire [64:0]p8;
//
//wire [64:0]p9;
//
//wire [64:0]p10;
//
//wire [64:0]p11;
//
//wire [64:0]p12;
//
//wire [64:0]p13;
//
//wire [64:0]p14;
//
//wire [64:0]p15;
//
//wire [64:0]p16;
//
//wire [64:0]p17;
//
//wire [64:0]p18;
//
//wire [64:0]p19;
//
//wire [64:0]p20;
//
//wire [64:0]p21;
//
//wire [64:0]p22;
//
//wire [64:0]p23;
//
//wire [64:0]p24;
//
//wire [64:0]p25;
//
//wire [64:0]p26;
//
//wire [64:0]p27;
//
//wire [64:0]p28;
//
//wire [64:0]p29;
//
//wire [64:0]p30;
//
//wire [64:0]p31;
//
//wire [64:0]p32;

wire [49:0]carry1,carry2,carry3,carry4,carry5,carry6,carry7,carry8,carry9,carry10,carry11,carry12,carry13,carry14,carry15,carry16,carry17,carry18,carry19,carry20,carry21,carry22;

//wire [64:0]carry2;
//
//wire [64:0]carry3;
//
//wire [64:0]carry4;
//c2,
//wire [64:0]carry5;
//
//wire [64:0]carry6;
//
//wire [64:0]carry7;
//
//wire [64:0]carry8;
//
//wire [64:0]carry9;
//
//wire [64:0]carry10;
//
//wire [64:0]carry11;
//
//wire [64:0]carry12;
//
//wire [64:0]carry13;
//
//wire [64:0]carry14;
//
//wire [64:0]carry15;
//
//wire [64:0]carry16;
//
//wire [64:0]carry17;
//
//wire [64:0]carry18;
//
//wire [64:0]carry19;
//
//wire [64:0]carry20;
//
//wire [64:0]carry21;
//
//wire [64:0]carry22;
//
//wire [64:0]carry23;
//
//wire [64:0]carry24;
//
//wire [64:0]carry25;
//
//wire [64:0]carry26;
//
//wire [64:0]carry27;
//
//wire [64:0]carry28;
//
//wire [64:0]carry29;
//
//wire [64:0]carry30;

wire [49:0]sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,sum11,sum12,sum13,sum14,sum15,sum16,sum17,sum18,sum19,sum20,sum21,sum22;
//
//wire [64:0]sum2;
//
//wire [64:0]sum3;
//
//wire [64:0]sum4;
//
//wire [64:0]sum5;
//
//wire [64:0]sum6;
//
//wire [64:0]sum7;
//
//wire [64:0]sum8;
//
//wire [64:0]sum9;
//
//wire [64:0]sum10;
//
//wire [64:0]sum11;
//
//wire [64:0]sum12;
//
//wire [64:0]sum13;
//
//wire [64:0]sum14;
//
//wire [64:0]sum15;
//
//wire [64:0]sum16;
//
//wire [64:0]sum17;
//
//wire [64:0]sum18;
//
//wire [64:0]sum19;
//
//wire [64:0]sum20;
//
//wire [64:0]sum21;
//
//wire [64:0]sum22;
//
//wire [64:0]sum23;
//
//wire [64:0]sum24;
//
//wire [64:0]sum25;
//
//wire [64:0]sum26;
//
//wire [64:0]sum27;
//
//wire [64:0]sum28;
//
//wire [64:0]sum29;
//
//wire [64:0]sum30;

assign p1=(inp2[0]==1'b1)?{25'b0,inp1}:50'h00000000;

assign p2=(inp2[1]==1'b1)?{24'b0,inp1,1'b0}:50'h00000000;

assign p3=(inp2[2]==1'b1)?{23'b0,inp1,2'b0}:50'h00000000;

assign p4=(inp2[3]==1'b1)?{22'b0,inp1,3'b0}:50'h00000000;

assign p5=(inp2[4]==1'b1)?{21'b0,inp1,4'b0}:50'h00000000;

assign p6=(inp2[5]==1'b1)?{20'b0,inp1,5'b0}:50'h00000000;

assign p7=(inp2[6]==1'b1)?{19'b0,inp1,6'b0}:50'h00000000;

assign p8=(inp2[7]==1'b1)?{18'b0,inp1,7'b0}:50'h00000000;

assign p9=(inp2[8]==1'b1)?{17'b0,inp1,8'b0}:50'h00000000;

assign p10=(inp2[9]==1'b1)?{16'b0,inp1,9'b0}:50'h00000000;

assign p11=(inp2[10]==1'b1)?{15'b0,inp1,10'b0}:50'h00000000;

assign p12=(inp2[11]==1'b1)?{14'b0,inp1,11'b0}:50'h00000000;

assign p13=(inp2[12]==1'b1)?{13'b0,inp1,12'b0}:50'h00000000;

assign p14=(inp2[13]==1'b1)?{12'b0,inp1,13'b0}:50'h00000000;

assign p15=(inp2[14]==1'b1)?{11'b0,inp1,14'b0}:50'h00000000;

assign p16=(inp2[15]==1'b1)?{10'b0,inp1,15'b0}:50'h00000000;

assign p17=(inp2[16]==1'b1)?{9'b0,inp1,16'b0}:50'h00000000;

assign p18=(inp2[17]==1'b1)?{8'b0,inp1,17'b0}:50'h00000000;

assign p19=(inp2[18]==1'b1)?{7'b0,inp1,18'b0}:50'h00000000;

assign p20=(inp2[19]==1'b1)?{6'b0,inp1,19'b0}:50'h00000000;

assign p21=(inp2[20]==1'b1)?{5'b0,inp1,20'b0}:50'h00000000;

assign p22=(inp2[21]==1'b1)?{4'b0,inp1,21'b0}:50'h00000000;

assign p23=(inp2[22]==1'b1)?{3'b0,inp1,22'b0}:50'h00000000;

assign p24=(inp2[23]==1'b1)?{2'b0,inp1,23'b0}:50'h00000000;

//assign p25[64:0]=(inp2[24]==1'b1)?{9'b0,inp1,24'b0}:64'h00000000;
//
//assign p26[64:0]=(inp2[25]==1'b1)?{8'b0,inp1,25'b0}:64'h00000000;
//
//assign p27[64:0]=(inp2[26]==1'b1)?{7'b0,inp1,26'b0}:64'h00000000;
//
//assign p28[64:0]=(inp2[27]==1'b1)?{6'b0,inp1,27'b0}:64'h00000000;
//
//assign p29[64:0]=(inp2[28]==1'b1)?{5'b0,inp1,28'b0}:64'h00000000;
//
//assign p30[64:0]=(inp2[29]==1'b1)?{4'b0,inp1,29'b0}:64'h00000000;
//
//assign p31[64:0]=(inp2[30]==1'b1)?{3'b0,inp1,30'b0}:64'h00000000;
//
//assign p32[64:0]=(inp2[31]==1'b1)?{2'b0,inp1,31'b0}:64'h00000000;

carrysaveadder c1(carry1,sum1,p1,p2,p3);

carrysaveadder c2(carry2,sum2,p4,p5,p6);

carrysaveadder c3(carry3,sum3,p7,p8,p9);

carrysaveadder c4(carry4,sum4,p10,p11,p12);

carrysaveadder c5(carry5,sum5,p13,p14,p15);

carrysaveadder c6(carry6,sum6,p16,p17,p18);

carrysaveadder c7(carry7,sum7,p19,p20,p21);

carrysaveadder c8(carry8,sum8,p22,p23,p24);

//

carrysaveadder c9(carry9,sum9,sum1,carry1,sum2);

carrysaveadder c10(carry10,sum10,carry2,sum3,carry3);

carrysaveadder c11(carry11,sum11,sum4,carry4,sum5);

carrysaveadder c12(carry12,sum12,carry5,sum6,carry6);

carrysaveadder c13(carry13,sum13,sum7,carry7,sum8);

//

carrysaveadder c14(carry14,sum14,sum9,carry9,sum10);

carrysaveadder c15(carry15,sum15,carry10,sum11,carry11);

carrysaveadder c16(carry16,sum16,sum12,carry12,sum13);

//

carrysaveadder c17(carry17,sum17,sum14,carry14,sum15);

carrysaveadder c18(carry18,sum18,carry15,sum16,carry16);

//

carrysaveadder c19(carry19,sum19,sum17,carry17,sum18);

carrysaveadder c20(carry20,sum20,carry18,carry13,carry8);

//

carrysaveadder c21(carry21,sum21,sum19,carry19,sum20);

//

carrysaveadder c22(carry22,sum22,sum21,carry21,carry20);







//carrysaveadder c9(carry9,sum9,p25,p26,p27);
//
//carrysaveadder c10(carry10,sum10,p28,p29,p30);
//
//carrysaveadder c11(carry11,sum11,sum1,carry1,sum2);
//
//carrysaveadder c12(carry12,sum12,carry2,sum3,carry3);
//
//carrysaveadder c13(carry13,sum13,sum4,carry4,sum5);
//
//carrysaveadder c14(carry14,sum14,carry5,sum6,carry6);
//
//carrysaveadder c15(carry15,sum15,sum7,carry7,sum8);
//
//carrysaveadder c16(carry16,sum16,carry8,sum9,carry9);
//
//carrysaveadder c17(carry17,sum17,sum10,carry10,p31);
//
//carrysaveadder c18(carry18,sum18,sum11,carry11,sum12);
//
//carrysaveadder c19(carry19,sum19,carry12,sum13,carry13);
//
//carrysaveadder c20(carry20,sum20,sum14,carry14,sum15);
//
//carrysaveadder c21(carry21,sum21,carry15,sum16,carry16);
//
//carrysaveadder c22(carry22,sum22,sum17,carry17,p32);
//
//carrysaveadder c23(carry23,sum23,sum18,carry18,sum19);
//
//carrysaveadder c24(carry24,sum24,carry19,sum20,carry20);
//
//carrysaveadder c25(carry25,sum25,sum21,carry21,sum22);
//
//carrysaveadder c26(carry26,sum26,sum23,carry23,sum24);
//
//carrysaveadder c27(carry27,sum27,carry24,sum25,carry25);
//
//carrysaveadder c28(carry28,sum28,sum26,carry26,sum27);
//
//carrysaveadder c29(carry29,sum29,sum28,carry28,carry27);
//
//carrysaveadder c30(carry30,sum30,sum29,carry29,carry22);
 
rca24bit add1(sum22,carry22,1'b0,product,carryf);

assign product1 = product[47:0];

endmodule


