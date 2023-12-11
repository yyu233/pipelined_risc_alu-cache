module top_ahead(C0, G_g0, P_g0, G_g1, P_g1,G_g2, P_g2,G_g3,P_g3,C4,C8,C12,C16);

input C0, G_g0, P_g0, G_g1, P_g1,G_g2, P_g2,G_g3,P_g3;
output C4,C8,C12,C16; 
ahead4 ins0(.C0(C0),.G0(G_g0),.P0(P_g0),.G1(G_g1),.P1(P_g1),.G2(G_g2),.P2(P_g2),.G3(G_g3),.P3(P_g3),.C1(C4),.C2(C8),.C3(C12),.G_g(),.P_g());//We dont need output for generate and prop for the top header

assign C16=G_g3 | (P_g3 & G_g2) |(P_g3 & P_g2 & G_g1) | (P_g3 & P_g2 & P_g1 & G_g0) | (P_g3 & P_g2 & P_g1 & P_g0 & C0);//C16 will be connected to ofl 

endmodule 
