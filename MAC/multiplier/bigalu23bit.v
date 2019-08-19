`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:40 04/08/2017 
// Design Name: 
// Module Name:    bigalu23bit 
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
module bigalu23bit(clk,reset, input1,input2,opcode,alu_out,carry);
	parameter width=26;
	output reg [width-1:0]alu_out;
	output reg carry;
	input [width-1:0]input1,input2;
	input [3:0]opcode;
	input clk,reset;
reg [4:0]lsb5;
always@(posedge clk)
begin
if (reset)
begin

alu_out=25'b0;
carry=1'b0;
end
else
begin
	case(opcode)
	  4'b0000:  {carry,alu_out} = input1 + input2;
	  4'b0001:  {carry,alu_out} = input1 - input2;
	  4'b0010:  alu_out = input1 * input2;
	  4'b0011:  alu_out = input1 & input2;
	  4'b0100:  alu_out = input1 | input2;
	  4'b0101:  alu_out = ~ input1;
	  4'b0110: begin
				   lsb5 = input2[4:0];
				   alu_out = input1 << lsb5;
				  end
	  4'b0111: begin
				   lsb5 = input2[4:0];
				   alu_out = input1 >>> lsb5;
				  end
	4'b1110: begin
				   lsb5 = input1[4:0];
				   alu_out = input1 << lsb5;
				  end
	  4'b1101: begin
				   lsb5 = input1[4:0];
				   alu_out = input1 >>> lsb5;
				  end
	  4'b1111:  alu_out[0] = input1[0];
	   default: alu_out=25'b0;
	  
	 endcase
end
end
endmodule
