`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:52 06/01/2018 
// Design Name: 
// Module Name:    RAM_B_Test 
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
module RAM_B_Test(input [7:2]Mem_Addr,
input [1:0]Select,
input Mem_Write,
input Clk,
output [7:0]LED);

reg[31:0] M_W_Data;
reg[31:0] M_R_Data;



RAM_B Test(
  .clka(Clk), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(Mem_Addr[7:2]), // input [5 : 0] addra
  .dina(M_W_Data), // input [31 : 0] dina
  .douta(M_R_Data) // output [31 : 0] douta
);
endmodule
