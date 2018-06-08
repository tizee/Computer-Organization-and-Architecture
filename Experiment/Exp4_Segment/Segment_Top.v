`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:01 06/01/2018 
// Design Name: 
// Module Name:    Segment_Top 
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
module Segment_Top(
    input wire[4:0]Switch_Address,
    input wire Switch_WriteReg,
    input wire[1:0]Switch_Select,
    input wire Button_Clk,
    input wire Button_Reset,
    input wire Button_AB,
    output reg[7:0]LED
    );
	 reg[31:0]Data_F;
	 always@(*)
		if(Switch_WriteReg==0)//Read
				begin
				if(Button_AB==0)//Select A
					begin
						Segment_M A1(.R_Addr_A(Switch_Address),.W_Addr(Switch_Address),.Write_Reg(Switch_WriteReg),.Clk(Button_Clk),.R_Data_A(Data),.Reset(Button_Reset));
						LED=Data_F[7:0];
					end
				else	//Select B
					begin
						Segment_M A1(.R_Addr_B(Switch_Address),.W_Addr(Switch_Address),.Write_Reg(Switch_WriteReg),.Clk(Button_Clk),.R_Data_B(Data),.Reset(Button_Reset));
						LED=Data_F[7:0];
					end
			end
		else //Select Data and Write
			begin
				case(Switch_Select)
					2'b00:begin Data_F=32'h0000_0001; end
					2'b01:begin Data_F=32'h0000_0010; end
					2'b10:begin Data_F=32'h0000_0011; end
 					2'b11:begin Data_F=32'h0000_0100; end
				endcase
				if(Button_AB==0)//Select A
					begin
					Segment_M A1(.R_Addr_A(Switch_Address),.W_Addr(Switch_Address),.Write_Reg(Switch_WriteReg),.Clk(Button_Clk),.R_Data_A(Data),.Reset(Button_Reset));
					LED=8'h00;
					end
				else //Select B
					begin
					Segment_M A1(.R_Addr_B(Switch_Address),.W_Addr(Switch_Address),.Write_Reg(Switch_WriteReg),.Clk(Button_Clk),.R_Data_B(Data),.Reset(Button_Reset));
					LED=8'h00;
					end
	 end
endmodule
