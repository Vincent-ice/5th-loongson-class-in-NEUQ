module rgb02(
    input A,B,C,
    output L
    );
    always @(*)begin
        case({A,B,C})
            3'b110:L<=1'b1;
            3'b111:L<=1'b1;
            3'b101:L<=1'b1;
            3'b011:L<=1'b1;
            3'b100:L<=1'b0;
            3'b001:L<=1'b0;
            3'b010:L<=1'b0;
            3'b000:L<=1'b0;
            default:L<=1'b0;
        endcase
    end
endmodule