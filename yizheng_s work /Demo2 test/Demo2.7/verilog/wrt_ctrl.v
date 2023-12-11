module wrt_ctrl(instr,alu_result,rs,zero,lt,lte,pc_add2,overflow,wrt_dmem,writedata_EX);

input [15:0]instr;
input [15:0]alu_result;
input [15:0]rs;
input [15:0]zero;//sign ext
input [15:0]lt;
input [15:0]lte;
input [15:0]pc_add2;
input [15:0]overflow;//sign ext
output reg wrt_dmem;//equals to 1, writedata from dmem
output reg[15:0]writedata_EX;


wire [15:0] rev_rs;

always@* begin 
	casex(instr[15:11])

	5'b010xx: begin // I-format 1 arith ->rd
	writedata_EX=alu_result;
 	wrt_dmem=0;
	end 

	5'b101xx:begin // I-format 1 rot shift ->rd  
	writedata_EX=alu_result;
 	wrt_dmem=0;
	end 

	5'b10011:begin // STU ->rs
	writedata_EX=alu_result;
 	wrt_dmem=0;
	end 


	5'b110xx: begin 
	writedata_EX=(instr[12:11]==00)?{{8{instr[7]}},instr[7:0]}:(instr[12:11]== 2'b01)? rev_rs : alu_result;//true: LBI -> rs, false:alu
 	wrt_dmem=0;
	end 

	5'b10010: begin //SLBI
		writedata_EX = {rs[7:0], instr[7:0]};
   	wrt_dmem=0;
	end

	5'b10001:begin //LD
		writedata_EX=16'h0;//writedata_EX cannot get data from mem at the EX stage. 
		wrt_dmem=1;
	end 
	
	5'b11100:begin 
	writedata_EX=zero;//SEQ
 	wrt_dmem=0;
	end 

	5'b11101:begin 
	writedata_EX=lt;//SLT
 	wrt_dmem=0;
	end 


	5'b11110:begin
	writedata_EX=lte;//LTE
 	wrt_dmem=0;
	end 

	5'b00110:begin 
	writedata_EX=pc_add2;//JAL
 	wrt_dmem=0;
	end 

	5'b00111:begin 
	writedata_EX=pc_add2;//JALR
 	wrt_dmem=0;
	end 
	
	5'b11111:begin
	writedata_EX=overflow;//SCO
 	wrt_dmem=0;
	end
	

	default:begin
	wrt_dmem=0;
	writedata_EX=alu_result;
	end
	endcase 

end 

assign rev_rs[15] = rs[0];
assign rev_rs[14] = rs[1];
assign rev_rs[13] = rs[2];
assign rev_rs[12] = rs[3];
assign rev_rs[11] = rs[4];
assign rev_rs[10] = rs[5];
assign rev_rs[9] = rs[6];
assign rev_rs[8] = rs[7];
assign rev_rs[7] = rs[8];
assign rev_rs[6] = rs[9];
assign rev_rs[5] = rs[10];
assign rev_rs[4] = rs[11];
assign rev_rs[3] = rs[12];
assign rev_rs[2] = rs[13];
assign rev_rs[1] = rs[14];
assign rev_rs[0] = rs[15];

endmodule 
