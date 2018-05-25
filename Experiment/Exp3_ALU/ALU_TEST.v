`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:02 05/11/2018
// Design Name:   ALU_M
// Module Name:   E:/CCOAexp/Exp3/ALU_TEST.v
// Project Name:  Exp3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [2:0] ALU_OP;
	reg [2:0] AB_SW;
	reg [2:0] F_LED_SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	ALU_M uut (
		.ALU_OP(ALU_OP), 
		.AB_SW(AB_SW), 
		.F_LED_SW(F_LED_SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		ALU_OP = 0;
		AB_SW = 0;
		F_LED_SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ALU_OP = 001;
		AB_SW = 111;
		F_LED_SW = 001;
		
		#100
		ALU_OP = 010;
		AB_SW = 010;
		F_LED_SW = 000;
		
		#100
		ALU_OP = 011;
		AB_SW = 111;
		F_LED_SW = 000;
		
		#100
		ALU_OP = 100;
		AB_SW = 111;
		F_LED_SW = 000;
		
		#100
		ALU_OP = 101;
		AB_SW = 111;
		F_LED_SW = 000;
		
		#100
		ALU_OP = 110;
		AB_SW = 111;
		F_LED_SW = 000;
		
		#100
		ALU_OP = 111;
		AB_SW = 111;
		F_LED_SW = 000;
		
	end
      
endmodule

