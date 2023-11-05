module homework1(p1a,p2a,p1b,p2b,p1c,p2c,p1d,p2d,p1f,p1e,p1y,p2y);
input p1a,p2a,p1b,p2b,p1c,p2c,p1d,p2d,p1f,p1e;
output p1y,p2y;
assign p1y=(p1f&p1e&p1d)|(p1c&p1b&p1a);
assign p2y=(p2a&p2b)|(p2c&p2d);
endmodule
 