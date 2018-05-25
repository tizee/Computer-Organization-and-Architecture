`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:51 05/11/2018 
// Design Name: 
// Module Name:    ALU_M 
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
module ALU_M(ALU_OP,AB_SW,F_LED_SW,LED
    );
	 input[2:0] ALU_OP,AB_SW,F_LED_SW;
	 output[7:0] LED;
	 
	 wire[2:0] AB_SW,F_LED_SW,ALU_OP;
	 wire[31:0] A,B,F;
	 
	 wire ZF,OF;
	 wire[7:0] LED;
	 Choice_M C1(AB_SW,A,B);
	 ALU_TOP A1(A,B,F,ZF,OF,ALU_OP);
	 CLED_M C2(F_LED_SW,LED,F,ZF,OF);


	
	
endmodule
