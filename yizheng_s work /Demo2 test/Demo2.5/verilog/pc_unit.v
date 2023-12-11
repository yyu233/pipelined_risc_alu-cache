module pc_unit(clk,rst,pc_jump_out,pc_sel,halt,pause_PC,instr_addr,PC_2);
input clk;
input rst; 
input[15:0]pc_jump_out;
input pc_sel;
input halt;
input pause_PC;

output [15:0]instr_addr;
output [15:0] PC_2;

wire [15:0]pc_in;
wire [15:0]pc_out;
wire [15:0]pc_add2_B;//normal seq ->2, halt->0, 1st adder input B
wire [15:0]pc_add2_out;//1st adder out

assign pc_add2_B=(~halt)?16'h2:16'h0;//halt->0

cla16  pc_add2(.C0(1'b0),.A(pc_out),.B(pc_add2_B),.Sum(pc_add2_out),.C15(),.C16());
assign pc_in=({pc_sel,pause_PC}==2'b10)?pc_jump_out:({pc_sel,pause_PC}==2'b00)?pc_add2_out:pc_out; 
dff pc[15:0](.q(pc_out), .d(pc_in), .clk(clk), .rst(rst));

assign instr_addr=pc_out;//connected to instruction memory 
assign PC_2=pc_add2_out; //PC_2=pc+2 

endmodule 
