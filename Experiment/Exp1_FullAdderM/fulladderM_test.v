`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:41:47 04/20/2018
// Design Name:   fulladderM
// Module Name:   E:/CCOAexp/Exp1_fulladder/fulladderM_test.v
// Project Name:  Exp1_fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladderM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladderM_test;

	// Inputs
	reg Cin;
	reg A;
	reg B;

	// Outputs
	wire F;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	fulladderM uut (
		.Cin(Cin), 
		.A(A), 
		.B(B), 
		.F(F), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		Cin = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#200;
        
		// Add stimulus here
		A=0; B=0; Cin=1;
		
		#200;
		A=0; B=1; Cin=0;
		
		#200;
		A=0; B=1; Cin=1;
		
		#200;
		A=1; B=0; Cin=0;
		
		#200;
		A=1; B=0; Cin=1;
		
		#200;
		A=1; B=1; Cin=0;
		
		#200;
		A=1; B=1; Cin=1;
	end
      
endmodule

