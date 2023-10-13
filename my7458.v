`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/12 08:23:40
// Design Name: 
// Module Name: my7458
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


module my7458(
    input p1a,p2a,p2b,p2c,p2d,
    output p2y,
    input p1c,p1b,p1f,p1e,p1d,
    output p1y
    );
    assign p1y=(p1a&p1c&p1b)|(p1f&p1e&p1d);
    assign p2y=(p2a&p2b)|(p2c&p2d);
    
endmodule
