module shifter (In, Cnt, Op, Out);
   
   input [15:0] In;
   input [3:0]  Cnt;
   input [1:0]  Op;
   output [15:0] Out;

   wire [15:0] Out_r0, Out_r1, Out_r2, Out_r3, Out_l0, Out_l1, Out_l2, Out_l3;

   right_shifter_0 r0 (.In(In),.shift(Cnt[0]),.low_op(Op[0]),.Out(Out_r0));
   right_shifter_1 r1 (.In(Out_r0),.shift(Cnt[1]),.low_op(Op[0]),.Out(Out_r1));
   right_shifter_2 r2 (.In(Out_r1),.shift(Cnt[2]),.low_op(Op[0]),.Out(Out_r2));
   right_shifter_3 r3 (.In(Out_r2),.shift(Cnt[3]),.low_op(Op[0]),.Out(Out_r3));

   left_shifter_0 l0 (.In(In),.shift(Cnt[0]),.low_op(Op[0]),.Out(Out_l0));
   left_shifter_1 l1 (.In(Out_l0),.shift(Cnt[1]),.low_op(Op[0]),.Out(Out_l1));
   left_shifter_2 l2 (.In(Out_l1),.shift(Cnt[2]),.low_op(Op[0]),.Out(Out_l2));
   left_shifter_3 l3 (.In(Out_l2),.shift(Cnt[3]),.low_op(Op[0]),.Out(Out_l3));

   mux2_1 m0 (.InA(Out_l3[0]), .InB(Out_r3[0]), .S(Op[1]), .Out(Out[0]));
   mux2_1 m1 (.InA(Out_l3[1]), .InB(Out_r3[1]), .S(Op[1]), .Out(Out[1]));
   mux2_1 m2 (.InA(Out_l3[2]), .InB(Out_r3[2]), .S(Op[1]), .Out(Out[2]));
   mux2_1 m3 (.InA(Out_l3[3]), .InB(Out_r3[3]), .S(Op[1]), .Out(Out[3]));
   mux2_1 m4 (.InA(Out_l3[4]), .InB(Out_r3[4]), .S(Op[1]), .Out(Out[4]));
   mux2_1 m5 (.InA(Out_l3[5]), .InB(Out_r3[5]), .S(Op[1]), .Out(Out[5]));
   mux2_1 m6 (.InA(Out_l3[6]), .InB(Out_r3[6]), .S(Op[1]), .Out(Out[6]));
   mux2_1 m7 (.InA(Out_l3[7]), .InB(Out_r3[7]), .S(Op[1]), .Out(Out[7]));
   mux2_1 m8 (.InA(Out_l3[8]), .InB(Out_r3[8]), .S(Op[1]), .Out(Out[8]));
   mux2_1 m9 (.InA(Out_l3[9]), .InB(Out_r3[9]), .S(Op[1]), .Out(Out[9]));
   mux2_1 m10 (.InA(Out_l3[10]), .InB(Out_r3[10]), .S(Op[1]), .Out(Out[10]));
   mux2_1 m11 (.InA(Out_l3[11]), .InB(Out_r3[11]), .S(Op[1]), .Out(Out[11]));
   mux2_1 m12 (.InA(Out_l3[12]), .InB(Out_r3[12]), .S(Op[1]), .Out(Out[12]));
   mux2_1 m13 (.InA(Out_l3[13]), .InB(Out_r3[13]), .S(Op[1]), .Out(Out[13]));
   mux2_1 m14 (.InA(Out_l3[14]), .InB(Out_r3[14]), .S(Op[1]), .Out(Out[14]));
   mux2_1 m15 (.InA(Out_l3[15]), .InB(Out_r3[15]), .S(Op[1]), .Out(Out[15]));
   
endmodule

