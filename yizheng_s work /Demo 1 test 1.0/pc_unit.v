module pc_unit(clk,rst,instr,rs,ext_16,instr_addr);
input clk;
input rst; 
input [15:0]instr;
input [15:0]rs; 
input [15:0]ext_16;//extened immediate 
output [15:0]instr_addr;

wire [15:0]pc_in;
wire [15:0]pc_out;
wire [15:0]pc_add2_B;//normal seq ->2, halt->0, 1st adder input B
wire [15:0]pc_add2_out;//1st adder out
wire [15:0]pc_jump_B;//Branch, diplacement,->pc+2, JR, JALR ->rs, 2nd adder input B
wire [15:0]pc_jump_out;
wire pc_sel;

reg[15:0]pc_jump_B_temp;

assign instr_addr=pc_out;//connected to instruction memory 
assign pc_jump_B=pc_jump_B_temp;
assign pc_add2_B=(instr[15:11]!=5'b00000)?16'h2:16'h0;//halt->0

dff pc[15:0](.q(pc_out), .d(pc_in), .clk(clk), .rst(rst));
cla16  pc_add2(.C0(1'b0),.A(pc_out),.B(pc_add2_B),.Sum(pc_add2_out),.C15(),.C16());
cla16  pc_jump(.C0(1'b0),.A(ext_16),.B(pc_jump_B),.Sum(pc_jump_out),.C15(),.C16());
pc_ctrl ins1(.instr(instr),.rs(rs),.pc_sel(pc_sel));

assign pc_in=(pc_sel==1)?pc_jump_out:pc_add2_out; 

always@*begin 
	casex(instr[15:11])
	5'b011??:begin//branch instruction 
		pc_jump_B_temp=pc_add2_out;
	end 

	5'b00100:begin//J, JAL, use displacement  
		pc_jump_B_temp=pc_add2_out;
	end 

	5'b00110:begin //JAL, use displacement
		pc_jump_B_temp=pc_add2_out;
	end 

	5'b00101:begin //JR, use rs
		pc_jump_B_temp=rs;
	end 

	5'b00111:begin //JALR
		pc_jump_B_temp=rs;
	end 

	default:begin 
		pc_jump_B_temp=pc_add2_out;
	end 

	endcase
end 

endmodule 
