`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:30 05/11/2018 
// Design Name: 
// Module Name:    CLED_M 
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
module CLED_M(
    input[2:0] F_LED_SW,
    output[7:0] LED,
    input[31:0] F,
    input ZF,
    input OF
    );
	 reg[7:0] LED;
	 wire[31:0] F;
	 wire[2:0] F_LED_SW;
	 wire ZF,OF;
	// assign F = 32'h1234_5678;
	 always @(*)
	begin
		case(F_LED_SW)
			3'b000:LED=F[7:0];
			3'b001:LED=F[15:8];
			3'b010:LED=F[23:16];
			3'b011:LED=F[31:24];
			default:begin LED[7]= ZF; LED[0]=OF;LED[6:1]=6'b0;end
		endcase
   end


endmodule
