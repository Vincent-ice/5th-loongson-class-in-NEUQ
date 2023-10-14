module case(
    input wire[2:0] i,
    output reg[1:0] o
);
always @(*) begin
  case(i)
  3b'000: o=0;
  3b'001: o=0;
  3b'010: o=0;
  3b'100: o=0;
  3b'011: o=1;
  3b'101: o=1;
  3b'110: o=1;
  default: o=1;
  endcase
endmodule