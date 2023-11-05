`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/08 22:30:11
// Design Name: 
// Module Name: circuit1
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


module rgb02(
    input A,
    input B,
    input C,
    output reg Y
    );

    wire [2:0] D;

    assign D ={A,B,C};

    always @(*)
    begin
        case(D)
            3'b110: Y<=1;
            3'b101: Y<=1;
            3'b011: Y<=1;
            3'b111: Y<=1;
            default: Y<=0;
        
        endcase
    
    end

endmodule