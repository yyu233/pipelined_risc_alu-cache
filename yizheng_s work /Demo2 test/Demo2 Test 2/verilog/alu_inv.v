module alu_inv(instr, invA, invB, Cin);
input [15:0]instr;
output reg invA;
output reg invB;
output reg Cin;

always@(*) begin
	casex({instr[15:11], instr[1:0]})
	//ANDNI
	7'b01011??: begin 
		invA=0;
		invB=1;
		Cin=0;
	end

	//ANDN 
	7'b1101111: begin 
		invA= 0;
		invB= 1;
		Cin= 0;
	end

	//SUB
	7'b1101101: begin 
		invA=1;
		invB=0;
		Cin=1;
	end

	//2's complement
	//SUBI
	7'b01001??: begin
		invA=1;
		invB=0;
		Cin=1;
	end

	//SEQ, SLT, SLE, SCO
	7'b111????: begin
		invA = 0;
		invB = (instr[12:11] == 2'b11) ? 0 : 1;
		Cin = (instr[12:11] == 2'b11) ? 0 : 1;
	end
	
	default: begin
		invA = 0;
		invB=0;
		Cin=0;
	end

	endcase
end
endmodule 
