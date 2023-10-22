`timescale 1ns/1ps
module encoder_tb ();
    reg D0,D1,D2,D3,D4,D5,D6,D7;
    wire [2:0] Y;

    encoder u_encoder(D0,D1,D2,D3,D4,D5,D6,D7,Y);

    initial begin
        #10
        {D0,D1,D2,D3,D4,D5,D6,D7} = 8'b00001000;
        #10
        {D0,D1,D2,D3,D4,D5,D6,D7} = 8'b00110000;
        #10
        $stop;
    end
endmodule