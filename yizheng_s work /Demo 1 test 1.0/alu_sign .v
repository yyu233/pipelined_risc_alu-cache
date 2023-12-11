module alu_sign (instr,sign);
input [15:0]instr;
output reg sign; 
 
always @* begin 
	casex(instr[15:11])
	//ADDI
	5'b01000: begin 
		sign=1;
	end

	//SUBI
	5'b01001: begin 
		sign=1;
	end  

	//ST, LD, LTU
	5'b100??:begin 
		sign=(instr[12:11]!=2'b10)?1:0;//NOT SLBI, 1, otherwise,0
	end

	//ADD, SUB
	5'b11011:begin 
		sign=((instr[1:0]==2'b00)|(instr[1:0]==2'b01))?1:0;
	end

	//SEQ, SLT, SLE, SCO 
	5'b111??:begin
		sign=1;
	end

	default:begin 
		sign=0;
	end

	endcase 
end 

endmodule 
