module mux_stage_1_tb();
reg [15:0]In_stage_1_A;
reg special_B;
reg Cnt;
wire [15:0]Out_1;

mux_stage_1 stage_1(.In_stage_1_A(In_stage_1_A),.special_B(special_B),.Cnt_0(Cnt),.Out_1(Out_1));

initial begin 
In_stage_1_A=16'h0001;
special_B=1'b0;
Cnt=0;

#10 Cnt=1;

#10  In_stage_1_A=16'h8000;
#20 $finish;

end
endmodule
