module ALU (
    input [31:0]A,B,
    input [3:0]OP,
    output[31:0]S
);

wire [31:0]add_S,sub_S;
wire [63:0]mult_S;

assign add_S = A + B;
assign sub_S = A - B;

mult_gen_0 your_instance_name (
  .CLK(CLK),  // input wire CLK
  .A(A),      // input wire [31 : 0] A
  .B(B),      // input wire [31 : 0] B
  .P(mult_S)      // output wire [63 : 0] P
);

assign S = (OP == 4'b0000) ? add_S :
           (OP == 4'b0001) ? sub_S :
           (OP == 4'b0010) ? mult_S : 32'b0;
    
endmodule