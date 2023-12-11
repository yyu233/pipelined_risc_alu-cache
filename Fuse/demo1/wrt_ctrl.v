module wrt_ctrl(instr,alu_result,mem_out,rs,zero,lt,lte,pc_add2,overflow,writedata);

input [15:0]instr;
input [15:0]alu_result;
input [15:0]mem_out;
input [15:0]rs;
input [15:0]zero;//sign ext
input [15:0]lt;
input [15:0]lte;
input [15:0]pc_add2;
input [15:0]overflow;//sign ext
output reg[15:0]writedata;

wire [15:0] rev_rs;

always@* begin 
	casex(instr[15:11])

	5'b010xx: begin // I-format 1 arith ->rd
	writedata=alu_result;
	end 

	5'b101xx:begin // I-format 1 rot shift ->rd  
	writedata=alu_result;
	end 

	5'b10011:begin // STU ->rs
	writedata=alu_result;
	end 


	5'b110xx: begin 
	writedata=(instr[12:11]==00)?{{8{instr[7]}},instr[7:0]}:(instr[12:11]== 2'b01)? rev_rs : alu_result;//true: LBI -> rs, false:alu
	end 

	5'b10010: begin //SLBI
		writedata = {rs[7:0], instr[7:0]};
	end


	5'b10001:begin //LD
	writedata=mem_out;
	end 

	5'b11100:begin 
	writedata=zero;//SEQ
	end 

	5'b11101:begin 
	writedata=lt;//SLT
	end 


	5'b11110:begin
	writedata=lte;//LTE
	end 

	5'b00110:begin 
	writedata=pc_add2;//JAL
	end 

	5'b00111:begin 
	writedata=pc_add2;//JALR
	end 
	
	5'b11111:begin
	writedata=overflow;//SCO
	end
	

	default:
	writedata=alu_result;

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
