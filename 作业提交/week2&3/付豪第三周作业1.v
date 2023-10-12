module BJ(
    input wire A,B,C,
    output reg Y1 );

always @(*) begin
    
     Y1 = (A&C)|(A&B)|(B&C);

end

endmodule