module BJ(
    input wire[2:0] in,
    output reg out
);

always @(*) begin
    
    case(in)

    default begin
        out = 1'b0;
    end
    3'b000: begin
        out = 1'b0;
    end 
    3'b001: begin
        out = 1'b0;
    end 
    3'b011: begin
        out = 1'b1;
    end 
    3'b010: begin
        out = 1'b0；
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
        out = 1'b1
    end
    endcase
end

endmodule