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
   
   reg[15:0]In_stage_1_A_temp;
   reg[15:0]special_B_temp;
   
   assign In_stage_1_A=In_stage_1_A_temp;
   assign special_B=special_B_temp;
   /*
   Your code goes here
   */
   
   mux_stage_1 stage_1(.In_stage_1_A(In_stage_1_A),.special_B(special_B),.Cnt_0(Cnt[0]),.Out_1(Out_1));//first stage 
   mux_stage_2 stage_2(.In_stage_2_A(Out_1),.special_B(special_B),.Cnt_1(Cnt[1]),.Op(Op),.Out_2(Out_2));
   mux_stage_3 stage_3(.In_stage_3_A(Out_2),.special_B(special_B),.Cnt_2(Cnt[2]),.Op(Op),.Out_3(Out_3));
   mux_stage_4 stage_4(.In_stage_4_A(Out_3),.special_B(special_B),.Cnt_3(Cnt[3]),.Op(Op),.Out_4(Out_4));
  
  always@*begin 
	case(Op)
	2'b00:begin //ROL, left
		In_stage_1_A_temp=In;
		special_B_temp=In[15];
	end
	
	2'b01:begin //SLL, left
		In_stage_1_A_temp=In;
		special_B_temp=1'b0;
	end 
	
	2'b10:begin //ROR, right, reverse input 
		In_stage_1_A_temp={In[0], In[1],In[2],In[3],In[4],In[5],In[6],In[7],
							In[8], In[9], In[10], In[11], In[12], In[13], In[14], In[15]};//decide stage 1 input is from 0:15 or 15:0
		special_B_temp=In[0];
	end 
	
	2'b11:begin //SRL, right, reverse input 
		In_stage_1_A_temp={In[0], In[1],In[2],In[3],In[4],In[5],In[6],In[7],
							In[8], In[9], In[10], In[11], In[12], In[13], In[14], In[15]};
		special_B_temp=1'b0;
	end 
	
	endcase   
  end 
//output mux
   always@(Out_4)begin 
	case(Op[1])
		1'b1:begin
			Out={Out_4[0],Out_4[1],Out_4[2],Out_4[3],Out_4[4],Out_4[5],Out_4[6],Out_4[7],
				Out_4[8],Out_4[9],Out_4[10],Out_4[11],Out_4[12],Out_4[13],Out_4[14],Out_4[15]};
			
		end
		1'b0:begin
			Out=Out_4;
		end
	endcase
  end
   
   
endmodule

