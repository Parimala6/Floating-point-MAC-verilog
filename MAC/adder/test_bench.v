`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2018 23:37:47
// Design Name: 
// Module Name: test_bench
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


module test_bench;

	// Inputs
	reg clk;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] fadd;

	// Instantiate the Unit Under Test (UUT)
	fpadd uut ( 
		.a(a), 
		.b(b),
		.clk(clk), 
		.out(fadd)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		a = 0;
		b = 0;

		// Wait 10 ns for global reset to finish
		#10;
        	clk = 0;//01000001101010010100011110101110==21.16
		a = 32'b11000000100100110011001100110011;//-4.6;
		b = 32'b11000000100100110011001100110011;//-4.6
		// Add stimulus here
#20;
		    	clk = 0;//11000000001100001010001111010111==-2.76
		a = 32'b11000000100100110011001100110011;//-4.6;
		b = 32'b00111111000110011001100110011010;//0.6
		// Add stimulus here
#30;

    	clk = 0;//10111111111101011100001010001111==-1.92
		a = 32'b01000000010011001100110011001101;//3.2;
		b = 32'b10111111000110011001100110011010;//-0.6
		// Add stimulus here
#40;
 	clk = 0;//01001010100101010000111101101110==4884407.0
		a = 32'b01000101000010100111000011001101;//2215.05;
		b = 32'b01000101000010011101000110011010;//2205.10
		// Add stimulus here
#50;
    clk = 0;
    a = 32'b00000100000101001110010100101100;//1750.25;
    b = 32'b00000010010100001001100010000010;//1525.19;
    // Add stimulus here
#60;
	end	
     always #5 clk=(~clk);  
endmodule
