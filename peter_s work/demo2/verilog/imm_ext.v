module imm_ext(instr,ext_16);
input [15:0]instr;
output reg [15:0]ext_16;

always@* begin 
	casex(instr[15:11])

		5'b01000:begin //ADDI, sign ext 11
		ext_16={{11{instr[4]}},instr[4:0]};
		end 
		
		5'b01001:begin //SUBI, sign ext11
		ext_16={{11{instr[4]}},instr[4:0]};
		end 

		5'b10100:begin //ROLI, sign ext 11
		ext_16={{11{instr[4]}},instr[4:0]};
		end 
		
		5'b10000:begin //ST, sign ext 11
		ext_16={{11{instr[4]}},instr[4:0]};
		end 
		
		5'b10001:begin //LD, sign ext 11
		ext_16={{11{instr[4]}},instr[4:0]};
		end 
		
		5'b10011:begin //STU, sign ext 11
		ext_16={{11{instr[4]}},instr[4:0]};
		end
		
		5'b011??:begin //all branches, sign ext 8
		ext_16={{8{instr[7]}},instr[7:0]};
		end 

		5'b00101:begin //JR, sign ext 8
		ext_16={{8{instr[7]}},instr[7:0]};
		end
		
		5'b00111:begin //JR, sign ext 8
		ext_16={{8{instr[7]}},instr[7:0]};
		end
		
		5'b00100:begin //J, sign ext 5
		ext_16={{5{instr[10]}},instr[10:0]};
		end
		
		5'b00110:begin //JAL, sign ext 5
		ext_16={{5{instr[10]}},instr[10:0]};
		end
		
		5'b01010:begin //XORI, zero ext 11
		ext_16={{11{1'b0}},instr[4:0]};
		end 
		
		5'b01011:begin //ANDNI, zero ext 11
		ext_16={{11{1'b0}},instr[4:0]};
		end 
		
		5'b01010:begin //SLBI, zero ext 8
		ext_16={{8{1'b0}},instr[7:0]};
		end 
		
		default:begin 
		ext_16=instr;
		end
	endcase  
end 

endmodule
