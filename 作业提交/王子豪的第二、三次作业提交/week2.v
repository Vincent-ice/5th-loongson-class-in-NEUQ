module second(
input p1a,p2a,p2b,p2c,p2d,p1c,p1b,p1f,p1e,p1d,
output p1y,p2y
    );
    assign p1y=(p1a & p1c & p1b)|(p1f & p1e & p1d);
    assign p2y=(p2a & p2b)|(p2c & p2d)
endmodule