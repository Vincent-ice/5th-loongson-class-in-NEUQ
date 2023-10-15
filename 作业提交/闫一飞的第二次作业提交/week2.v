module CT1(
    input wire A,B,C,
    output reg Y1,Y2  );

always @(*) begin
    
     Y1=(A&B&C)+(A&B&~C)+(A&~B&C)+(~A&B&C);
     Y2=~Y1;

end


endmodule