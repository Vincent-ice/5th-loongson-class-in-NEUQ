`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 20:36:00
// Design Name: 
// Module Name: chip7458
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


module chip7458(
    input p1a , p1b , p1c , p1d , p1e , p1f , p2a , p2b , p2c , p2d ,
    output p1y , p2y
    );

    assign p1y = (p1a & p1b & p1c ) | (p1d & p1e & p1f);
    assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule
