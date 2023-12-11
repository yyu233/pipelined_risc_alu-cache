module ahead4(C0,G0,P0,G1,P1,G2,P2,G3,P3,C1,C2,C3,G_g,P_g);

input C0,G0,P0,G1,P1,G2,P2,G3,P3;
output C1,C2,C3,G_g,P_g;

assign C1=G0 | (P0 & C0);
assign C2=G1 | (P1 & G0) | (P1 & P0 & C0);
assign C3=G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & C0);
assign G_g=G3 | (P3 & G2) |(P3 & P2 & G1) | (P3 & P2 & P1 & G0);
assign P_g= P3 & P2 & P1 & P0 & C0;


endmodule 
