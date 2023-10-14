module top_module_add(input wire p1a, p2a, p2b, p2c, p2d, p1c, p1b, p1f, p1e, p1d,
output wire p1y, p2y);




assign p2y = ((p2c & p2d) | (p2a & p2b));
assign p1y = ((p1a & p1c & p1b) | (p1f & p1e & p1d));

endmodule