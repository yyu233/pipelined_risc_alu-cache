module shifter (In, Cnt, Op, Out);
   
   input [15:0] In;
   input [3:0]  Cnt;
   input [1:0]  Op;
   output reg [15:0] Out;
   
   wire[15:0]In_stage_1_A;//connect to port A of stage 1 all muxes 
   wire special_B; //connect only to port B of stage 1 first mux
   wire[15:0]Out_1;//stage 1 output 
   wire[15:0]Out_2;//stage 2 output
   wire[15:0]Out_3;
   wire[15:0]Out_4; 
   /*
   Your code goes here
   */
   dir_mux stage_1_In_A(.In(In), .Op_high(Op[1]), .In_stage_1_A(In_stage_1_A));//decide stage 1 input is from 0:15 or 15:0
   mux_2_1 op_low_select(.InA(In[15]),.InB(1'b0),.S(Op[0]),.Out(special_B));//logical shift add 0, arithmetic or rotate add In[15]
   
   mux_stage_1 stage_1(.In_stage_1_A(In_stage_1_A),.special_B(special_B),.Cnt_0(Cnt[0]),.Out_1(Out_1));//first stage 
   mux_stage_2 stage_2(.In_stage_2_A(Out_1),.special_B(special_B),.Cnt_1(Cnt[1]),.Op(Op),.Out_2(Out_2));
   mux_stage_3 stage_3(.In_stage_3_A(Out_2),.special_B(special_B),.Cnt_2(Cnt[2]),.Op(Op),.Out_3(Out_3));
   mux_stage_4 stage_4(.In_stage_4_A(Out_3),.special_B(special_B),.Cnt_3(Cnt[3]),.Op(Op),.Out_4(Out_4));
  
//output mux
   always@(Out_4)begin 
	case(Op[1])
		1'b1:begin
			Out[0]=Out_4[15];
			Out[1]=Out_4[14];
      			Out[2]=Out_4[13];
			Out[3]=Out_4[12];
			Out[4]=Out_4[11];
			Out[5]=Out_4[10];
			Out[6]=Out_4[9];
			Out[7]=Out_4[8];
			Out[8]=Out_4[7];
			Out[9]=Out_4[6];
			Out[10]=Out_4[5];
			Out[11]=Out_4[4];
			Out[12]=Out_4[3];
			Out[13]=Out_4[2];
			Out[14]=Out_4[1];
			Out[15]=Out_4[0];
		end
		1'b0:begin
			Out=Out_4;
		end
	endcase
  end
   
   
endmodule

