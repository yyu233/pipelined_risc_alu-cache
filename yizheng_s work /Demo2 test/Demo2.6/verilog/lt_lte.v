module lt_lte(alu_result_15,zero,overflow,lt,lte);

input alu_result_15;
input zero;
input overflow;
output lt; 
output lte;

assign lt=(({alu_result_15,overflow}==2'b10) | ({alu_result_15,overflow}==2'b01))?1:0;//bit 15==1, rt-rs<0,rs>rt
assign lte=(({alu_result_15,overflow}==2'b10)| ({alu_result_15,overflow}==2'b01)|zero)?1:0;
//assign lt=(alu_result_15==1'b1)?1:0;//bit 15==1, rt-rs<0,rs>rt
//assign lte=((alu_result_15==1'b1)|zero)?1:0;

endmodule 
