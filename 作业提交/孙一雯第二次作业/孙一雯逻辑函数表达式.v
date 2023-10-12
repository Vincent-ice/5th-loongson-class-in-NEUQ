module CT1(
    input wire A,B,C,
    output reg Y0,Y1,Y2,Y3  );

always @(*) begin
    
     Y0 = (A&B&~C);

     Y1 = (A&~B&C);

     Y2 = (~A&B&C);

     Y3 = (A&B&C);
end


endmodule