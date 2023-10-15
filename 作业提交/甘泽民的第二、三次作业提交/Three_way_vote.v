module rgb01(
    input A,
    input B,
    input C,
    output y
    );

    assign y = (A&B) | (A&C) | (B&C);
endmodule