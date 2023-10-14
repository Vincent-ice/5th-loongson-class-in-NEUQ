module voting_circuit(A,B,C,Y);
input wire A,B,C;
outpur wire Y;
assign Y=((A&C)|(B&C)|(A&B));
endmodule