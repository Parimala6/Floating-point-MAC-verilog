`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2018 14:33:51
// Design Name: 
// Module Name: fp_mac
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

module fp_mac(a,b,clk,reset,out);
input[31:0]a,b;
input clk, reset;
output reg [31:0]out;
wire [31:0] fprod, fadd;
reg [31:0] data_a, data_b, fprod1;

fpmul mul(clk,reset,data_a,data_b,fprod);
fpadd add(fprod1,out,clk,fadd);

always @(posedge clk)
begin
    if(reset)
        begin
        data_a <= 32'b0;
        data_b <= 32'b0;
        fprod1 <= 32'b0;
        out <= 32'b0;
        end
    else
        begin
        data_a <= a;
        data_b <= b;
        fprod1 <= fprod;
        out <= fadd;
        end
end

endmodule
