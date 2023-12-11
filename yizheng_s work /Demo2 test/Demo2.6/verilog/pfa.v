module pfa(A, B, Cin, Sum, P, G);

input A, B, Cin;
output Sum, P, G;

assign G=A & B;
assign P=A ^ B;
assign Sum=A ^ B ^ Cin;



endmodule 
