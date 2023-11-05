//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 09:45:49
// Design Name: 
// Module Name: wk3
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


module wk3(
    input wire A,B,C,
    output reg Y0
    );
always @(*)begin
    Y0=(A&B)|(B&C)|(A&C);
end
endmodule
