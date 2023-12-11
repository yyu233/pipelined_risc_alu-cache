
module mux_8_1 (InA, InB, InC, InD, InE, InF, InG, InH, S, Out);
	input InA, InB, InC, InD, InE, InF, InG, InH;
	input [2:0] S;
	output Out;

	wire m0_out, m1_out, m2_out, m3_out, m4_out, m5_out;

	mux_2_1 m0 (.InA(InA),.InB(InB),.S(S[0]),.Out(m0_out));
	mux_2_1 m1 (.InA(InC),.InB(InD),.S(S[0]),.Out(m1_out));
	mux_2_1 m2 (.InA(InE),.InB(InF),.S(S[0]),.Out(m2_out));
	mux_2_1 m3 (.InA(InG),.InB(InH),.S(S[0]),.Out(m3_out));

	mux_2_1 m4 (.InA(m0_out),.InB(m1_out),.S(S[1]),.Out(m4_out));
	mux_2_1 m5 (.InA(m2_out),.InB(m3_out),.S(S[1]),.Out(m5_out));

	mux_2_1 m6 (.InA(m4_out),.InB(m5_out),.S(S[2]),.Out(Out));
endmodule
