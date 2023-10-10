`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:40:39 PM
// Design Name: 
// Module Name: homework_20231008_ZhenZhiBiao
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


module homework_20231008_ZhenZhiBiao(
    input wire[2:0] in,
    output reg out
    );
    always @(*) begin
        case(in)

    default begin
        out = 1'b1;
    end
    3'b000: begin
        out = 1'b0;
    end 
    3'b001: begin
        out = 1'b0;
    end 
    3'b010: begin
        out = 1'b0;
    end
    3'b011: begin
        out = 1'b1;
    end
    3'b100: begin
        out = 1'b0;
    end
    3'b101: begin
        out = 1'b1;
    end
    3'b110: begin
        out = 1'b1;
    end
    3'b111: begin
        out = 1'b1;
    end


    endcase
    end

endmodule
