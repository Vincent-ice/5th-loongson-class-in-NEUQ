`timescale 1ns/1ps
module adder_tb ();
reg [7:0]a,b;
wire [7:0]s ;
wire co ;

adder_8bit adder(.a(a),.b(b),.s(s),.ci(1'b0),.co(co));

initial begin
    #100
    a = 8'b00010001;
    b = 8'b00010101;
    #200
    a = 8'b01110001;
    b = 8'b01010101;
    #200
    $finish;
end
    
endmodule