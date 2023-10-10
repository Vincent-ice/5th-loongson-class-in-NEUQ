`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 07:00:17 AM
// Design Name: 
// Module Name: top_module_7458
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


module top_module_7458(input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y);
    wire w1,w2,w3,w4;
    assign w1=p1a&p1b&p1c;
    assign w2=p1d&p1e&p1f;
    assign w3=p2a&p2b;
    assign w4=p2c&p2d;
    assign p1y=w1|w2;
    assign p2y=w3|w4;
endmodule
