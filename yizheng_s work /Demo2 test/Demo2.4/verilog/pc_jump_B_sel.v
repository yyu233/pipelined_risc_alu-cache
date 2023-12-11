module pc_jump_B_sel(instr, pc_jump_B_sel);
input [15:0]instr;
output reg pc_jump_B_sel;
always@*begin 
	casex(instr[15:11])
	5'b011??:begin//branch instruction 
		pc_jump_B_sel=1;//1->use pc_add2_out
	end 

	5'b00100:begin//J, JAL, use displacement  
		pc_jump_B_sel=1;
	end 

	5'b00110:begin //JAL, use displacement
		pc_jump_B_sel=1;
	end 

	5'b00101:begin //JR, use rs
			pc_jump_B_sel=0;//0-> use rs
	end
	
	5'b00111:begin //JALR
		pc_jump_B_sel=0;
	end 

	default:begin 
		pc_jump_B_sel=1;
	end 

	endcase
end 
endmodule 
