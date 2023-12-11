module mux_stage_3 (In_stage_3_A,special_B,Cnt_2,Op,Out_3);
input [15:0]In_stage_3_A;
input special_B;
input Cnt_2;
input [1:0]Op;
output [15:0] Out_3;

wire mux_ins0_B, mux_ins1_B, mux_ins2_B, mux_ins3_B;
/**
rot_detector test_ins0(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_3_A[15]),.special_B(special_B),.Out(mux_ins0_B));
rot_detector test_ins1(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_3_A[14]),.special_B(special_B),.Out(mux_ins1_B));
rot_detector test_ins2(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_3_A[13]),.special_B(special_B),.Out(mux_ins2_B));
rot_detector test_ins3(.Op_high(Op[1]), .Op_low(Op[0]),.Rot_bit(In_stage_3_A[12]),.special_B(special_B),.Out(mux_ins3_B));
**/

assign mux_ins0_B=((Op==2'b00)|(Op==2'b10))?In_stage_3_A[15]:special_B;
assign mux_ins1_B=((Op==2'b00)|(Op==2'b10))?In_stage_3_A[14]:special_B;
assign mux_ins2_B=((Op==2'b00)|(Op==2'b10))?In_stage_3_A[13]:special_B;
assign mux_ins3_B=((Op==2'b00)|(Op==2'b10))?In_stage_3_A[12]:special_B;


mux_2_1 ins0(.InA(In_stage_3_A[0]),.InB(mux_ins3_B),.S(Cnt_2),.Out(Out_3[0]));
mux_2_1 ins1(.InA(In_stage_3_A[1]),.InB(mux_ins2_B),.S(Cnt_2),.Out(Out_3[1]));
mux_2_1 ins2(.InA(In_stage_3_A[2]),.InB(mux_ins1_B),.S(Cnt_2),.Out(Out_3[2]));
mux_2_1 ins3(.InA(In_stage_3_A[3]),.InB(mux_ins0_B),.S(Cnt_2),.Out(Out_3[3]));
mux_2_1 ins4(.InA(In_stage_3_A[4]),.InB(In_stage_3_A[0]),.S(Cnt_2),.Out(Out_3[4]));
mux_2_1 ins5(.InA(In_stage_3_A[5]),.InB(In_stage_3_A[1]),.S(Cnt_2),.Out(Out_3[5]));
mux_2_1 ins6(.InA(In_stage_3_A[6]),.InB(In_stage_3_A[2]),.S(Cnt_2),.Out(Out_3[6]));
mux_2_1 ins7(.InA(In_stage_3_A[7]),.InB(In_stage_3_A[3]),.S(Cnt_2),.Out(Out_3[7]));
mux_2_1 ins8(.InA(In_stage_3_A[8]),.InB(In_stage_3_A[4]),.S(Cnt_2),.Out(Out_3[8]));
mux_2_1 ins9(.InA(In_stage_3_A[9]),.InB(In_stage_3_A[5]),.S(Cnt_2),.Out(Out_3[9]));
mux_2_1 ins10(.InA(In_stage_3_A[10]),.InB(In_stage_3_A[6]),.S(Cnt_2),.Out(Out_3[10]));
mux_2_1 ins11(.InA(In_stage_3_A[11]),.InB(In_stage_3_A[7]),.S(Cnt_2),.Out(Out_3[11]));
mux_2_1 ins12(.InA(In_stage_3_A[12]),.InB(In_stage_3_A[8]),.S(Cnt_2),.Out(Out_3[12]));
mux_2_1 ins13(.InA(In_stage_3_A[13]),.InB(In_stage_3_A[9]),.S(Cnt_2),.Out(Out_3[13]));
mux_2_1 ins14(.InA(In_stage_3_A[14]),.InB(In_stage_3_A[10]),.S(Cnt_2),.Out(Out_3[14]));
mux_2_1 ins15(.InA(In_stage_3_A[15]),.InB(In_stage_3_A[11]),.S(Cnt_2),.Out(Out_3[15]));

endmodule 
