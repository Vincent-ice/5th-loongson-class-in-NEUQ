`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:13:33 PM
// Design Name: 
// Module Name: homework_20231008
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


module homework_20231008(
    input in1,in2,in3,
    output out1);
    assign out1=(in1&in2)|(in2&in3)|(in1&in3);
endmodule
