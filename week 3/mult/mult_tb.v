`timescale 1ns/1ps
module mult_tb ();
reg [7:0]a,b;
wire [15:0]s ;

mult_booth2 mult(a,b,s);

initial begin
    #100
    a = 8'b00010001;
    b = 8'b00010101;
    #200
    a = 8'b01110001;
    b = 8'b11010101;
    #200
    a = 8'b10010001;
    b = 8'b11110101;
    #200
    $finish;
end
    
endmodule