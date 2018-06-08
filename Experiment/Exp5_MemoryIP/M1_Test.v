`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:51 06/01/2018
// Design Name:   Method_1_Memory_m
// Module Name:   E:/Exp_MemoryIP/M1_Test.v
// Project Name:  Exp_MemoryIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Method_1_Memory_m
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module M1_Test;

	// Inputs
	reg Mem_Read;
	reg Mem_Write;
	reg [7:0] Mem_Addr;
	reg [31:0] M_W_Data;

	// Outputs
	wire [31:0] M_R_Data;

	// Instantiate the Unit Under Test (UUT)
	Method_1_Memory_m uut (
		.Mem_Read(Mem_Read), 
		.Mem_Write(Mem_Write), 
		.Mem_Addr(Mem_Addr), 
		.M_W_Data(M_W_Data), 
		.M_R_Data(M_R_Data)
	);

	initial begin
		// Initialize Inputs
		Mem_Read = 0;
		Mem_Write = 0;
		Mem_Addr = 0;
		M_W_Data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100
		Mem_Read = 0;
		Mem_Write = 1;
		Mem_Addr = 8'b0000_0001;
		M_W_Data = 32'h0000_0010;
		
		#100
		Mem_Read = 1;
		Mem_Write = 0;
		Mem_Addr = 8'b0000_0001;
		M_W_Data = 32'h0000_0010;
		
		#100
		Mem_Read = 0;
		Mem_Write = 1;
		Mem_Addr = 8'b0000_0000;
		M_W_Data = 32'h0000_0100;
		
		#100
		Mem_Read = 1;
		Mem_Write = 0;
		Mem_Addr = 8'b0000_0000;
		M_W_Data = 32'h0000_0100;
		
		#100
		Mem_Read = 1;
		Mem_Write = 1;
		Mem_Addr = 8'b0000_0000;
		M_W_Data = 32'h0000_0100;
		
		#100
		Mem_Read = 0;
		Mem_Write = 0;
		Mem_Addr = 8'b0000_0000;
		M_W_Data = 32'h0000_0100;

	end
      
endmodule

