`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:53 04/20/2018 
// Design Name: 
// Module Name:    fulladderM 
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
module fulladderM(
    input Cin,
    input A,
    input B,
    output F,
    output Cout
    );
	 wire Cin,A,B,F,Cout;
	 //F ½øÎ»  Cout Êä³ö
	 assign F= A^B^Cin;
	 assign Cout=(A&B)|((A^B)&Cin);
	 


endmodule
