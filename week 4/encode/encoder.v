module encoder (
    input D0,D1,D2,D3,D4,D5,D6,D7,
    output reg [2:0] Y
);

always@(*)begin
    Y=0;
    case(1'b1)
        D0:Y=3'b000;
        D1:Y=3'b001;
        D2:Y=3'b010;
        D3:Y=3'b011;
        D4:Y=3'b100;
        D5:Y=3'b101;
        D6:Y=3'b110;
        D7:Y=3'b111;
    endcase
end

endmodule