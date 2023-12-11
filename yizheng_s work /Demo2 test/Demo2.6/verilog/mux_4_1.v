
module mux_4_1 (InA, InB, InC, InD, S, Out);
	input InA, InB, InC, InD;
	input [1:0] S;
	output Out;

	wire m0_out, m1_out;
	mux_2_1 m0 (.InA(InA), .InB(InB), .S(S[0]), .Out(m0_out));
	mux_2_1 m1 (.InA(InC), .InB(InD), .S(S[0]), .Out(m1_out));

	mux_2_1 m2 (.InA(m0_out), .InB(m1_out), .S(S[1]), .Out(Out));
endmodule
