
module right_shifter_2 (In, shift, low_op, Out);
	input [15:0] In;
	input shift;
	input low_op;
	output [15:0] Out;
	
	wire msb;

	mux2_1 msb_mux (.InA(In[15]), .InB(1'b0), .S(low_op), .Out(msb));

	mux2_1 m0 (.InA(In[0]), .InB(In[4]), .S(shift), .Out(Out[0]));
	mux2_1 m1 (.InA(In[1]), .InB(In[5]), .S(shift), .Out(Out[1]));
	mux2_1 m2 (.InA(In[2]), .InB(In[6]), .S(shift), .Out(Out[2]));
	mux2_1 m3 (.InA(In[3]), .InB(In[7]), .S(shift), .Out(Out[3]));
	mux2_1 m4 (.InA(In[4]), .InB(In[8]), .S(shift), .Out(Out[4]));
	mux2_1 m5 (.InA(In[5]), .InB(In[9]), .S(shift), .Out(Out[5]));
	mux2_1 m6 (.InA(In[6]), .InB(In[10]), .S(shift), .Out(Out[6]));
	mux2_1 m7 (.InA(In[7]), .InB(In[11]), .S(shift), .Out(Out[7]));
	mux2_1 m8 (.InA(In[8]), .InB(In[12]), .S(shift), .Out(Out[8]));
	mux2_1 m9 (.InA(In[9]), .InB(In[13]), .S(shift), .Out(Out[9]));
	mux2_1 m10 (.InA(In[10]), .InB(In[14]), .S(shift), .Out(Out[10]));
	mux2_1 m11 (.InA(In[11]), .InB(In[15]), .S(shift), .Out(Out[11]));
	mux2_1 m12 (.InA(In[12]), .InB(msb), .S(shift), .Out(Out[12]));
	mux2_1 m13 (.InA(In[13]), .InB(msb), .S(shift), .Out(Out[13]));
	mux2_1 m14 (.InA(In[14]), .InB(msb), .S(shift), .Out(Out[14]));
	mux2_1 m15 (.InA(In[15]), .InB(msb), .S(shift), .Out(Out[15]));

endmodule
