module mux_2_1(InA,InB,S,Out);
input InA, InB, S;
output Out;

wire a_out, b_out;
wire n_S;
//Use demorgan's law (~S)*InA +S*InB=~(~(~S*InA))*(~(S*InB)));
not1  nS(.in1(S),.out(n_S));
nand2 A(.in1(InA),.in2(n_S),.out(a_out)); 
nand2 B(.in1(InB),.in2(S),.out(b_out));
nand2 C(.in1(a_out),.in2(b_out),.out(Out));

endmodule
