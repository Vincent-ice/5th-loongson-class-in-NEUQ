module half_adder (
    input  a,b,
    output s
);

assign s = a^b;
endmodule

module adder_1bit (
    input a,b,ci,
    output s,co
);

assign s = a^b^ci;
assign co = (a&b)|(ci&(a^b));
endmodule

module adder_8bit (
    input  [7:0] a,b,
    input        ci,
    output [7:0] s,
    output       co
);

wire [8:0] temp_co;

assign temp_co[0] = ci;

generate
    genvar i;
    for (i = 0;i<8 ;i=i+1 ) begin:adder_simple
        adder_1bit adder_unit(.a(a[i]),.b(b[i]),.ci(temp_co[i]),.s(s[i]),.co(temp_co[i+1]));
    end
endgenerate

assign co=temp_co[8];
endmodule

module cla4 (
    input [3:0]a,b,
    input ci,
    output co
);

wire [3:0]G,P;

generate
    genvar i;
    for (i = 0;i<4 ;i=i+1 ) begin
       assign G[i] = a[i] & b[i];
       assign P[i] = a[i] | b[i]; 
    end
endgenerate

assign co = G[3] | P[3]&G[2] | P[3]&P[2]&G[1] |
            P[3]&P[2]&P[1]&G[0] | P[3]&P[2]&P[1]&P[0]&ci; 
    
endmodule

module adder_8bit_fast (
    input  [7:0] a,b,
    input        ci,
    output [7:0] s,
    output       co
);

wire [8:0] temp_co;
cla4 u_cla4(.a(a[3:0]),.b(b[3:0]),.ci(ci),.co(temp_co[3]));
generate
    genvar i;
    for (i = 0;i<4 ;i=i+1 ) begin
        adder_1bit adder_unit(.a(a[i]),.b(b[i]),.ci(temp_co[i]),.s(s[i]),.co(temp_co[i+1]));
        adder_1bit adder_unit2(.a(a[i+4]),.b(b[i+4]),.ci(temp_co[i+4]),.s(s[i+4]),.co(temp_co[i+5]));
    end
endgenerate
endmodule