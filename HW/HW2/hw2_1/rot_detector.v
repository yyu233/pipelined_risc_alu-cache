module rot_detector(Op_high, Op_low,Rot_bit,special_B,Out);
input Op_high;
input Op_low;
input Rot_bit;
input special_B;
output Out;

wire rot_sel;// for stage 2, rot_sel==1 means op is rotation, In_stage_2_A[14] should connect to port B of 2nd mux
nor2 test_rot(.in1(Op_high),.in2(Op_low),.out(rot_sel));
mux_2_1 rot_sel_mux(.InA(special_B),.InB(Rot_bit),.S(rot_sel),.Out(Out));

endmodule
