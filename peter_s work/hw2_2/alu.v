module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Z);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [2:0] Op;
        input invA;
        input invB;
        input sign;
        output [15:0] Out;
        output Ofl;
        output Z;

  wire [15:0] nA, nB, inputA, inputB, shift_out, add_out, and_out, or_out, xor_out;
  wire [15:0] result, Out_mux0, Out_mux1, Out_mux2;
  wire cout;

  not16 invertA (.In(A), .Out(nA));
  not16 invertB (.In(B), .Out(nB));

  mux16_2_1 selectA (.InA(A), .InB(nA), .S(invA), .Out(inputA));
  mux16_2_1 selectB (.InA(B), .InB(nB), .S(invB), .Out(inputB));

  // All of the operations are handled below
  shifter opshift (.In(inputA), .Cnt(inputB[3:0]), .Op(Op[1:0]), .Out(shift_out));
  cla16 opadd (.C0(Cin), .A(inputA), .B(inputB), .Sum(add_out), .C16(cout));
  and16 opand (.InA(inputA), .InB(inputB), .Out(and_out));
  or16 opor (.InA(inputA), .InB(inputB), .Out(or_out));
  xor16 opxor (.InA(inputA), .InB(inputB), .Out(xor_out));

  // Select the correct output
  mux16_2_1 mux0 (.InA(add_out), .InB(or_out), .S(Op[0]), .Out(Out_mux0));
  mux16_2_1 mux1 (.InA(xor_out), .InB(and_out), .S(Op[0]), .Out(Out_mux1));
  mux16_2_1 mux2 (.InA(Out_mux0), .InB(Out_mux1), .S(Op[1]), .Out(Out_mux2));
  mux16_2_1 mux3 (.InA(shift_out), .InB(Out_mux2), .S(Op[2]), .Out(result));
    
  assign Ofl = ((~sign) &  cout) | (sign & (~(inputA[15] ^ inputB[15]) & (inputA[15] ^ cout)));
  assign Z = ~(result[0] | result[1] | result[2] | result[3] | result[4] | result[5] | result[6] | result[7] | result[8] | result[9] | result[10] | result[11] | result[12] | result[13] | result[14] | result[15]);
  assign Out = result;

endmodule
