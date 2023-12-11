module pc_ctrl(instr,rs,pc_sel);

input [15:0]instr;
input [15:0]rs; 
output reg pc_sel; //1->jump, 0-> pc+2

always@*begin 
	case(instr[15:11])
	5'b01100:begin //BEQZ
		pc_sel=(rs==16'h0)?1:0;
	end
	5'b01101:begin//BNEZ
		pc_sel=(rs!=16'h0)?1:0;
	end

	5'b01110:begin//BLTZ
		pc_sel=(rs[15]==1'b1)?1:0;
	end

	5'b01111:begin//BGEZ
		pc_sel=(rs[15]!=1'b1)?1:0;
	end

	5'b00100:begin//J always jump 
		pc_sel=1;
	end

	5'b00101: begin //JR
		pc_sel = 1;
	end

	5'b00110:begin//JAL always jump 
		pc_sel=1;
	end

	5'b00111: begin // JALR
		pc_sel = 1;
	end

	default:begin
		pc_sel=0;
	end
	endcase
end 
endmodule 
