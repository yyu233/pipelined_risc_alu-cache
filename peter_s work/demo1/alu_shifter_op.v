
module alu_shifter_op(instr, shift_op);
	input [15:0] instr;
	output reg [1:0] shift_op;
	always@(*) begin 
		case(instr[15:13])
			 //I-format
			5'b101: begin //begin shifter
				shift_op=instr[12:11];
			end
			
			//R-format
			5'b110:begin//begin shifter, R-format 
				shift_op=instr[1:0];
			end

			default: begin 
				shift_op=instr[12:11];
			end
		endcase 
	
	
	end 
endmodule
