`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:58 01/20/2015 
// Design Name: 
// Module Name:    AddEX 
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
module AddEX(
	input [3:0] PostPc,
	input [31:0] outShift,
	output [31:0] outAddEx
    );
reg [31:0] tmpOut;
initial
begin
	tmpOut = 0;
end

always @(*)
begin
	tmpOut = PostPc + outShift;
end
assign outAddEx = tmpOut[3:0];
endmodule
