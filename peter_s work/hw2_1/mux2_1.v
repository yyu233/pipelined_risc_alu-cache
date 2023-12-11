
module mux2_1 (input InA, input InB, input S,
		output Out);
	wire nS, nand_nSA, nand_SB;

	not1 g1 (
		.out	(nS),
		.in1	(S));
	nand2 g2 ( 
		.out	(nand_nSA),
		.in1	(nS),
		.in2	(InA));
	nand2 g3 (
		.out	(nand_SB),
		.in1	(S),
		.in2	(InB));
	nand2 g4 (
		.out	(Out),
		.in1	(nand_nSA),
		.in2	(nand_SB));

	// assign Out = mux_out;
endmodule

