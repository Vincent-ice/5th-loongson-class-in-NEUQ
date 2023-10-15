module rgb02(
    input wire A,
    input wire B,
    input wire C,
    output reg Y
    );

    wire [2:0] D;

    assign D ={A,B,C};

    always @(*)begin
        case(D)
            3'b110:begin Y<=1;end
            3'b101:begin Y<=1;end
            3'b011:begin Y<=1;end
            3'b111:begin Y<=1;end
            default:begin Y<=0;end
        endcase
    end

endmodule