module cla4 (A,B,C0,Sum,G_g,P_g);
input [3:0]A, B;
input C0;
output [3:0]Sum;
output G_g, P_g; 


wire G0,P0,G1,P1,G2,P2,G3,P3,C1,C2,C3;

ahead4 header4(.C0(C0),.G0(G0),.P0(P0),.G1(G1),.P1(P1),.G2(G2),.P2(P2),.G3(G3),.P3(P3),.C1(C1),.C2(C2),.C3(C3),.G_g(G_g),.P_g(P_g));
pfa ins0(.A(A[0]),.B(B[0]),.Cin(C0), .Sum(Sum[0]),.P(P0), .G(G0));
pfa ins1(.A(A[1]),.B(B[1]),.Cin(C1), .Sum(Sum[1]),.P(P1), .G(G1));
pfa ins2(.A(A[2]),.B(B[2]),.Cin(C2), .Sum(Sum[2]),.P(P2), .G(G2));
pfa ins3(.A(A[3]),.B(B[3]),.Cin(C3), .Sum(Sum[3]),.P(P3), .G(G3));



endmodule
