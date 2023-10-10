`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 22:39:01
// Design Name: 
// Module Name: fengdidegou
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fengdidegou(
input wire A,B,C,
    output reg Y0
    );
  always @(*) begin
    
     Y0 = (A&B)|(B&C)|(C&A);
  end

endmodule
