module CT1(
    input wire[2:0] in,
    output reg[1:0] out
);

always @(*) begin
   
    case(in)

    3'b111:begin
        out = 2'b01;
    end
    3'b110:begin
        out = 2'b01;
    end
    3'b101:begin
        out = 2'b01;
    end
    3'b011:begin
        out = 2'b01;
    end
    default begin
        out = 2'b10;
    end
    endcase
end

 endmodule