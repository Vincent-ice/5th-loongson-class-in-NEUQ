module CT1(
    input wire A,B,C
    output reg Y0 );

always @(*) begin
    
     Y0 = (A&B)|(B%C)|(C&A);

     
end


endmodule