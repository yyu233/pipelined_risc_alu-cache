module IE (instr, sign_ext, rs, r2, b_sel, alu_result, alu_zero, alu_ofl, Cout);
	input [15:0] instr;
	input [15:0] sign_ext;
	input [15:0] rs;
	input [15:0] r2;
	input b_sel;
	output [15:0] alu_result;
	output alu_zero;
	output alu_ofl;
	output Cout;

	wire [15:0] alu_b;
	wire cin, invA, invB, sign;
	alu_sign alu_s (.instr(instr), .sign(sign));
	alu_inv alu_i (.instr(instr),.invA(invA),.invB(invB),.Cin(cin));
	alu_b_mux alu_bmux (.b_sel(b_sel), .ext_16(sign_ext), .r2(r2), .B(alu_b));

	alu ALU (.A(rs), .B(alu_b), .Cin(cin), .Op(instr), .invA(invA),
		.invB(invB), .sign(sign), .Out(alu_result), .Ofl(alu_ofl), .Z(alu_zero), .Cout(Cout));
endmodule
