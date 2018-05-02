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
//	assign {Cout,F} = A +B +Cin;
	// 结构建模
	reg [3:1] C;
	reg [3:0] P;
	reg [3:0] G;
	//超前进位逻辑
	integer i;
	begin
   for(i=0;i<4;i=i+1) 
		   P[i]= A[i]|B[i];
		   G[i]= A[i]&B[i];
  end
  begin
  C[1]=G[0]|(P[0]&Cin);
  C[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&Cin);
  C[3]=G[2]|(P[2]G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&Cin);
end

 
	
	fulladderM FA0(F[0],C[1],A[0],B[0],Cin),
				  FA1(F[1],C[2],A[1],B[1],C[1]),
				  FA2(
				  .A(A[2]),
				  .B(B[2]),
				  .Cin(C[2]),
				  .F(F[2]),
				  .Cout(C[3])),
				  FA3(
				  .F(F[3]),
				  .Cout(Cout),
				  .A(A[3]),
				  .B(B[3]),
				  .Cin(C[3]));
				  
	
endmodule
