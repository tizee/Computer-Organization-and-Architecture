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
	 //F 进位  Cout 输出
	 //assign F= A^B^Cin;
	 //assign Cout=(A&B)|((A^B)&Cin);
	 
	 // 结构建模：门电路
	 wire S1,T1,T2,T3 ;
	 // 临时变量
	 
	 xor XU1(S1,A,B), // S1 = A B的异或
		  XU2(F,S1,Cin); // F = S1 Cin 的异或		  
	 and AU1(T1,A,B),
		  AU2(T2,A,Cin),
		  AU3(T3,B,Cin);
	 or  OU1(Cout,T1,T2,T3);
	 


endmodule
