`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:48 04/20/2018 
// Design Name: 
// Module Name:    CLLAAdderM 
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
module CLLAAdderM(
    input[3:0] A,
    input[3:0] B,
    input Cin,
    output[3:0] F,
    output Cout
    );
	// 数据流建模
	assign {Cout,F} = A +B +Cin;
	
				  
	
endmodule
