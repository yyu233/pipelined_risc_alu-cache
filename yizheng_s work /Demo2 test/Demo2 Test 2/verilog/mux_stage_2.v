module mux_stage_2(In_stage_2_A,special_B,Cnt_1,Op,Out_2);

input [15:0]In_stage_2_A;
input special_B;
input Cnt_1;
input [1:0]Op;
output [15:0] Out_2;

wire mux_ins0_B, mux_ins1_B;

/**
rot_detector test_ins0(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_2_A[14]),.special_B(special_B),.Out(mux_ins0_B));
rot_detector test_ins1(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_2_A[15]),.special_B(special_B),.Out(mux_ins1_B));
**/
assign mux_ins0_B=((Op==2'b00)|(Op==2'b10))?In_stage_2_A[14]:special_B;
assign mux_ins1_B=((Op==2'b00)|(Op==2'b10))?In_stage_2_A[15]:special_B;



mux_2_1 ins0(.InA(In_stage_2_A[0]),.InB(mux_ins0_B),.S(Cnt_1),.Out(Out_2[0]));
mux_2_1 ins1(.InA(In_stage_2_A[1]),.InB(mux_ins1_B),.S(Cnt_1),.Out(Out_2[1]));
mux_2_1 ins2(.InA(In_stage_2_A[2]),.InB(In_stage_2_A[0]),.S(Cnt_1),.Out(Out_2[2]));
mux_2_1 ins3(.InA(In_stage_2_A[3]),.InB(In_stage_2_A[1]),.S(Cnt_1),.Out(Out_2[3]));
mux_2_1 ins4(.InA(In_stage_2_A[4]),.InB(In_stage_2_A[2]),.S(Cnt_1),.Out(Out_2[4]));
mux_2_1 ins5(.InA(In_stage_2_A[5]),.InB(In_stage_2_A[3]),.S(Cnt_1),.Out(Out_2[5]));
mux_2_1 ins6(.InA(In_stage_2_A[6]),.InB(In_stage_2_A[4]),.S(Cnt_1),.Out(Out_2[6]));
mux_2_1 ins7(.InA(In_stage_2_A[7]),.InB(In_stage_2_A[5]),.S(Cnt_1),.Out(Out_2[7]));
mux_2_1 ins8(.InA(In_stage_2_A[8]),.InB(In_stage_2_A[6]),.S(Cnt_1),.Out(Out_2[8]));
mux_2_1 ins9(.InA(In_stage_2_A[9]),.InB(In_stage_2_A[7]),.S(Cnt_1),.Out(Out_2[9]));
mux_2_1 ins10(.InA(In_stage_2_A[10]),.InB(In_stage_2_A[8]),.S(Cnt_1),.Out(Out_2[10]));
mux_2_1 ins11(.InA(In_stage_2_A[11]),.InB(In_stage_2_A[9]),.S(Cnt_1),.Out(Out_2[11]));
mux_2_1 ins12(.InA(In_stage_2_A[12]),.InB(In_stage_2_A[10]),.S(Cnt_1),.Out(Out_2[12]));
mux_2_1 ins13(.InA(In_stage_2_A[13]),.InB(In_stage_2_A[11]),.S(Cnt_1),.Out(Out_2[13]));
mux_2_1 ins14(.InA(In_stage_2_A[14]),.InB(In_stage_2_A[12]),.S(Cnt_1),.Out(Out_2[14]));
mux_2_1 ins15(.InA(In_stage_2_A[15]),.InB(In_stage_2_A[13]),.S(Cnt_1),.Out(Out_2[15]));


endmodule 
