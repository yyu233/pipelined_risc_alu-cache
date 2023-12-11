module mux_stage_1(In_stage_1_A,special_B,Cnt_0,Out_1);
input [15:0]In_stage_1_A;
input special_B;
input Cnt_0;
output [15:0] Out_1;

mux_2_1 ins0(.InA(In_stage_1_A[0]),.InB(special_B),.S(Cnt_0),.Out(Out_1[0]));
mux_2_1 ins1(.InA(In_stage_1_A[1]),.InB(In_stage_1_A[0]),.S(Cnt_0),.Out(Out_1[1]));
mux_2_1 ins2(.InA(In_stage_1_A[2]),.InB(In_stage_1_A[1]),.S(Cnt_0),.Out(Out_1[2]));
mux_2_1 ins3(.InA(In_stage_1_A[3]),.InB(In_stage_1_A[2]),.S(Cnt_0),.Out(Out_1[3]));
mux_2_1 ins4(.InA(In_stage_1_A[4]),.InB(In_stage_1_A[3]),.S(Cnt_0),.Out(Out_1[4]));
mux_2_1 ins5(.InA(In_stage_1_A[5]),.InB(In_stage_1_A[4]),.S(Cnt_0),.Out(Out_1[5]));
mux_2_1 ins6(.InA(In_stage_1_A[6]),.InB(In_stage_1_A[5]),.S(Cnt_0),.Out(Out_1[6]));
mux_2_1 ins7(.InA(In_stage_1_A[7]),.InB(In_stage_1_A[6]),.S(Cnt_0),.Out(Out_1[7]));
mux_2_1 ins8(.InA(In_stage_1_A[8]),.InB(In_stage_1_A[7]),.S(Cnt_0),.Out(Out_1[8]));
mux_2_1 ins9(.InA(In_stage_1_A[9]),.InB(In_stage_1_A[8]),.S(Cnt_0),.Out(Out_1[9]));
mux_2_1 ins10(.InA(In_stage_1_A[10]),.InB(In_stage_1_A[9]),.S(Cnt_0),.Out(Out_1[10]));
mux_2_1 ins11(.InA(In_stage_1_A[11]),.InB(In_stage_1_A[10]),.S(Cnt_0),.Out(Out_1[11]));
mux_2_1 ins12(.InA(In_stage_1_A[12]),.InB(In_stage_1_A[11]),.S(Cnt_0),.Out(Out_1[12]));
mux_2_1 ins13(.InA(In_stage_1_A[13]),.InB(In_stage_1_A[12]),.S(Cnt_0),.Out(Out_1[13]));
mux_2_1 ins14(.InA(In_stage_1_A[14]),.InB(In_stage_1_A[13]),.S(Cnt_0),.Out(Out_1[14]));
mux_2_1 ins15(.InA(In_stage_1_A[15]),.InB(In_stage_1_A[14]),.S(Cnt_0),.Out(Out_1[15]));

endmodule
