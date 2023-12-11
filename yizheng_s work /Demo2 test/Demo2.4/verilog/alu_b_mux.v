module alu_b_mux(b_sel, ext_16, r2,B);
input b_sel;
input [15:0] ext_16;
input [15:0] r2;
output[15:0] B;

assign B=(b_sel==0)?ext_16:r2;


endmodule 
