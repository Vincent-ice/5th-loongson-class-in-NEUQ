`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/12 08:46:21
// Design Name: 
// Module Name: Task3
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


module Task3(
    input [2:0] ABC,
    output reg result
    );
always@(*)
    begin
        case(ABC)
        3'b000:result<=1'b0;
        3'b001:result<=1'b0;
        3'b010:result<=1'b0;
        3'b100:result<=1'b0;
        3'b011:result<=1'b1;
        3'b101:result<=1'b1;
        3'b100:result<=1'b1;
        3'b111:result<=1'b1;
        endcase
    end
endmodule
