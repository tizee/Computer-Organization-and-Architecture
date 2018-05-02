`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:35 04/27/2018
// Design Name:   fulladderM
// Module Name:   D:/COAexp-master/COAexp-master/Exp2_CLAAdderM/Test2.v
// Project Name:  Exp2CLAAdderM
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

module Test2;

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
		#100;
        
		// Add stimulus here
		A =3 ;B = 0;Cin=0;
		#100;
		A=1;B=2;Cin=1;
		#100;
		A=0;B=1;Cin=1;
		#100;
		A=1;B=1;Cin=1;
		#100;
		A=2;B=1;Cin=0;
		#100;
		A=1;B=1;Cin=1;
		#100;
		A=8;B=8;Cin=1;
	end
      
endmodule

