module dir_mux(In, Op_high, In_stage_1_A);

input [15:0]In;
input Op_high;
output [15:0]In_stage_1_A;


	mux_2_1 dir_mux_0 (.InA(In[0]), .InB(In[15]),.S(Op_high),.Out(In_stage_1_A[0]));//S(0)->InA, S(1)->InB, Op[1]=0, move left
	mux_2_1 dir_mux_1 (.InA(In[1]), .InB(In[14]),.S(Op_high),.Out(In_stage_1_A[1]));
	mux_2_1 dir_mux_2 (.InA(In[2]), .InB(In[13]),.S(Op_high),.Out(In_stage_1_A[2]));
	mux_2_1 dir_mux_3 (.InA(In[3]), .InB(In[12]),.S(Op_high),.Out(In_stage_1_A[3]));
	mux_2_1 dir_mux_4 (.InA(In[4]), .InB(In[11]),.S(Op_high),.Out(In_stage_1_A[4]));
	mux_2_1 dir_mux_5 (.InA(In[5]), .InB(In[10]),.S(Op_high),.Out(In_stage_1_A[5]));
	mux_2_1 dir_mux_6 (.InA(In[6]), .InB(In[9]),.S(Op_high),.Out(In_stage_1_A[6]));
	mux_2_1 dir_mux_7 (.InA(In[7]), .InB(In[8]),.S(Op_high),.Out(In_stage_1_A[7]));
	mux_2_1 dir_mux_8 (.InA(In[8]), .InB(In[7]),.S(Op_high),.Out(In_stage_1_A[8]));
	mux_2_1 dir_mux_9 (.InA(In[9]), .InB(In[6]),.S(Op_high),.Out(In_stage_1_A[9]));
	mux_2_1 dir_mux_10 (.InA(In[10]), .InB(In[5]),.S(Op_high),.Out(In_stage_1_A[10]));
	mux_2_1 dir_mux_11 (.InA(In[11]), .InB(In[4]),.S(Op_high),.Out(In_stage_1_A[11]));
	mux_2_1 dir_mux_12 (.InA(In[12]), .InB(In[3]),.S(Op_high),.Out(In_stage_1_A[12]));
	mux_2_1 dir_mux_13 (.InA(In[13]), .InB(In[2]),.S(Op_high),.Out(In_stage_1_A[13]));
	mux_2_1 dir_mux_14 (.InA(In[14]), .InB(In[1]),.S(Op_high),.Out(In_stage_1_A[14]));
	mux_2_1 dir_mux_15 (.InA(In[15]), .InB(In[0]),.S(Op_high),.Out(In_stage_1_A[15]));
	
endmodule