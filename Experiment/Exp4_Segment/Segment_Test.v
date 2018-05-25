`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:46 05/25/2018
// Design Name:   Segment_M
// Module Name:   E:/Exp4_Segment/Segment_Test.v
// Project Name:  Exp4_Segment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Segment_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Segment_Test;

	// Inputs
	reg[4:0] R_Addr_A;
	reg[4:0] R_Addr_B;
	reg[4:0] W_Addr;
	reg Write_Reg;
	reg[31:0] W_Data;
	reg Clk;
	reg Reset;

	// Outputs
	wire[31:0] R_Data_A;
	wire[31:0] R_Data_B;

	// Instantiate the Unit Under Test (UUT)
	Segment_M uut (
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.W_Addr(W_Addr), 
		.Write_Reg(Write_Reg), 
		.W_Data(W_Data), 
		.Clk(Clk), 
		.Reset(Reset), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B)
	);

	initial begin
		// Initialize Inputs
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 0;
		Write_Reg = 0;
		W_Data = 0;
		Clk = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b00001;
		Write_Reg = 1;
		W_Data = 32'h0000_0001;
		Clk = 0;
		Reset = 1;
		
		#100;
		R_Addr_A = 5'b00001;
		R_Addr_B = 0;
		W_Addr = 5'b00001;
		Write_Reg = 1;
		W_Data = 32'h0000_0001;
		Clk = 1;
		Reset = 0;

		#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b00010;
		Write_Reg = 1;
		W_Data = 32'h0000_0002;
		Clk = 0;
		Reset = 0;
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b00011;
		Write_Reg = 1;
		W_Data = 32'h0000_0009;
		Clk = 1;
		Reset = 0;
		
		#100;
		R_Addr_A = 5'b00011;
		R_Addr_B = 5'b00001;
		W_Addr = 0;
		Write_Reg = 0;
		W_Data = 0;
		Clk = 0;
		Reset = 0;

		#100;
		R_Addr_A = 5'b00011;
		R_Addr_B = 5'b00001;
		W_Addr = 5'b00100;
		Write_Reg = 1;
		W_Data = 32'h0000_000B;
		Clk = 0;
		Reset = 1;
	end
      
endmodule

