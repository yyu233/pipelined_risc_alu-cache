module op_low_s_tb();
reg [15:0]In;
reg Op;
wire special_B;

mux_2_1 op_low_select(.InA(In[15]),.InB(0),.S(Op),.Out(special_B));

initial begin 
In=16'hFF00;
Op=1'b0;

#10 Op=1'b1;

#20 $finish;

end

endmodule

