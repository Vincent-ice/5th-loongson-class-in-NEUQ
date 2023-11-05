module CT3(
    input wire[2:0] in,
    output reg out
);

always @(*) begin
    
    case(in)
    3'b111: begin
        out=1'd1;
    end
    3'b110: begin
        out=1'd1;
    end
    3'b101: begin
        out=1'd1;
    end
    3'b011: begin
        out=1'd1;
    end
    default begin
        out = 1'b111;
    end
    endcase
end

endmodule