module alu_inv(instr, invA, invB, Cin);
input [15:0]instr;
output invA;
output invB;
output Cin;
//Negate
//ANDNI
assign invB=(instr[15:11]==5'b01011)?1:0;
assign cin=(instr[15:11]==5'b01011)?0:1;

//ANDN
assign invB=((instr[15:11]==5'b11011)&(instr[1:0]==2'b11))?1:0;
assign cin=((instr[15:11]==5'b11011)&(instr[1:0]==2'b11))?0:1;

//2's complement
//SUBI
assign invA=(instr[15:11]==5'b01001)?1:0;
assign cin=(instr[15:11]==5'b01001)?1:0;

//SUB
assign invA=((instr[15:11]==5'b11011)&(instr[1:0]==2'b01))?1:0;
assign cin=(instr[15:11]==5'b11011&(instr[1:0]==2'b01))?1:0;
endmodule 
