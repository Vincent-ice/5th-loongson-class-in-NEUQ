module third(
    input wire[2:0] in,
    output reg[0:0] out
);

always @(*) begin
    case(in)
        3'b000: out = 1'b0;
        3'b001: out = 1'b0;
        3'b010: out = 1'b0;
        3'b011: out = 1'b1;
        3'b100: out = 1'b0;
        3'b101: out = 1'b0;
        3'b110: out = 1'b1;
        3'b111: out = 1'b1;
        default: out = 1'b0;
    endcase
end

endmodule