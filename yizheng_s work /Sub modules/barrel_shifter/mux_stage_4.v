module mux_stage_4(In_stage_4_A,special_B,Cnt_3,Op,Out_4);

input [15:0]In_stage_4_A;
input special_B;
input Cnt_3;
input [1:0]Op;
output [15:0] Out_4;

wire mux_ins0_B,mux_ins1_B,mux_ins2_B,mux_ins3_B,mux_ins4_B,mux_ins5_B,mux_ins6_B,mux_ins7_B;

rot_detector test_ins0(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[8]),.special_B(special_B),.Out(mux_ins0_B));
rot_detector test_ins1(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[9]),.special_B(special_B),.Out(mux_ins1_B));
rot_detector test_ins2(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[10]),.special_B(special_B),.Out(mux_ins2_B));
rot_detector test_ins3(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[11]),.special_B(special_B),.Out(mux_ins3_B));
rot_detector test_ins4(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[12]),.special_B(special_B),.Out(mux_ins4_B));
rot_detector test_ins5(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[13]),.special_B(special_B),.Out(mux_ins5_B));
rot_detector test_ins6(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[14]),.special_B(special_B),.Out(mux_ins6_B));
rot_detector test_ins7(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_4_A[15]),.special_B(special_B),.Out(mux_ins7_B));

mux_2_1 ins0(.InA(In_stage_4_A[0]),.InB(mux_ins0_B),.S(Cnt_3),.Out(Out_4[0]));
mux_2_1 ins1(.InA(In_stage_4_A[1]),.InB(mux_ins1_B),.S(Cnt_3),.Out(Out_4[1]));
mux_2_1 ins2(.InA(In_stage_4_A[2]),.InB(mux_ins2_B),.S(Cnt_3),.Out(Out_4[2]));
mux_2_1 ins3(.InA(In_stage_4_A[3]),.InB(mux_ins3_B),.S(Cnt_3),.Out(Out_4[3]));
mux_2_1 ins4(.InA(In_stage_4_A[4]),.InB(mux_ins4_B),.S(Cnt_3),.Out(Out_4[4]));
mux_2_1 ins5(.InA(In_stage_4_A[5]),.InB(mux_ins5_B),.S(Cnt_3),.Out(Out_4[5]));
mux_2_1 ins6(.InA(In_stage_4_A[6]),.InB(mux_ins6_B),.S(Cnt_3),.Out(Out_4[6]));
mux_2_1 ins7(.InA(In_stage_4_A[7]),.InB(mux_ins7_B),.S(Cnt_3),.Out(Out_4[7]));
mux_2_1 ins8(.InA(In_stage_4_A[8]),.InB(In_stage_4_A[0]),.S(Cnt_3),.Out(Out_4[8]));
mux_2_1 ins9(.InA(In_stage_4_A[9]),.InB(In_stage_4_A[1]),.S(Cnt_3),.Out(Out_4[9]));
mux_2_1 ins10(.InA(In_stage_4_A[10]),.InB(In_stage_4_A[2]),.S(Cnt_3),.Out(Out_4[10]));
mux_2_1 ins11(.InA(In_stage_4_A[11]),.InB(In_stage_4_A[3]),.S(Cnt_3),.Out(Out_4[11]));
mux_2_1 ins12(.InA(In_stage_4_A[12]),.InB(In_stage_4_A[4]),.S(Cnt_3),.Out(Out_4[12]));
mux_2_1 ins13(.InA(In_stage_4_A[13]),.InB(In_stage_4_A[5]),.S(Cnt_3),.Out(Out_4[13]));
mux_2_1 ins14(.InA(In_stage_4_A[14]),.InB(In_stage_4_A[6]),.S(Cnt_3),.Out(Out_4[14]));
mux_2_1 ins15(.InA(In_stage_4_A[15]),.InB(In_stage_4_A[7]),.S(Cnt_3),.Out(Out_4[15]));
endmodule 
