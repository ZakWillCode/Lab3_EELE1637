module mux4_1 (
	input A,
	input B,
	input C,
	input D,
	input S0,
	input S1,
	output Y
);

wire out1;
wire out2;

mux2_1 mux1(
	.A(A),
	.B(B),
	.S(S0),
	.Y(out1)
);

mux2_1 mux2(
	.A(C),
	.B(D),
	.S(!S0),
	.Y(out2)
);

mux2_1 mux3(
	.A(out1),
	.B(out2),
	.S(S1),
	.Y(Y)
);

endmodule 
	

