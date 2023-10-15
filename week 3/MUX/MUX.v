module mux2 (
	input wire[7:0] a,b,
	input wire sel,
	output wire[7:0] y
    );
		
	assign y = sel ? a : b;
endmodule//1=>a,0=>b

module mux2_gate (
	input wire a,b,
	input wire sel,
	output wire y
);
	assign y = (a&sel)|(b&~sel);
endmodule

module mux2_par #(
	parameter n=8
) (
	input wire[n-1:0] a,b,
	input wire sel,
	output wire[n-1:0] y	
);
	assign y = sel ? a : b;
endmodule

module mux4 (
	input  wire[7:0] a,b,c,d,
	input  wire[1:0] sel,
	output wire[7:0] y
    );
	
	assign y = sel[0] ? (sel[1] ? d : c) : (sel[1] ? b : a);
endmodule//00=>a,01=>b,10=>c,11=>d

module mux4_gate (
	input wire a,b,c,d,
	input wire [1:0]sel,
	output wire y
);
	assign y=(a&~sel[0]&~sel[1])|(b&sel[0]&~sel[1])|(c&~sel[0]&sel[1])|(d&sel[0]&sel[1]);
endmodule