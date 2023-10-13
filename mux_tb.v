module tb ();

	reg A;
	reg B;
	reg C;
	reg D;
	reg S0;
	reg S1;
	wire Y;

	mux4_1 dut(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.S0(S0),
		.S1(S1),
		.Y(Y)
	);

	initial begin
	$monitor(Y);
		A = 0;
		B = 1;
		C = 0;
		D = 1;
		S0 = 1;
		S1 = 1;
		#10
		S0 = 0;
		#10
		S0 = 1;
		S1 = 0;
		#10
		S0 = 0;
		S1 = 0;
		#10
		S0 = 1;
	end

endmodule 
