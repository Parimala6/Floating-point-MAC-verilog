`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:20 04/09/2017 
// Design Name: 
// Module Name:    round 
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
module round(clk,reset,a,out);
parameter width=26;

input clk,reset;
input [width-1:0] a;
output reg [width-1:0] out;

reg [width-1:0] temp;




always @ (posedge clk)
begin
if (reset)
out=26'b0;
else
begin
  case (a[2:0])
      3'b000  : begin
					out=a; //round to zero
					end
		3'b001	: begin
					 out=a; //round to zero
					end
		3'b010   : begin
					out=a; //round to zero
					end
										
      3'b011  : begin
                  out={a[25:3] ,3'b100};
					end
      3'b100  : begin
                  out={a[25:3] ,3'b100};
               end
      3'b101 : begin
                out={a[25:3] ,3'b100};
               end
		3'b110 :begin
					temp={a[25:3] ,3'b100};
					out[25:2]=temp[25:2]+1;
					out[1:0]=2'b0;
					 end
		3'b111:begin
					temp={a[25:3] ,3'b100};
					out[25:2]=temp[25:2]+1;
					out[1:0]=2'b0; 
					 end
					
      default: begin
                 out=a; 
               end
   endcase
end
end

endmodule
