module wrt_ctrl(instr,alu_result,mem_out,zero,lt,lte,pc_add2,overflow,writedata);

input [15:0]instr;
input [15:0]alu_result;
input [15:0]mem_out;
input [15:0]zero;//sign ext
input [15:0]lt;
input [15:0]lte;
input [15:0]pc_add2;
input [15:0]overflow;//sign ext
output reg[15:0]writedata;

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
	writedata=(instr[12:11]==00)?{{8{instr[7]}},instr[7:0]}:alu_result;//true: LBI -> rs, false:alu
	end 


	5'b10001:begin 
	writedata=mem_out;
	end 

	5'b11100:begin 
	writedata=zero;//SEQ
	end 

	5'b11101:begin 
	writedata=lt;//SLT
	end 


	5'b11111:begin 
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

endmodule 
