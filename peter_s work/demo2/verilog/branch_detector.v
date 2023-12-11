module branch_detector(rs, instr, branch_taken);
	input [15:0] rs;
	input [4:0] instr;
	output reg branch_taken;

	wire eqz, nez, ltz, gez;
	assign eqz = ~(|rs);
	assign nez = |rs;
	assign ltz = rs[15];
	assign gez = ~rs[15];

	always@(*) begin
		case(instr[4:2]) 
			3'b011: begin
				branch_taken = (instr[1:0] == 2'b00) ? eqz : (instr[1:0] ==
					2'b01) ? nez : (instr[1:0] == 2'b10) ? ltz : gez;
			end
			3'b001: begin	// Jump instructions
				branch_taken = 1'b1;
			end
			default: begin
				branch_taken = 1'b0;
			end
		endcase
	end
endmodule
