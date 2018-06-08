`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:28 06/01/2018 
// Design Name: 
// Module Name:    Method_1_Memory_m 
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
module Method_1_Memory_m(
    input wire Mem_Read,
    input wire Mem_Write,
    input wire[7:0]Mem_Addr,
    input wire[31:0]M_W_Data,
    output reg[31:0]M_R_Data
    );
	reg[63:0] Memory[0:31];
	always@(*)
		begin
			if(Mem_Read==1&&Mem_Write==0)
				begin
					M_R_Data=Memory[Mem_Addr];
				end;
			if(Mem_Read==0&&Mem_Write==1)
				begin
					Memory[Mem_Addr]=M_W_Data;
				end
		end
	

endmodule
