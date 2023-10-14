module CT1(
    input wire A,B,C,
    output reg Y0,Y1  );

always @(*)begin
    Y0 = (A&B)+(B&C)+(A&C);
    Y1 = ~((B+C)&(A+C)&(A+B));
end


endmodule