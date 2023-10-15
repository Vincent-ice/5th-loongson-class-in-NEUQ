module top_module(
    input wire p1a,p2a,p1b,p2b,p1c,p2c,p1d,p2d,p1f,p1e,
    output reg p1y,p2y
);

always @(*) begin
    p1y =  (p1a&p1c&p1b)+(p1f&p1e&p1d);

    p2y =  (p2a&p2b)+(p2c&p2d);

end

endmodule