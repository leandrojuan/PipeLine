`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:05 01/29/2015
// Design Name:   pipeline
// Module Name:   C:/Users/Nano/Desktop/PipeLine/Test.v
// Project Name:  PipeLine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] outMuxWb;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.outMuxWb(outMuxWb)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
       
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

