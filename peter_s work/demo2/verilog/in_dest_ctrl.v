module in_dest_ctrl(instr, w1_reg,reg_en,b_sel,mem_en, mem_wr);

input[15:0]instr;
output reg[2:0]w1_reg;
output reg reg_en;
output reg b_sel; 
output reg mem_en;
output reg mem_wr;

always @* begin 
	casex(instr[15:11])
		5'b010??: begin  
		w1_reg=instr[7:5];//I-format 1, arith
		reg_en=1;
		b_sel=0;//ALU input B is sign imm; 
		mem_en=0;
		mem_wr =0;
		end

		5'b101??:begin
		w1_reg=instr[7:5];//I-format 1, rot, shift
		reg_en=1;
		b_sel=0;
		mem_en=0;
		mem_wr =0;
		end

		5'b100??:begin //ST, LD, STU, SLBI, STU
		w1_reg=(instr[12]==1'b1)?instr[10:8]:instr[7:5];//SLBI,STU ->RS
		reg_en=(instr[12:11]==2'b00)?0:1;//ST, STU ->MEM
		mem_en=(instr[12:11]==2'b10)?0:1;
		b_sel=0;
		mem_wr =(^instr[12:11]==0)?1:0;
		end

		5'b110??:begin //R-format 
		w1_reg=(instr[12:11]==00)?instr[10:8]:instr[4:2];//LBI ->RS
		reg_en=1;
		b_sel=1;//ALU input B is register rt
		mem_en=0;
		mem_wr =0;
		end

		5'b111??:begin//SEQ, SLT, SLE, SCO 
		w1_reg=instr[4:2]; //->rd
		reg_en=1;
		b_sel=1;
		mem_en=0;
		mem_wr =0;
		end

		5'b0011?:begin// JAL, JALR 
		w1_reg=3'h7;// ->R7
		reg_en=1;
		b_sel=0;
		mem_en=0;
		mem_wr =0;
		end

		default: begin
		w1_reg=3'h0;
		reg_en=0;
		mem_en=0;
		b_sel=0;
		mem_wr =0;
		end
	endcase 
end 

endmodule 
