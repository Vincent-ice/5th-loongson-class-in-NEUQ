module rgb01(
    input A,B,C,
    output L
    );
    
    assign L=(A&B)|(A&C)|(B&C);
endmodule
