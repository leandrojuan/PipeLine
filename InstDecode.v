`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:08 01/19/2015 
// Design Name: 
// Module Name:    InstDecode 
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
module InstDecode(
	input [4:0] inInstDecodeRsReg,inInstDecodeRtReg,inInstDecodeRdReg,
	input WRInstDecode,
	input [31:0] inInstDecodeWriteData,
	output reg [31:0] outInstDecodeRsReg,outInstDecodeRtReg
    );

reg [31:0] register[0:15];
initial
begin
	register[0] <= 3;
	register[1] <= 9;
	register[2] <= 7;
	register[3] <= 5;
	register[4] <= 15;
	register[5] <= 15;
	register[6] <= 10;
	register[7] <= 15;
	register[8] <= 10;
	register[9] <= 15;
	register[10] <= 10;
	register[11] <= 15;
	register[12] <= 32'b100000_00001_00011_00010_00000_100010;
	register[13] <= 32'b100000_00001_00011_00010_00000_100010;
	register[14] <= 1435224;
	register[15] <= 32'b111111_00001_00011_00010_00000_100010;
	
	outInstDecodeRsReg = 0;
	outInstDecodeRtReg = 0;
end
always @(*)
begin
	if(WRInstDecode == 0) //Modo Lectura
		begin
			outInstDecodeRsReg = register[inInstDecodeRsReg]; //Saca el valor del registro
			outInstDecodeRtReg = register[inInstDecodeRtReg];
		end
	if(WRInstDecode == 1)
		begin
			register[inInstDecodeRdReg] = inInstDecodeWriteData;
			outInstDecodeRsReg = 0; //Saca el valor del registro
			outInstDecodeRtReg = 0;
		end
		
end


endmodule