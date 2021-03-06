`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:47 01/20/2015 
// Design Name: 
// Module Name:    muxEX 
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
module MuxEX(
	input ALUSrc,
	input [31:0] dataRt,signExt,
	output reg [31:0] outMuxEx
    );

initial
begin
	outMuxEx = 0;
end
always @(*)
begin
	if(ALUSrc)
		begin
			outMuxEx = signExt;
		end
	
	else
		begin
			outMuxEx = dataRt;
		end
end
endmodule
