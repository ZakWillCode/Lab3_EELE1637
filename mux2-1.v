module mux2_1 (
	input A,
	input B,
	input S,
	output Y
);

	assign Y = S?A:B;

endmodule 