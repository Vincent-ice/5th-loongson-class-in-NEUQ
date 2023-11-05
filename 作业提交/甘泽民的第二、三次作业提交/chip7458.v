module chip7458(
    input wire p1a, 
    input wire p1b, 
    input wire p1c, 
    input wire p1d, 
    input wire p1e, 
    input wire p1f, 

    input wire p2a,
    input wire p2b,
    input wire p2c, 
    input wire p2d,

    output wire p1y,
    output wire p2y
    );

    assign p1y = (p1a & p1b & p1c ) | (p1d & p1e & p1f);
    assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule
