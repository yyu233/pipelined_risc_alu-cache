module cla16(C0,A,B,Sum,C16);

input C0;
input[15:0]A, B;
output [15:0]Sum;
output C16;

top_ahead top(.C0(C0), .G_g0(G_g0), .P_g0(P_g0), .G_g1(G_g1), .P_g1(P_g1),.G_g2(G_g2), .P_g2(P_g2),.G_g3(G_g3),.P_g3(P_g3),.C4(C4),.C8(C8
),.C12(C12),.C16(C16));
cla4 ins0(.A(A[3:0]),.B(B[3:0]),.C0(C0),.Sum(Sum[3:0]),.G_g(G_g0),.P_g(P_g0));
cla4 ins1(.A(A[7:4]),.B(B[7:4]),.C0(C4),.Sum(Sum[7:4]),.G_g(G_g1),.P_g(P_g1));
cla4 ins2(.A(A[11:8]),.B(B[11:8]),.C0(C8),.Sum(Sum[11:8]),.G_g(G_g2),.P_g(P_g2));
cla4 ins3(.A(A[15:12]),.B(B[15:12]),.C0(C12),.Sum(Sum[15:12]),.G_g(G_g3),.P_g(P_g3));

endmodule 
