`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:13 01/26/2015 
// Design Name: 
// Module Name:    StageMEM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Agregamos dos m�dulos, uno StoreWordDividerMEM y otro LoadWordDividerMEM. El StoreWordDividerMEM
// esta antes de la entrada de MemWriteData y lo que hace es divir la palabra segun corresponda(SB, SH, SW)
// El LoadWordDividerMEM esta en la salida de la memoria y divide la palabra segnu (LH, LB, LW)
//////////////////////////////////////////////////////////////////////////////////
module StageMEM(
input [31:0] inMemAddress, inStoreWordDividerMEM,
input MemWrite,MemRead, clk,inRegWrite,
input [1:0] flagStoreWordDividerMEM,inMemtoReg,
input [2:0] flagLoadWordDividerMEM,
input [4:0] inMuxRtRd,
	
output [31:0] outLoadWordDividerMEM,outAluLatch,
output [1:0] outMemtoReg,
output outRegWrite,
output [4:0] outWriteReg

);

wire [31:0] outMemReadData, inMemWriteData,LoadWordDividerMEM;

	StoreWordDividerMEM callStoreWordDividerMEM(
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	.inStoreWordDividerMEM(inStoreWordDividerMEM),
	
	.outStoreWordDividerMEM(inMemWriteData)
	);
	
	DataMemoryMEM callDataMemoryMEM(
	.inMemAddress(inMemAddress),
	.inMemWriteData(inMemWriteData),
	.MemWrite(MemWrite),
	.MemRead(MemRead),
	
	.outMemReadData(outMemReadData)
	);
	
	LoadWordDividerMEM callLoadWordDividerMEM(
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM), //Flag para identificar si es LB, LH, LW, etc
	.inLoadWordDividerMEM(outMemReadData),
	
	.outLoadWordDividerMEM(LoadWordDividerMEM)
	);
	
	MEM_WB_Latch callMEM_WB_Latch(
	.inLoadWordDividerMEM(LoadWordDividerMEM),
	.inAluLatch(inMemAddress),
	.inMuxRtRd(inMuxRtRd),
	.inMemtoReg(inMemtoReg),
	.inRegWrite(inRegWrite),
	.clk(clk),
	
	.outLoadWordDividerMEM(outLoadWordDividerMEM),
	.outAluLatch(outAluLatch),
	.outMuxRtRd(outWriteReg),
	.outMemtoReg(outMemtoReg),
	.outRegWrite(outRegWrite)
	);
endmodule
