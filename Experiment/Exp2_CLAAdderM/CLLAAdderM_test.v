`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:27 04/20/2018
// Design Name:   CLLAAdderM
// Module Name:   E:/CCOAexp/Exp2CLAAdderM/CLLAAdderM_test.v
// Project Name:  Exp2CLAAdderM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLLAAdderM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLLAAdderM_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] F;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CLLAAdderM uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.F(F), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A =0 ;B = 0;Cin=0;
		#100;
		A=1;B=0;Cin=0;
		#100;
		A=0;B=1;Cin=0;
		#100;
		A=1;B=1;Cin=0;
		#100;
		A=2;B=1;Cin=0;
		#100;
		A=1;B=1;Cin=1;
		#100;
		A=8;B=8;Cin=1;
	end
      
endmodule

