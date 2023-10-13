module homework2_1(A,B,C,Y);
input A,B,C;
output Y;
assign Y=(A&B)|(B&C)|(A&C)|(A&B&C);
endmodule
