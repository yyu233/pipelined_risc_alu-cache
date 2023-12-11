module alu_out_sel (instr, A_afinv, B_afinv, sum, shifter, out);
	input [15:0] instr, sum, shifter, A_afinv, B_afinv;
	output reg [15:0] out;

	always@(*) begin 
		casex(instr[15:11])
			 //I-format
			5'b101??: begin //begin shifter
				$display("%4x", B_afinv);
				out=shifter;
			end
			
			5'b010??:begin //00 ADDI->add, 01 SUBI->add, 10 XORI->xor, 11 ANDNI->and
				out=(instr[12]==2'b0)?sum:
					(instr[12:11]==2'b10)?A_afinv ^ B_afinv:
					 A_afinv & B_afinv;
			end 
			
			5'b100??:begin//ST, LD, STU->add, SLBI ->or
				out=(instr[12:11]!=2'b10)?sum:A_afinv | B_afinv;
			end
			
			//R-format
			5'b11010:begin//begin shifter, R-format 
				out=shifter;
			end
			5'b11011:begin//00 ADD->add, 01 SUB->add
				out=((instr[1:0]==2'b00)|(instr[1:0]==2'b01))?sum:
					(instr[1:0]==2'b10)?A_afinv ^ B_afinv:
					 A_afinv & B_afinv;

			end

			// SEQ, SLT, SLE, SCO
			5'b111??: begin
				out = sum;
			end
			
			default: begin 
				out=sum;
			end
		endcase 
	
	
	end 
endmodule
