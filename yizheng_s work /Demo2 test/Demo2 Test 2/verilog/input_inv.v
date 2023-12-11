module input_inv(In, Flag, Out);
input [15:0] In;
input Flag;
output [15:0]Out;

xor2 ins0(.in1(In[0]),.in2(Flag),.out(Out[0]));
xor2 ins1(.in1(In[1]),.in2(Flag),.out(Out[1]));
xor2 ins2(.in1(In[2]),.in2(Flag),.out(Out[2]));
xor2 ins3(.in1(In[3]),.in2(Flag),.out(Out[3]));
xor2 ins4(.in1(In[4]),.in2(Flag),.out(Out[4]));
xor2 ins5(.in1(In[5]),.in2(Flag),.out(Out[5]));
xor2 ins6(.in1(In[6]),.in2(Flag),.out(Out[6]));
xor2 ins7(.in1(In[7]),.in2(Flag),.out(Out[7]));
xor2 ins8(.in1(In[8]),.in2(Flag),.out(Out[8]));
xor2 ins9(.in1(In[9]),.in2(Flag),.out(Out[9]));
xor2 ins10(.in1(In[10]),.in2(Flag),.out(Out[10]));
xor2 ins11(.in1(In[11]),.in2(Flag),.out(Out[11]));
xor2 ins12(.in1(In[12]),.in2(Flag),.out(Out[12]));
xor2 ins13(.in1(In[13]),.in2(Flag),.out(Out[13]));
xor2 ins14(.in1(In[14]),.in2(Flag),.out(Out[14]));
xor2 ins15(.in1(In[15]),.in2(Flag),.out(Out[15]));

endmodule 
