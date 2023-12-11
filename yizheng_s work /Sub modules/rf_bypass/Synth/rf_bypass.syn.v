/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP4-1
// Date      : Mon Feb 27 00:07:19 2017
/////////////////////////////////////////////////////////////


module not1_0 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_2 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_0 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_1 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_0 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_0 nS ( .in1(S), .out(n_S) );
  nand2_2 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_1 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_0 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_0 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n1, n2;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n1), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n1) );
endmodule


module not1_15 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_45 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_46 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_47 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_15 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_15 nS ( .in1(S), .out(n_S) );
  nand2_47 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_46 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_45 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_14 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_42 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_43 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_44 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_14 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_14 nS ( .in1(S), .out(n_S) );
  nand2_44 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_43 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_42 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_13 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_39 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_40 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_41 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_13 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_13 nS ( .in1(S), .out(n_S) );
  nand2_41 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_40 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_39 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_12 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_36 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_37 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_38 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_12 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_12 nS ( .in1(S), .out(n_S) );
  nand2_38 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_37 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_36 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_11 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_33 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_34 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_35 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_11 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_11 nS ( .in1(S), .out(n_S) );
  nand2_35 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_34 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_33 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_10 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_30 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_31 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_32 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_10 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_10 nS ( .in1(S), .out(n_S) );
  nand2_32 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_31 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_30 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_9 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_27 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_28 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_29 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_9 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_9 nS ( .in1(S), .out(n_S) );
  nand2_29 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_28 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_27 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_8 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_24 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_25 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_26 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_8 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_8 nS ( .in1(S), .out(n_S) );
  nand2_26 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_25 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_24 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_7 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_21 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_22 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_23 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_7 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_7 nS ( .in1(S), .out(n_S) );
  nand2_23 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_22 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_21 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_6 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_18 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_19 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_20 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_6 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_6 nS ( .in1(S), .out(n_S) );
  nand2_20 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_19 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_18 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_5 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_15 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_16 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_17 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_5 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_5 nS ( .in1(S), .out(n_S) );
  nand2_17 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_16 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_15 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_4 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_12 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_13 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_14 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_4 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_4 nS ( .in1(S), .out(n_S) );
  nand2_14 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_13 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_12 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_3 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_9 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_10 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_11 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_3 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_3 nS ( .in1(S), .out(n_S) );
  nand2_11 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_10 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_9 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_2 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_6 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_7 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_8 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_2 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_2 nS ( .in1(S), .out(n_S) );
  nand2_8 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_7 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_6 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_1 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_3 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_4 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_5 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_1 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_1 nS ( .in1(S), .out(n_S) );
  nand2_5 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_4 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_3 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_15 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_14 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_13 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_12 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_11 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_10 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_9 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_8 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_7 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_6 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_5 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_4 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_3 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_2 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_1 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_7 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_0 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), .S(
        n1), .Out(\d<0> ) );
  mux_2_1_1 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), .S(
        n1), .Out(\d<1> ) );
  mux_2_1_2 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), .S(
        n1), .Out(\d<2> ) );
  mux_2_1_3 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), .S(
        n1), .Out(\d<3> ) );
  mux_2_1_4 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), .S(
        n1), .Out(\d<4> ) );
  mux_2_1_5 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), .S(
        n1), .Out(\d<5> ) );
  mux_2_1_6 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), .S(
        n1), .Out(\d<6> ) );
  mux_2_1_7 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), .S(
        n1), .Out(\d<7> ) );
  mux_2_1_8 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), .S(
        n1), .Out(\d<8> ) );
  mux_2_1_9 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), .S(
        n1), .Out(\d<9> ) );
  mux_2_1_10 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_11 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_12 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_13 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_14 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_15 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_0 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_1 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_2 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_3 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_4 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_5 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_6 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_7 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_8 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_9 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_10 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_11 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_12 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_13 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_14 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_15 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_127 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_381 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_382 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_383 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_127 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_127 nS ( .in1(S), .out(n_S) );
  nand2_383 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_382 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_381 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_126 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_378 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_379 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_380 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_126 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_126 nS ( .in1(S), .out(n_S) );
  nand2_380 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_379 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_378 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_125 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_375 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_376 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_377 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_125 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_125 nS ( .in1(S), .out(n_S) );
  nand2_377 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_376 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_375 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_124 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_372 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_373 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_374 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_124 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_124 nS ( .in1(S), .out(n_S) );
  nand2_374 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_373 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_372 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_123 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_369 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_370 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_371 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_123 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_123 nS ( .in1(S), .out(n_S) );
  nand2_371 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_370 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_369 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_122 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_366 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_367 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_368 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_122 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_122 nS ( .in1(S), .out(n_S) );
  nand2_368 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_367 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_366 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_121 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_363 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_364 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_365 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_121 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_121 nS ( .in1(S), .out(n_S) );
  nand2_365 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_364 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_363 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_120 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_360 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_361 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_362 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_120 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_120 nS ( .in1(S), .out(n_S) );
  nand2_362 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_361 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_360 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_119 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_357 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_358 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_359 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_119 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_119 nS ( .in1(S), .out(n_S) );
  nand2_359 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_358 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_357 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_118 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_354 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_355 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_356 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_118 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_118 nS ( .in1(S), .out(n_S) );
  nand2_356 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_355 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_354 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_117 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_351 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_352 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_353 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_117 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_117 nS ( .in1(S), .out(n_S) );
  nand2_353 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_352 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_351 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_116 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_348 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_349 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_350 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_116 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_116 nS ( .in1(S), .out(n_S) );
  nand2_350 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_349 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_348 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_115 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_345 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_346 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_347 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_115 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_115 nS ( .in1(S), .out(n_S) );
  nand2_347 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_346 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_345 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_114 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_342 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_343 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_344 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_114 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_114 nS ( .in1(S), .out(n_S) );
  nand2_344 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_343 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_342 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_113 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_339 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_340 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_341 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_113 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_113 nS ( .in1(S), .out(n_S) );
  nand2_341 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_340 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_339 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_112 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_336 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_337 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_338 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_112 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_112 nS ( .in1(S), .out(n_S) );
  nand2_338 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_337 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_336 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_127 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_126 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_125 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_124 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_123 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_122 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_121 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_120 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_119 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_118 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_117 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_116 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_115 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_114 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_113 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_112 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_6 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_112 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_113 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_114 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_115 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_116 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_117 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_118 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_119 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_120 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_121 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_122 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_123 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_124 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_125 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_126 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_127 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_112 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_113 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_114 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_115 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_116 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_117 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_118 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_119 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_120 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_121 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_122 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst)
         );
  dff_123 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst)
         );
  dff_124 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst)
         );
  dff_125 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst)
         );
  dff_126 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst)
         );
  dff_127 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst)
         );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_31 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_93 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_94 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_95 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_31 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_31 nS ( .in1(S), .out(n_S) );
  nand2_95 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_94 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_93 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_30 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_90 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_91 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_92 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_30 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_30 nS ( .in1(S), .out(n_S) );
  nand2_92 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_91 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_90 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_29 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_87 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_88 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_89 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_29 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_29 nS ( .in1(S), .out(n_S) );
  nand2_89 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_88 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_87 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_28 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_84 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_85 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_86 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_28 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_28 nS ( .in1(S), .out(n_S) );
  nand2_86 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_85 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_84 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_27 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_81 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_82 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_83 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_27 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_27 nS ( .in1(S), .out(n_S) );
  nand2_83 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_82 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_81 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_26 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_78 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_79 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_80 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_26 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_26 nS ( .in1(S), .out(n_S) );
  nand2_80 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_79 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_78 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_25 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_75 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_76 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_77 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_25 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_25 nS ( .in1(S), .out(n_S) );
  nand2_77 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_76 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_75 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_24 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_72 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_73 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_74 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_24 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_24 nS ( .in1(S), .out(n_S) );
  nand2_74 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_73 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_72 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_23 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_69 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_70 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_71 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_23 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_23 nS ( .in1(S), .out(n_S) );
  nand2_71 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_70 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_69 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_22 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_66 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_67 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_68 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_22 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_22 nS ( .in1(S), .out(n_S) );
  nand2_68 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_67 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_66 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_21 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_63 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_64 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_65 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_21 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_21 nS ( .in1(S), .out(n_S) );
  nand2_65 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_64 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_63 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_20 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_60 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_61 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_62 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_20 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_20 nS ( .in1(S), .out(n_S) );
  nand2_62 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_61 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_60 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_19 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_57 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_58 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_59 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_19 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_19 nS ( .in1(S), .out(n_S) );
  nand2_59 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_58 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_57 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_18 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_54 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_55 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_56 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_18 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_18 nS ( .in1(S), .out(n_S) );
  nand2_56 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_55 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_54 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_17 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_51 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_52 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_53 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_17 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_17 nS ( .in1(S), .out(n_S) );
  nand2_53 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_52 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_51 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_16 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_48 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_49 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_50 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_16 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_16 nS ( .in1(S), .out(n_S) );
  nand2_50 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_49 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_48 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_31 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_30 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_29 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_28 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_27 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_26 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_25 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_24 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_23 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_22 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_21 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_20 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_19 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_18 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_17 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_16 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_0 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_16 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_17 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_18 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_19 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_20 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_21 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_22 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_23 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_24 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_25 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_26 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_27 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_28 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_29 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_30 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_31 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_16 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_17 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_18 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_19 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_20 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_21 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_22 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_23 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_24 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_25 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_26 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_27 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_28 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_29 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_30 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_31 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_47 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_141 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_142 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_143 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_47 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_47 nS ( .in1(S), .out(n_S) );
  nand2_143 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_142 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_141 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_46 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_138 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_139 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_140 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_46 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_46 nS ( .in1(S), .out(n_S) );
  nand2_140 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_139 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_138 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_45 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_135 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_136 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_137 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_45 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_45 nS ( .in1(S), .out(n_S) );
  nand2_137 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_136 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_135 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_44 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_132 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_133 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_134 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_44 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_44 nS ( .in1(S), .out(n_S) );
  nand2_134 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_133 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_132 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_43 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_129 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_130 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_131 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_43 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_43 nS ( .in1(S), .out(n_S) );
  nand2_131 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_130 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_129 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_42 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_126 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_127 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_128 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_42 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_42 nS ( .in1(S), .out(n_S) );
  nand2_128 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_127 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_126 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_41 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_123 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_124 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_125 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_41 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_41 nS ( .in1(S), .out(n_S) );
  nand2_125 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_124 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_123 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_40 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_120 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_121 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_122 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_40 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_40 nS ( .in1(S), .out(n_S) );
  nand2_122 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_121 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_120 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_39 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_117 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_118 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_119 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_39 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_39 nS ( .in1(S), .out(n_S) );
  nand2_119 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_118 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_117 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_38 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_114 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_115 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_116 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_38 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_38 nS ( .in1(S), .out(n_S) );
  nand2_116 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_115 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_114 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_37 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_111 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_112 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_113 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_37 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_37 nS ( .in1(S), .out(n_S) );
  nand2_113 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_112 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_111 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_36 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_108 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_109 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_110 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_36 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_36 nS ( .in1(S), .out(n_S) );
  nand2_110 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_109 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_108 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_35 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_105 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_106 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_107 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_35 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_35 nS ( .in1(S), .out(n_S) );
  nand2_107 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_106 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_105 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_34 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_102 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_103 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_104 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_34 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_34 nS ( .in1(S), .out(n_S) );
  nand2_104 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_103 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_102 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_33 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_99 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_100 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_101 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_33 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_33 nS ( .in1(S), .out(n_S) );
  nand2_101 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_100 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_99 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_32 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_96 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_97 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_98 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_32 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_32 nS ( .in1(S), .out(n_S) );
  nand2_98 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_97 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_96 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_47 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_46 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_45 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_44 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_43 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_42 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_41 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_40 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_39 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_38 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_37 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_36 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_35 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_34 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_33 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_32 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_1 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_32 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_33 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_34 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_35 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_36 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_37 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_38 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_39 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_40 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_41 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_42 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_43 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_44 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_45 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_46 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_47 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_32 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_33 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_34 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_35 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_36 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_37 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_38 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_39 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_40 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_41 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_42 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_43 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_44 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_45 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_46 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_47 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_63 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_189 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_190 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_191 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_63 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_63 nS ( .in1(S), .out(n_S) );
  nand2_191 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_190 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_189 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_62 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_186 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_187 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_188 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_62 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_62 nS ( .in1(S), .out(n_S) );
  nand2_188 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_187 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_186 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_61 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_183 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_184 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_185 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_61 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_61 nS ( .in1(S), .out(n_S) );
  nand2_185 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_184 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_183 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_60 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_180 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_181 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_182 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_60 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_60 nS ( .in1(S), .out(n_S) );
  nand2_182 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_181 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_180 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_59 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_177 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_178 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_179 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_59 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_59 nS ( .in1(S), .out(n_S) );
  nand2_179 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_178 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_177 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_58 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_174 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_175 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_176 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_58 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_58 nS ( .in1(S), .out(n_S) );
  nand2_176 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_175 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_174 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_57 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_171 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_172 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_173 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_57 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_57 nS ( .in1(S), .out(n_S) );
  nand2_173 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_172 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_171 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_56 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_168 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_169 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_170 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_56 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_56 nS ( .in1(S), .out(n_S) );
  nand2_170 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_169 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_168 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_55 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_165 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_166 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_167 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_55 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_55 nS ( .in1(S), .out(n_S) );
  nand2_167 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_166 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_165 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_54 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_162 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_163 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_164 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_54 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_54 nS ( .in1(S), .out(n_S) );
  nand2_164 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_163 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_162 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_53 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_159 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_160 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_161 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_53 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_53 nS ( .in1(S), .out(n_S) );
  nand2_161 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_160 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_159 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_52 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_156 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_157 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_158 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_52 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_52 nS ( .in1(S), .out(n_S) );
  nand2_158 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_157 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_156 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_51 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_153 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_154 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_155 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_51 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_51 nS ( .in1(S), .out(n_S) );
  nand2_155 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_154 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_153 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_50 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_150 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_151 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_152 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_50 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_50 nS ( .in1(S), .out(n_S) );
  nand2_152 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_151 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_150 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_49 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_147 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_148 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_149 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_49 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_49 nS ( .in1(S), .out(n_S) );
  nand2_149 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_148 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_147 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_48 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_144 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_145 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_146 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_48 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_48 nS ( .in1(S), .out(n_S) );
  nand2_146 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_145 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_144 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_63 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_62 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_61 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_60 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_59 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_58 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_57 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_56 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_55 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_54 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_53 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_52 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_51 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_50 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_49 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_48 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_2 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_48 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_49 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_50 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_51 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_52 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_53 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_54 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_55 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_56 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_57 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_58 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_59 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_60 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_61 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_62 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_63 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_48 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_49 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_50 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_51 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_52 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_53 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_54 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_55 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_56 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_57 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_58 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_59 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_60 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_61 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_62 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_63 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_79 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_237 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_238 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_239 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_79 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_79 nS ( .in1(S), .out(n_S) );
  nand2_239 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_238 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_237 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_78 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_234 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_235 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_236 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_78 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_78 nS ( .in1(S), .out(n_S) );
  nand2_236 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_235 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_234 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_77 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_231 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_232 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_233 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_77 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_77 nS ( .in1(S), .out(n_S) );
  nand2_233 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_232 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_231 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_76 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_228 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_229 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_230 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_76 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_76 nS ( .in1(S), .out(n_S) );
  nand2_230 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_229 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_228 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_75 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_225 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_226 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_227 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_75 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_75 nS ( .in1(S), .out(n_S) );
  nand2_227 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_226 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_225 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_74 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_222 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_223 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_224 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_74 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_74 nS ( .in1(S), .out(n_S) );
  nand2_224 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_223 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_222 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_73 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_219 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_220 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_221 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_73 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_73 nS ( .in1(S), .out(n_S) );
  nand2_221 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_220 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_219 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_72 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_216 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_217 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_218 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_72 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_72 nS ( .in1(S), .out(n_S) );
  nand2_218 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_217 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_216 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_71 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_213 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_214 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_215 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_71 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_71 nS ( .in1(S), .out(n_S) );
  nand2_215 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_214 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_213 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_70 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_210 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_211 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_212 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_70 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_70 nS ( .in1(S), .out(n_S) );
  nand2_212 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_211 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_210 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_69 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_207 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_208 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_209 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_69 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_69 nS ( .in1(S), .out(n_S) );
  nand2_209 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_208 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_207 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_68 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_204 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_205 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_206 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_68 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_68 nS ( .in1(S), .out(n_S) );
  nand2_206 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_205 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_204 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_67 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_201 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_202 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_203 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_67 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_67 nS ( .in1(S), .out(n_S) );
  nand2_203 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_202 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_201 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_66 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_198 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_199 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_200 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_66 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_66 nS ( .in1(S), .out(n_S) );
  nand2_200 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_199 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_198 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_65 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_195 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_196 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_197 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_65 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_65 nS ( .in1(S), .out(n_S) );
  nand2_197 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_196 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_195 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_64 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_192 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_193 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_194 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_64 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_64 nS ( .in1(S), .out(n_S) );
  nand2_194 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_193 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_192 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_79 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_78 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_77 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_76 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_75 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_74 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_73 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_72 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_71 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_70 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_69 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_68 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_67 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_66 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_65 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_64 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_3 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_64 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_65 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_66 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_67 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_68 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_69 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_70 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_71 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_72 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_73 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_74 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_75 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_76 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_77 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_78 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_79 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_64 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_65 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_66 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_67 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_68 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_69 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_70 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_71 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_72 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_73 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_74 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_75 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_76 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_77 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_78 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_79 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_95 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_285 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_286 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_287 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_95 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_95 nS ( .in1(S), .out(n_S) );
  nand2_287 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_286 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_285 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_94 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_282 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_283 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_284 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_94 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_94 nS ( .in1(S), .out(n_S) );
  nand2_284 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_283 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_282 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_93 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_279 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_280 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_281 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_93 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_93 nS ( .in1(S), .out(n_S) );
  nand2_281 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_280 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_279 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_92 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_276 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_277 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_278 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_92 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_92 nS ( .in1(S), .out(n_S) );
  nand2_278 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_277 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_276 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_91 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_273 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_274 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_275 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_91 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_91 nS ( .in1(S), .out(n_S) );
  nand2_275 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_274 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_273 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_90 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_270 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_271 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_272 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_90 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_90 nS ( .in1(S), .out(n_S) );
  nand2_272 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_271 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_270 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_89 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_267 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_268 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_269 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_89 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_89 nS ( .in1(S), .out(n_S) );
  nand2_269 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_268 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_267 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_88 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_264 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_265 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_266 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_88 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_88 nS ( .in1(S), .out(n_S) );
  nand2_266 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_265 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_264 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_87 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_261 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_262 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_263 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_87 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_87 nS ( .in1(S), .out(n_S) );
  nand2_263 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_262 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_261 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_86 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_258 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_259 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_260 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_86 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_86 nS ( .in1(S), .out(n_S) );
  nand2_260 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_259 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_258 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_85 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_255 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_256 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_257 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_85 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_85 nS ( .in1(S), .out(n_S) );
  nand2_257 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_256 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_255 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_84 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_252 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_253 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_254 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_84 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_84 nS ( .in1(S), .out(n_S) );
  nand2_254 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_253 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_252 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_83 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_249 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_250 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_251 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_83 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_83 nS ( .in1(S), .out(n_S) );
  nand2_251 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_250 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_249 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_82 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_246 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_247 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_248 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_82 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_82 nS ( .in1(S), .out(n_S) );
  nand2_248 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_247 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_246 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_81 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_243 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_244 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_245 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_81 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_81 nS ( .in1(S), .out(n_S) );
  nand2_245 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_244 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_243 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_80 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_240 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_241 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_242 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_80 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_80 nS ( .in1(S), .out(n_S) );
  nand2_242 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_241 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_240 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_95 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_94 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_93 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_92 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_91 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_90 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_89 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_88 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_87 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_86 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_85 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_84 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_83 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_82 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_81 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_80 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_4 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_80 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_81 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_82 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_83 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_84 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_85 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_86 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_87 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_88 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_89 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_90 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_91 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_92 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_93 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_94 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_95 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_80 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_81 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_82 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_83 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_84 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_85 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_86 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_87 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_88 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_89 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_90 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst) );
  dff_91 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst) );
  dff_92 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst) );
  dff_93 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst) );
  dff_94 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst) );
  dff_95 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst) );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module not1_111 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_333 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_334 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_335 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_111 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_111 nS ( .in1(S), .out(n_S) );
  nand2_335 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_334 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_333 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_110 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_330 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_331 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_332 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_110 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_110 nS ( .in1(S), .out(n_S) );
  nand2_332 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_331 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_330 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_109 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_327 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_328 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_329 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_109 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_109 nS ( .in1(S), .out(n_S) );
  nand2_329 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_328 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_327 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_108 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_324 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_325 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_326 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_108 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_108 nS ( .in1(S), .out(n_S) );
  nand2_326 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_325 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_324 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_107 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_321 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_322 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_323 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_107 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_107 nS ( .in1(S), .out(n_S) );
  nand2_323 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_322 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_321 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_106 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_318 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_319 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_320 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_106 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_106 nS ( .in1(S), .out(n_S) );
  nand2_320 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_319 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_318 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_105 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_315 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_316 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_317 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_105 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_105 nS ( .in1(S), .out(n_S) );
  nand2_317 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_316 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_315 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_104 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_312 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_313 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_314 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_104 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_104 nS ( .in1(S), .out(n_S) );
  nand2_314 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_313 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_312 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_103 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_309 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_310 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_311 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_103 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_103 nS ( .in1(S), .out(n_S) );
  nand2_311 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_310 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_309 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_102 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_306 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_307 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_308 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_102 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_102 nS ( .in1(S), .out(n_S) );
  nand2_308 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_307 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_306 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_101 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_303 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_304 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_305 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_101 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_101 nS ( .in1(S), .out(n_S) );
  nand2_305 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_304 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_303 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_100 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_300 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_301 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_302 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_100 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_100 nS ( .in1(S), .out(n_S) );
  nand2_302 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_301 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_300 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_99 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_297 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_298 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_299 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_99 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_99 nS ( .in1(S), .out(n_S) );
  nand2_299 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_298 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_297 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_98 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_294 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_295 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_296 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_98 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_98 nS ( .in1(S), .out(n_S) );
  nand2_296 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_295 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_294 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_97 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_291 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_292 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_293 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_97 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_97 nS ( .in1(S), .out(n_S) );
  nand2_293 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_292 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_291 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module not1_96 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module nand2_288 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_289 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module nand2_290 ( in1, in2, out );
  input in1, in2;
  output out;
  wire   n2;

  AND2X1 U1 ( .A(in2), .B(in1), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(out) );
endmodule


module mux_2_1_96 ( InA, InB, S, Out );
  input InA, InB, S;
  output Out;
  wire   n_S, a_out, b_out;

  not1_96 nS ( .in1(S), .out(n_S) );
  nand2_290 A ( .in1(InA), .in2(n_S), .out(a_out) );
  nand2_289 B ( .in1(InB), .in2(S), .out(b_out) );
  nand2_288 C ( .in1(a_out), .in2(b_out), .out(Out) );
endmodule


module dff_111 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_110 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_109 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_108 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_107 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_106 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_105 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_104 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_103 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_102 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_101 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_100 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_99 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_98 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_97 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_96 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module register_WIDTH16_5 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), clk, rst, enable, .regvalue({
        \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> , 
        \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> , 
        \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> , 
        \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> }) );
  input \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> ,
         \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> ,
         \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> ,
         \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> , clk,
         rst, enable;
  output \regvalue<15> , \regvalue<14> , \regvalue<13> , \regvalue<12> ,
         \regvalue<11> , \regvalue<10> , \regvalue<9> , \regvalue<8> ,
         \regvalue<7> , \regvalue<6> , \regvalue<5> , \regvalue<4> ,
         \regvalue<3> , \regvalue<2> , \regvalue<1> , \regvalue<0> ;
  wire   \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , n1,
         n2;

  mux_2_1_96 \write_enable[0]  ( .InA(\regvalue<0> ), .InB(\writedata<0> ), 
        .S(n1), .Out(\d<0> ) );
  mux_2_1_97 \write_enable[1]  ( .InA(\regvalue<1> ), .InB(\writedata<1> ), 
        .S(n1), .Out(\d<1> ) );
  mux_2_1_98 \write_enable[2]  ( .InA(\regvalue<2> ), .InB(\writedata<2> ), 
        .S(n1), .Out(\d<2> ) );
  mux_2_1_99 \write_enable[3]  ( .InA(\regvalue<3> ), .InB(\writedata<3> ), 
        .S(n1), .Out(\d<3> ) );
  mux_2_1_100 \write_enable[4]  ( .InA(\regvalue<4> ), .InB(\writedata<4> ), 
        .S(n1), .Out(\d<4> ) );
  mux_2_1_101 \write_enable[5]  ( .InA(\regvalue<5> ), .InB(\writedata<5> ), 
        .S(n1), .Out(\d<5> ) );
  mux_2_1_102 \write_enable[6]  ( .InA(\regvalue<6> ), .InB(\writedata<6> ), 
        .S(n1), .Out(\d<6> ) );
  mux_2_1_103 \write_enable[7]  ( .InA(\regvalue<7> ), .InB(\writedata<7> ), 
        .S(n1), .Out(\d<7> ) );
  mux_2_1_104 \write_enable[8]  ( .InA(\regvalue<8> ), .InB(\writedata<8> ), 
        .S(n1), .Out(\d<8> ) );
  mux_2_1_105 \write_enable[9]  ( .InA(\regvalue<9> ), .InB(\writedata<9> ), 
        .S(n1), .Out(\d<9> ) );
  mux_2_1_106 \write_enable[10]  ( .InA(\regvalue<10> ), .InB(\writedata<10> ), 
        .S(n1), .Out(\d<10> ) );
  mux_2_1_107 \write_enable[11]  ( .InA(\regvalue<11> ), .InB(\writedata<11> ), 
        .S(n1), .Out(\d<11> ) );
  mux_2_1_108 \write_enable[12]  ( .InA(\regvalue<12> ), .InB(\writedata<12> ), 
        .S(n1), .Out(\d<12> ) );
  mux_2_1_109 \write_enable[13]  ( .InA(\regvalue<13> ), .InB(\writedata<13> ), 
        .S(n1), .Out(\d<13> ) );
  mux_2_1_110 \write_enable[14]  ( .InA(\regvalue<14> ), .InB(\writedata<14> ), 
        .S(n1), .Out(\d<14> ) );
  mux_2_1_111 \write_enable[15]  ( .InA(\regvalue<15> ), .InB(\writedata<15> ), 
        .S(n1), .Out(\d<15> ) );
  dff_96 \bits[0]  ( .q(\regvalue<0> ), .d(\d<0> ), .clk(clk), .rst(rst) );
  dff_97 \bits[1]  ( .q(\regvalue<1> ), .d(\d<1> ), .clk(clk), .rst(rst) );
  dff_98 \bits[2]  ( .q(\regvalue<2> ), .d(\d<2> ), .clk(clk), .rst(rst) );
  dff_99 \bits[3]  ( .q(\regvalue<3> ), .d(\d<3> ), .clk(clk), .rst(rst) );
  dff_100 \bits[4]  ( .q(\regvalue<4> ), .d(\d<4> ), .clk(clk), .rst(rst) );
  dff_101 \bits[5]  ( .q(\regvalue<5> ), .d(\d<5> ), .clk(clk), .rst(rst) );
  dff_102 \bits[6]  ( .q(\regvalue<6> ), .d(\d<6> ), .clk(clk), .rst(rst) );
  dff_103 \bits[7]  ( .q(\regvalue<7> ), .d(\d<7> ), .clk(clk), .rst(rst) );
  dff_104 \bits[8]  ( .q(\regvalue<8> ), .d(\d<8> ), .clk(clk), .rst(rst) );
  dff_105 \bits[9]  ( .q(\regvalue<9> ), .d(\d<9> ), .clk(clk), .rst(rst) );
  dff_106 \bits[10]  ( .q(\regvalue<10> ), .d(\d<10> ), .clk(clk), .rst(rst)
         );
  dff_107 \bits[11]  ( .q(\regvalue<11> ), .d(\d<11> ), .clk(clk), .rst(rst)
         );
  dff_108 \bits[12]  ( .q(\regvalue<12> ), .d(\d<12> ), .clk(clk), .rst(rst)
         );
  dff_109 \bits[13]  ( .q(\regvalue<13> ), .d(\d<13> ), .clk(clk), .rst(rst)
         );
  dff_110 \bits[14]  ( .q(\regvalue<14> ), .d(\d<14> ), .clk(clk), .rst(rst)
         );
  dff_111 \bits[15]  ( .q(\regvalue<15> ), .d(\d<15> ), .clk(clk), .rst(rst)
         );
  INVX1 U1 ( .A(enable), .Y(n2) );
  INVX2 U2 ( .A(n2), .Y(n1) );
endmodule


module rf ( .read1data({\read1data<15> , \read1data<14> , \read1data<13> , 
        \read1data<12> , \read1data<11> , \read1data<10> , \read1data<9> , 
        \read1data<8> , \read1data<7> , \read1data<6> , \read1data<5> , 
        \read1data<4> , \read1data<3> , \read1data<2> , \read1data<1> , 
        \read1data<0> }), .read2data({\read2data<15> , \read2data<14> , 
        \read2data<13> , \read2data<12> , \read2data<11> , \read2data<10> , 
        \read2data<9> , \read2data<8> , \read2data<7> , \read2data<6> , 
        \read2data<5> , \read2data<4> , \read2data<3> , \read2data<2> , 
        \read2data<1> , \read2data<0> }), err, clk, rst, .read1regsel({
        \read1regsel<2> , \read1regsel<1> , \read1regsel<0> }), .read2regsel({
        \read2regsel<2> , \read2regsel<1> , \read2regsel<0> }), .writeregsel({
        \writeregsel<2> , \writeregsel<1> , \writeregsel<0> }), .writedata({
        \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> , 
        \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> , 
        \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> , 
        \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> }), 
        write );
  input clk, rst, \read1regsel<2> , \read1regsel<1> , \read1regsel<0> ,
         \read2regsel<2> , \read2regsel<1> , \read2regsel<0> ,
         \writeregsel<2> , \writeregsel<1> , \writeregsel<0> , \writedata<15> ,
         \writedata<14> , \writedata<13> , \writedata<12> , \writedata<11> ,
         \writedata<10> , \writedata<9> , \writedata<8> , \writedata<7> ,
         \writedata<6> , \writedata<5> , \writedata<4> , \writedata<3> ,
         \writedata<2> , \writedata<1> , \writedata<0> , write;
  output \read1data<15> , \read1data<14> , \read1data<13> , \read1data<12> ,
         \read1data<11> , \read1data<10> , \read1data<9> , \read1data<8> ,
         \read1data<7> , \read1data<6> , \read1data<5> , \read1data<4> ,
         \read1data<3> , \read1data<2> , \read1data<1> , \read1data<0> ,
         \read2data<15> , \read2data<14> , \read2data<13> , \read2data<12> ,
         \read2data<11> , \read2data<10> , \read2data<9> , \read2data<8> ,
         \read2data<7> , \read2data<6> , \read2data<5> , \read2data<4> ,
         \read2data<3> , \read2data<2> , \read2data<1> , \read2data<0> , err;
  wire   n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         \regvalue_0<15> , \regvalue_0<14> , \regvalue_0<13> ,
         \regvalue_0<12> , \regvalue_0<11> , \regvalue_0<10> , \regvalue_0<9> ,
         \regvalue_0<8> , \regvalue_0<7> , \regvalue_0<6> , \regvalue_0<5> ,
         \regvalue_0<4> , \regvalue_0<3> , \regvalue_0<2> , \regvalue_0<1> ,
         \regvalue_0<0> , \regvalue_1<15> , \regvalue_1<14> , \regvalue_1<13> ,
         \regvalue_1<12> , \regvalue_1<11> , \regvalue_1<10> , \regvalue_1<9> ,
         \regvalue_1<8> , \regvalue_1<7> , \regvalue_1<6> , \regvalue_1<5> ,
         \regvalue_1<4> , \regvalue_1<3> , \regvalue_1<2> , \regvalue_1<1> ,
         \regvalue_1<0> , \regvalue_2<15> , \regvalue_2<14> , \regvalue_2<13> ,
         \regvalue_2<12> , \regvalue_2<11> , \regvalue_2<10> , \regvalue_2<9> ,
         \regvalue_2<8> , \regvalue_2<7> , \regvalue_2<6> , \regvalue_2<5> ,
         \regvalue_2<4> , \regvalue_2<3> , \regvalue_2<2> , \regvalue_2<1> ,
         \regvalue_2<0> , \regvalue_3<15> , \regvalue_3<14> , \regvalue_3<13> ,
         \regvalue_3<12> , \regvalue_3<11> , \regvalue_3<10> , \regvalue_3<9> ,
         \regvalue_3<8> , \regvalue_3<7> , \regvalue_3<6> , \regvalue_3<5> ,
         \regvalue_3<4> , \regvalue_3<3> , \regvalue_3<2> , \regvalue_3<1> ,
         \regvalue_3<0> , \regvalue_4<15> , \regvalue_4<14> , \regvalue_4<13> ,
         \regvalue_4<12> , \regvalue_4<11> , \regvalue_4<10> , \regvalue_4<9> ,
         \regvalue_4<8> , \regvalue_4<7> , \regvalue_4<6> , \regvalue_4<5> ,
         \regvalue_4<4> , \regvalue_4<3> , \regvalue_4<2> , \regvalue_4<1> ,
         \regvalue_4<0> , \regvalue_5<15> , \regvalue_5<14> , \regvalue_5<13> ,
         \regvalue_5<12> , \regvalue_5<11> , \regvalue_5<10> , \regvalue_5<9> ,
         \regvalue_5<8> , \regvalue_5<7> , \regvalue_5<6> , \regvalue_5<5> ,
         \regvalue_5<4> , \regvalue_5<3> , \regvalue_5<2> , \regvalue_5<1> ,
         \regvalue_5<0> , \regvalue_6<15> , \regvalue_6<14> , \regvalue_6<13> ,
         \regvalue_6<12> , \regvalue_6<11> , \regvalue_6<10> , \regvalue_6<9> ,
         \regvalue_6<8> , \regvalue_6<7> , \regvalue_6<6> , \regvalue_6<5> ,
         \regvalue_6<4> , \regvalue_6<3> , \regvalue_6<2> , \regvalue_6<1> ,
         \regvalue_6<0> , \regvalue_7<15> , \regvalue_7<14> , \regvalue_7<13> ,
         \regvalue_7<12> , \regvalue_7<11> , \regvalue_7<10> , \regvalue_7<9> ,
         \regvalue_7<8> , \regvalue_7<7> , \regvalue_7<6> , \regvalue_7<5> ,
         \regvalue_7<4> , \regvalue_7<3> , \regvalue_7<2> , \regvalue_7<1> ,
         \regvalue_7<0> , N96, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378;
  assign err = 1'b0;

  register_WIDTH16_7 ins0 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n200), 
        .regvalue({\regvalue_0<15> , \regvalue_0<14> , \regvalue_0<13> , 
        \regvalue_0<12> , \regvalue_0<11> , \regvalue_0<10> , \regvalue_0<9> , 
        \regvalue_0<8> , \regvalue_0<7> , \regvalue_0<6> , \regvalue_0<5> , 
        \regvalue_0<4> , \regvalue_0<3> , \regvalue_0<2> , \regvalue_0<1> , 
        \regvalue_0<0> }) );
  register_WIDTH16_6 ins1 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n199), 
        .regvalue({\regvalue_1<15> , \regvalue_1<14> , \regvalue_1<13> , 
        \regvalue_1<12> , \regvalue_1<11> , \regvalue_1<10> , \regvalue_1<9> , 
        \regvalue_1<8> , \regvalue_1<7> , \regvalue_1<6> , \regvalue_1<5> , 
        \regvalue_1<4> , \regvalue_1<3> , \regvalue_1<2> , \regvalue_1<1> , 
        \regvalue_1<0> }) );
  register_WIDTH16_5 ins2 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n198), 
        .regvalue({\regvalue_2<15> , \regvalue_2<14> , \regvalue_2<13> , 
        \regvalue_2<12> , \regvalue_2<11> , \regvalue_2<10> , \regvalue_2<9> , 
        \regvalue_2<8> , \regvalue_2<7> , \regvalue_2<6> , \regvalue_2<5> , 
        \regvalue_2<4> , \regvalue_2<3> , \regvalue_2<2> , \regvalue_2<1> , 
        \regvalue_2<0> }) );
  register_WIDTH16_4 ins3 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n197), 
        .regvalue({\regvalue_3<15> , \regvalue_3<14> , \regvalue_3<13> , 
        \regvalue_3<12> , \regvalue_3<11> , \regvalue_3<10> , \regvalue_3<9> , 
        \regvalue_3<8> , \regvalue_3<7> , \regvalue_3<6> , \regvalue_3<5> , 
        \regvalue_3<4> , \regvalue_3<3> , \regvalue_3<2> , \regvalue_3<1> , 
        \regvalue_3<0> }) );
  register_WIDTH16_3 ins4 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n196), 
        .regvalue({\regvalue_4<15> , \regvalue_4<14> , \regvalue_4<13> , 
        \regvalue_4<12> , \regvalue_4<11> , \regvalue_4<10> , \regvalue_4<9> , 
        \regvalue_4<8> , \regvalue_4<7> , \regvalue_4<6> , \regvalue_4<5> , 
        \regvalue_4<4> , \regvalue_4<3> , \regvalue_4<2> , \regvalue_4<1> , 
        \regvalue_4<0> }) );
  register_WIDTH16_2 ins5 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n195), 
        .regvalue({\regvalue_5<15> , \regvalue_5<14> , \regvalue_5<13> , 
        \regvalue_5<12> , \regvalue_5<11> , \regvalue_5<10> , \regvalue_5<9> , 
        \regvalue_5<8> , \regvalue_5<7> , \regvalue_5<6> , \regvalue_5<5> , 
        \regvalue_5<4> , \regvalue_5<3> , \regvalue_5<2> , \regvalue_5<1> , 
        \regvalue_5<0> }) );
  register_WIDTH16_1 ins6 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(n194), 
        .regvalue({\regvalue_6<15> , \regvalue_6<14> , \regvalue_6<13> , 
        \regvalue_6<12> , \regvalue_6<11> , \regvalue_6<10> , \regvalue_6<9> , 
        \regvalue_6<8> , \regvalue_6<7> , \regvalue_6<6> , \regvalue_6<5> , 
        \regvalue_6<4> , \regvalue_6<3> , \regvalue_6<2> , \regvalue_6<1> , 
        \regvalue_6<0> }) );
  register_WIDTH16_0 ins7 ( .writedata({\writedata<15> , \writedata<14> , 
        \writedata<13> , \writedata<12> , \writedata<11> , \writedata<10> , 
        \writedata<9> , \writedata<8> , \writedata<7> , \writedata<6> , 
        \writedata<5> , \writedata<4> , \writedata<3> , \writedata<2> , 
        \writedata<1> , \writedata<0> }), .clk(clk), .rst(rst), .enable(N96), 
        .regvalue({\regvalue_7<15> , \regvalue_7<14> , \regvalue_7<13> , 
        \regvalue_7<12> , \regvalue_7<11> , \regvalue_7<10> , \regvalue_7<9> , 
        \regvalue_7<8> , \regvalue_7<7> , \regvalue_7<6> , \regvalue_7<5> , 
        \regvalue_7<4> , \regvalue_7<3> , \regvalue_7<2> , \regvalue_7<1> , 
        \regvalue_7<0> }) );
  NAND3X1 U48 ( .A(n328), .B(n360), .C(n18), .Y(n401) );
  AOI22X1 U49 ( .A(\regvalue_7<9> ), .B(n8), .C(\regvalue_6<9> ), .D(n7), .Y(
        n20) );
  AOI22X1 U50 ( .A(\regvalue_5<9> ), .B(n10), .C(\regvalue_4<9> ), .D(n9), .Y(
        n19) );
  AOI22X1 U51 ( .A(\regvalue_3<9> ), .B(n377), .C(\regvalue_2<9> ), .D(n378), 
        .Y(n17) );
  AOI22X1 U52 ( .A(\regvalue_1<9> ), .B(n375), .C(\regvalue_0<9> ), .D(n376), 
        .Y(n16) );
  NAND3X1 U53 ( .A(n327), .B(n359), .C(n27), .Y(n402) );
  AOI22X1 U54 ( .A(\regvalue_7<8> ), .B(n8), .C(\regvalue_6<8> ), .D(n7), .Y(
        n29) );
  AOI22X1 U55 ( .A(\regvalue_5<8> ), .B(n10), .C(\regvalue_4<8> ), .D(n9), .Y(
        n28) );
  AOI22X1 U56 ( .A(\regvalue_3<8> ), .B(n377), .C(\regvalue_2<8> ), .D(n378), 
        .Y(n26) );
  AOI22X1 U57 ( .A(\regvalue_1<8> ), .B(n375), .C(\regvalue_0<8> ), .D(n376), 
        .Y(n25) );
  NAND3X1 U58 ( .A(n326), .B(n358), .C(n32), .Y(n403) );
  AOI22X1 U59 ( .A(\regvalue_7<7> ), .B(n8), .C(\regvalue_6<7> ), .D(n7), .Y(
        n34) );
  AOI22X1 U60 ( .A(\regvalue_5<7> ), .B(n10), .C(\regvalue_4<7> ), .D(n9), .Y(
        n33) );
  AOI22X1 U61 ( .A(\regvalue_3<7> ), .B(n377), .C(\regvalue_2<7> ), .D(n378), 
        .Y(n31) );
  AOI22X1 U62 ( .A(\regvalue_1<7> ), .B(n375), .C(\regvalue_0<7> ), .D(n376), 
        .Y(n30) );
  NAND3X1 U63 ( .A(n325), .B(n357), .C(n37), .Y(n404) );
  AOI22X1 U64 ( .A(\regvalue_7<6> ), .B(n8), .C(\regvalue_6<6> ), .D(n7), .Y(
        n39) );
  AOI22X1 U65 ( .A(\regvalue_5<6> ), .B(n10), .C(\regvalue_4<6> ), .D(n9), .Y(
        n38) );
  AOI22X1 U66 ( .A(\regvalue_3<6> ), .B(n377), .C(\regvalue_2<6> ), .D(n378), 
        .Y(n36) );
  AOI22X1 U67 ( .A(\regvalue_1<6> ), .B(n375), .C(\regvalue_0<6> ), .D(n376), 
        .Y(n35) );
  NAND3X1 U68 ( .A(n324), .B(n356), .C(n42), .Y(n405) );
  AOI22X1 U69 ( .A(\regvalue_7<5> ), .B(n8), .C(\regvalue_6<5> ), .D(n7), .Y(
        n44) );
  AOI22X1 U70 ( .A(\regvalue_5<5> ), .B(n10), .C(\regvalue_4<5> ), .D(n9), .Y(
        n43) );
  AOI22X1 U71 ( .A(\regvalue_3<5> ), .B(n377), .C(\regvalue_2<5> ), .D(n378), 
        .Y(n41) );
  AOI22X1 U72 ( .A(\regvalue_1<5> ), .B(n375), .C(\regvalue_0<5> ), .D(n376), 
        .Y(n40) );
  NAND3X1 U73 ( .A(n323), .B(n355), .C(n47), .Y(n406) );
  AOI22X1 U74 ( .A(\regvalue_7<4> ), .B(n8), .C(\regvalue_6<4> ), .D(n7), .Y(
        n49) );
  AOI22X1 U75 ( .A(\regvalue_5<4> ), .B(n10), .C(\regvalue_4<4> ), .D(n9), .Y(
        n48) );
  AOI22X1 U76 ( .A(\regvalue_3<4> ), .B(n377), .C(\regvalue_2<4> ), .D(n378), 
        .Y(n46) );
  AOI22X1 U77 ( .A(\regvalue_1<4> ), .B(n375), .C(\regvalue_0<4> ), .D(n376), 
        .Y(n45) );
  NAND3X1 U78 ( .A(n322), .B(n354), .C(n52), .Y(n407) );
  AOI22X1 U79 ( .A(\regvalue_7<3> ), .B(n8), .C(\regvalue_6<3> ), .D(n7), .Y(
        n54) );
  AOI22X1 U80 ( .A(\regvalue_5<3> ), .B(n10), .C(\regvalue_4<3> ), .D(n9), .Y(
        n53) );
  AOI22X1 U81 ( .A(\regvalue_3<3> ), .B(n377), .C(\regvalue_2<3> ), .D(n378), 
        .Y(n51) );
  AOI22X1 U82 ( .A(\regvalue_1<3> ), .B(n375), .C(\regvalue_0<3> ), .D(n376), 
        .Y(n50) );
  NAND3X1 U83 ( .A(n321), .B(n353), .C(n57), .Y(n408) );
  AOI22X1 U84 ( .A(\regvalue_7<2> ), .B(n8), .C(\regvalue_6<2> ), .D(n7), .Y(
        n59) );
  AOI22X1 U85 ( .A(\regvalue_5<2> ), .B(n10), .C(\regvalue_4<2> ), .D(n9), .Y(
        n58) );
  AOI22X1 U86 ( .A(\regvalue_3<2> ), .B(n377), .C(\regvalue_2<2> ), .D(n378), 
        .Y(n56) );
  AOI22X1 U87 ( .A(\regvalue_1<2> ), .B(n375), .C(\regvalue_0<2> ), .D(n376), 
        .Y(n55) );
  NAND3X1 U88 ( .A(n320), .B(n352), .C(n62), .Y(n409) );
  AOI22X1 U89 ( .A(\regvalue_7<1> ), .B(n8), .C(\regvalue_6<1> ), .D(n7), .Y(
        n64) );
  AOI22X1 U90 ( .A(\regvalue_5<1> ), .B(n10), .C(\regvalue_4<1> ), .D(n9), .Y(
        n63) );
  AOI22X1 U91 ( .A(\regvalue_3<1> ), .B(n377), .C(\regvalue_2<1> ), .D(n378), 
        .Y(n61) );
  AOI22X1 U92 ( .A(\regvalue_1<1> ), .B(n375), .C(\regvalue_0<1> ), .D(n376), 
        .Y(n60) );
  NAND3X1 U93 ( .A(n319), .B(n351), .C(n67), .Y(n395) );
  AOI22X1 U94 ( .A(\regvalue_7<15> ), .B(n8), .C(\regvalue_6<15> ), .D(n7), 
        .Y(n69) );
  AOI22X1 U95 ( .A(\regvalue_5<15> ), .B(n10), .C(\regvalue_4<15> ), .D(n9), 
        .Y(n68) );
  AOI22X1 U96 ( .A(\regvalue_3<15> ), .B(n377), .C(\regvalue_2<15> ), .D(n378), 
        .Y(n66) );
  AOI22X1 U97 ( .A(\regvalue_1<15> ), .B(n375), .C(\regvalue_0<15> ), .D(n376), 
        .Y(n65) );
  NAND3X1 U98 ( .A(n318), .B(n350), .C(n72), .Y(n396) );
  AOI22X1 U99 ( .A(\regvalue_7<14> ), .B(n8), .C(\regvalue_6<14> ), .D(n7), 
        .Y(n74) );
  AOI22X1 U100 ( .A(\regvalue_5<14> ), .B(n10), .C(\regvalue_4<14> ), .D(n9), 
        .Y(n73) );
  AOI22X1 U101 ( .A(\regvalue_3<14> ), .B(n377), .C(\regvalue_2<14> ), .D(n378), .Y(n71) );
  AOI22X1 U102 ( .A(\regvalue_1<14> ), .B(n375), .C(\regvalue_0<14> ), .D(n376), .Y(n70) );
  NAND3X1 U103 ( .A(n317), .B(n349), .C(n77), .Y(n397) );
  AOI22X1 U104 ( .A(\regvalue_7<13> ), .B(n8), .C(\regvalue_6<13> ), .D(n7), 
        .Y(n79) );
  AOI22X1 U105 ( .A(\regvalue_5<13> ), .B(n10), .C(\regvalue_4<13> ), .D(n9), 
        .Y(n78) );
  AOI22X1 U106 ( .A(\regvalue_3<13> ), .B(n377), .C(\regvalue_2<13> ), .D(n378), .Y(n76) );
  AOI22X1 U107 ( .A(\regvalue_1<13> ), .B(n375), .C(\regvalue_0<13> ), .D(n376), .Y(n75) );
  NAND3X1 U108 ( .A(n316), .B(n348), .C(n82), .Y(n398) );
  AOI22X1 U109 ( .A(\regvalue_7<12> ), .B(n8), .C(\regvalue_6<12> ), .D(n7), 
        .Y(n84) );
  AOI22X1 U110 ( .A(\regvalue_5<12> ), .B(n10), .C(\regvalue_4<12> ), .D(n9), 
        .Y(n83) );
  AOI22X1 U111 ( .A(\regvalue_3<12> ), .B(n377), .C(\regvalue_2<12> ), .D(n378), .Y(n81) );
  AOI22X1 U112 ( .A(\regvalue_1<12> ), .B(n375), .C(\regvalue_0<12> ), .D(n376), .Y(n80) );
  NAND3X1 U113 ( .A(n315), .B(n347), .C(n87), .Y(n399) );
  AOI22X1 U114 ( .A(\regvalue_7<11> ), .B(n8), .C(\regvalue_6<11> ), .D(n7), 
        .Y(n89) );
  AOI22X1 U115 ( .A(\regvalue_5<11> ), .B(n10), .C(\regvalue_4<11> ), .D(n9), 
        .Y(n88) );
  AOI22X1 U116 ( .A(\regvalue_3<11> ), .B(n377), .C(\regvalue_2<11> ), .D(n378), .Y(n86) );
  AOI22X1 U117 ( .A(\regvalue_1<11> ), .B(n375), .C(\regvalue_0<11> ), .D(n376), .Y(n85) );
  NAND3X1 U118 ( .A(n314), .B(n346), .C(n92), .Y(n400) );
  AOI22X1 U119 ( .A(\regvalue_7<10> ), .B(n8), .C(\regvalue_6<10> ), .D(n7), 
        .Y(n94) );
  AOI22X1 U120 ( .A(\regvalue_5<10> ), .B(n10), .C(\regvalue_4<10> ), .D(n9), 
        .Y(n93) );
  AOI22X1 U121 ( .A(\regvalue_3<10> ), .B(n377), .C(\regvalue_2<10> ), .D(n378), .Y(n91) );
  AOI22X1 U122 ( .A(\regvalue_1<10> ), .B(n375), .C(\regvalue_0<10> ), .D(n376), .Y(n90) );
  NAND3X1 U123 ( .A(n313), .B(n345), .C(n97), .Y(n410) );
  AOI22X1 U124 ( .A(\regvalue_7<0> ), .B(n8), .C(\regvalue_6<0> ), .D(n7), .Y(
        n99) );
  NAND3X1 U125 ( .A(\read2regsel<1> ), .B(n12), .C(\read2regsel<2> ), .Y(n100)
         );
  NAND3X1 U126 ( .A(\read2regsel<1> ), .B(\read2regsel<0> ), .C(
        \read2regsel<2> ), .Y(n101) );
  AOI22X1 U127 ( .A(\regvalue_5<0> ), .B(n10), .C(\regvalue_4<0> ), .D(n9), 
        .Y(n98) );
  NAND3X1 U128 ( .A(n12), .B(n11), .C(\read2regsel<2> ), .Y(n102) );
  NAND3X1 U129 ( .A(\read2regsel<0> ), .B(n11), .C(\read2regsel<2> ), .Y(n103)
         );
  AOI22X1 U130 ( .A(\regvalue_3<0> ), .B(n377), .C(\regvalue_2<0> ), .D(n378), 
        .Y(n96) );
  NOR3X1 U131 ( .A(\read2regsel<0> ), .B(\read2regsel<2> ), .C(n11), .Y(n22)
         );
  NOR3X1 U132 ( .A(n12), .B(\read2regsel<2> ), .C(n11), .Y(n21) );
  AOI22X1 U133 ( .A(\regvalue_1<0> ), .B(n375), .C(\regvalue_0<0> ), .D(n376), 
        .Y(n95) );
  NOR3X1 U134 ( .A(\read2regsel<1> ), .B(\read2regsel<2> ), .C(
        \read2regsel<0> ), .Y(n24) );
  NOR3X1 U135 ( .A(\read2regsel<1> ), .B(\read2regsel<2> ), .C(n12), .Y(n23)
         );
  NAND3X1 U136 ( .A(n312), .B(n344), .C(n106), .Y(n385) );
  AOI22X1 U137 ( .A(n2), .B(\regvalue_7<9> ), .C(n1), .D(\regvalue_6<9> ), .Y(
        n108) );
  AOI22X1 U138 ( .A(n4), .B(\regvalue_5<9> ), .C(n3), .D(\regvalue_4<9> ), .Y(
        n107) );
  AOI22X1 U139 ( .A(n373), .B(\regvalue_3<9> ), .C(n374), .D(\regvalue_2<9> ), 
        .Y(n105) );
  AOI22X1 U140 ( .A(n371), .B(\regvalue_1<9> ), .C(n372), .D(\regvalue_0<9> ), 
        .Y(n104) );
  NAND3X1 U141 ( .A(n311), .B(n343), .C(n115), .Y(n386) );
  AOI22X1 U142 ( .A(n2), .B(\regvalue_7<8> ), .C(n1), .D(\regvalue_6<8> ), .Y(
        n117) );
  AOI22X1 U143 ( .A(n4), .B(\regvalue_5<8> ), .C(n3), .D(\regvalue_4<8> ), .Y(
        n116) );
  AOI22X1 U144 ( .A(n373), .B(\regvalue_3<8> ), .C(n374), .D(\regvalue_2<8> ), 
        .Y(n114) );
  AOI22X1 U145 ( .A(n371), .B(\regvalue_1<8> ), .C(n372), .D(\regvalue_0<8> ), 
        .Y(n113) );
  NAND3X1 U146 ( .A(n310), .B(n342), .C(n120), .Y(n387) );
  AOI22X1 U147 ( .A(n2), .B(\regvalue_7<7> ), .C(n1), .D(\regvalue_6<7> ), .Y(
        n122) );
  AOI22X1 U148 ( .A(n4), .B(\regvalue_5<7> ), .C(n3), .D(\regvalue_4<7> ), .Y(
        n121) );
  AOI22X1 U149 ( .A(n373), .B(\regvalue_3<7> ), .C(n374), .D(\regvalue_2<7> ), 
        .Y(n119) );
  AOI22X1 U150 ( .A(n371), .B(\regvalue_1<7> ), .C(n372), .D(\regvalue_0<7> ), 
        .Y(n118) );
  NAND3X1 U151 ( .A(n309), .B(n341), .C(n125), .Y(n388) );
  AOI22X1 U152 ( .A(n2), .B(\regvalue_7<6> ), .C(n1), .D(\regvalue_6<6> ), .Y(
        n127) );
  AOI22X1 U153 ( .A(n4), .B(\regvalue_5<6> ), .C(n3), .D(\regvalue_4<6> ), .Y(
        n126) );
  AOI22X1 U154 ( .A(n373), .B(\regvalue_3<6> ), .C(n374), .D(\regvalue_2<6> ), 
        .Y(n124) );
  AOI22X1 U155 ( .A(n371), .B(\regvalue_1<6> ), .C(n372), .D(\regvalue_0<6> ), 
        .Y(n123) );
  NAND3X1 U156 ( .A(n308), .B(n340), .C(n130), .Y(n389) );
  AOI22X1 U157 ( .A(n2), .B(\regvalue_7<5> ), .C(n1), .D(\regvalue_6<5> ), .Y(
        n132) );
  AOI22X1 U158 ( .A(n4), .B(\regvalue_5<5> ), .C(n3), .D(\regvalue_4<5> ), .Y(
        n131) );
  AOI22X1 U159 ( .A(n373), .B(\regvalue_3<5> ), .C(n374), .D(\regvalue_2<5> ), 
        .Y(n129) );
  AOI22X1 U160 ( .A(n371), .B(\regvalue_1<5> ), .C(n372), .D(\regvalue_0<5> ), 
        .Y(n128) );
  NAND3X1 U161 ( .A(n307), .B(n339), .C(n135), .Y(n390) );
  AOI22X1 U162 ( .A(n2), .B(\regvalue_7<4> ), .C(n1), .D(\regvalue_6<4> ), .Y(
        n137) );
  AOI22X1 U163 ( .A(n4), .B(\regvalue_5<4> ), .C(n3), .D(\regvalue_4<4> ), .Y(
        n136) );
  AOI22X1 U164 ( .A(n373), .B(\regvalue_3<4> ), .C(n374), .D(\regvalue_2<4> ), 
        .Y(n134) );
  AOI22X1 U165 ( .A(n371), .B(\regvalue_1<4> ), .C(n372), .D(\regvalue_0<4> ), 
        .Y(n133) );
  NAND3X1 U166 ( .A(n306), .B(n338), .C(n140), .Y(n391) );
  AOI22X1 U167 ( .A(n2), .B(\regvalue_7<3> ), .C(n1), .D(\regvalue_6<3> ), .Y(
        n142) );
  AOI22X1 U168 ( .A(n4), .B(\regvalue_5<3> ), .C(n3), .D(\regvalue_4<3> ), .Y(
        n141) );
  AOI22X1 U169 ( .A(n373), .B(\regvalue_3<3> ), .C(n374), .D(\regvalue_2<3> ), 
        .Y(n139) );
  AOI22X1 U170 ( .A(n371), .B(\regvalue_1<3> ), .C(n372), .D(\regvalue_0<3> ), 
        .Y(n138) );
  NAND3X1 U171 ( .A(n305), .B(n337), .C(n145), .Y(n392) );
  AOI22X1 U172 ( .A(n2), .B(\regvalue_7<2> ), .C(n1), .D(\regvalue_6<2> ), .Y(
        n147) );
  AOI22X1 U173 ( .A(n4), .B(\regvalue_5<2> ), .C(n3), .D(\regvalue_4<2> ), .Y(
        n146) );
  AOI22X1 U174 ( .A(n373), .B(\regvalue_3<2> ), .C(n374), .D(\regvalue_2<2> ), 
        .Y(n144) );
  AOI22X1 U175 ( .A(n371), .B(\regvalue_1<2> ), .C(n372), .D(\regvalue_0<2> ), 
        .Y(n143) );
  NAND3X1 U176 ( .A(n304), .B(n336), .C(n150), .Y(n393) );
  AOI22X1 U177 ( .A(n2), .B(\regvalue_7<1> ), .C(n1), .D(\regvalue_6<1> ), .Y(
        n152) );
  AOI22X1 U178 ( .A(n4), .B(\regvalue_5<1> ), .C(n3), .D(\regvalue_4<1> ), .Y(
        n151) );
  AOI22X1 U179 ( .A(n373), .B(\regvalue_3<1> ), .C(n374), .D(\regvalue_2<1> ), 
        .Y(n149) );
  AOI22X1 U180 ( .A(n371), .B(\regvalue_1<1> ), .C(n372), .D(\regvalue_0<1> ), 
        .Y(n148) );
  NAND3X1 U181 ( .A(n303), .B(n335), .C(n155), .Y(n379) );
  AOI22X1 U182 ( .A(n2), .B(\regvalue_7<15> ), .C(n1), .D(\regvalue_6<15> ), 
        .Y(n157) );
  AOI22X1 U183 ( .A(n4), .B(\regvalue_5<15> ), .C(n3), .D(\regvalue_4<15> ), 
        .Y(n156) );
  AOI22X1 U184 ( .A(n373), .B(\regvalue_3<15> ), .C(n374), .D(\regvalue_2<15> ), .Y(n154) );
  AOI22X1 U185 ( .A(n371), .B(\regvalue_1<15> ), .C(n372), .D(\regvalue_0<15> ), .Y(n153) );
  NAND3X1 U186 ( .A(n302), .B(n334), .C(n160), .Y(n380) );
  AOI22X1 U187 ( .A(n2), .B(\regvalue_7<14> ), .C(n1), .D(\regvalue_6<14> ), 
        .Y(n162) );
  AOI22X1 U188 ( .A(n4), .B(\regvalue_5<14> ), .C(n3), .D(\regvalue_4<14> ), 
        .Y(n161) );
  AOI22X1 U189 ( .A(n373), .B(\regvalue_3<14> ), .C(n374), .D(\regvalue_2<14> ), .Y(n159) );
  AOI22X1 U190 ( .A(n371), .B(\regvalue_1<14> ), .C(n372), .D(\regvalue_0<14> ), .Y(n158) );
  NAND3X1 U191 ( .A(n301), .B(n333), .C(n165), .Y(n381) );
  AOI22X1 U192 ( .A(n2), .B(\regvalue_7<13> ), .C(n1), .D(\regvalue_6<13> ), 
        .Y(n167) );
  AOI22X1 U193 ( .A(n4), .B(\regvalue_5<13> ), .C(n3), .D(\regvalue_4<13> ), 
        .Y(n166) );
  AOI22X1 U194 ( .A(n373), .B(\regvalue_3<13> ), .C(n374), .D(\regvalue_2<13> ), .Y(n164) );
  AOI22X1 U195 ( .A(n371), .B(\regvalue_1<13> ), .C(n372), .D(\regvalue_0<13> ), .Y(n163) );
  NAND3X1 U196 ( .A(n300), .B(n332), .C(n170), .Y(n382) );
  AOI22X1 U197 ( .A(n2), .B(\regvalue_7<12> ), .C(n1), .D(\regvalue_6<12> ), 
        .Y(n172) );
  AOI22X1 U198 ( .A(n4), .B(\regvalue_5<12> ), .C(n3), .D(\regvalue_4<12> ), 
        .Y(n171) );
  AOI22X1 U199 ( .A(n373), .B(\regvalue_3<12> ), .C(n374), .D(\regvalue_2<12> ), .Y(n169) );
  AOI22X1 U200 ( .A(n371), .B(\regvalue_1<12> ), .C(n372), .D(\regvalue_0<12> ), .Y(n168) );
  NAND3X1 U201 ( .A(n299), .B(n331), .C(n175), .Y(n383) );
  AOI22X1 U202 ( .A(n2), .B(\regvalue_7<11> ), .C(n1), .D(\regvalue_6<11> ), 
        .Y(n177) );
  AOI22X1 U203 ( .A(n4), .B(\regvalue_5<11> ), .C(n3), .D(\regvalue_4<11> ), 
        .Y(n176) );
  AOI22X1 U204 ( .A(n373), .B(\regvalue_3<11> ), .C(n374), .D(\regvalue_2<11> ), .Y(n174) );
  AOI22X1 U205 ( .A(n371), .B(\regvalue_1<11> ), .C(n372), .D(\regvalue_0<11> ), .Y(n173) );
  NAND3X1 U206 ( .A(n298), .B(n330), .C(n180), .Y(n384) );
  AOI22X1 U207 ( .A(n2), .B(\regvalue_7<10> ), .C(n1), .D(\regvalue_6<10> ), 
        .Y(n182) );
  AOI22X1 U208 ( .A(n4), .B(\regvalue_5<10> ), .C(n3), .D(\regvalue_4<10> ), 
        .Y(n181) );
  AOI22X1 U209 ( .A(n373), .B(\regvalue_3<10> ), .C(n374), .D(\regvalue_2<10> ), .Y(n179) );
  AOI22X1 U210 ( .A(n371), .B(\regvalue_1<10> ), .C(n372), .D(\regvalue_0<10> ), .Y(n178) );
  NAND3X1 U211 ( .A(n297), .B(n329), .C(n185), .Y(n394) );
  AOI22X1 U212 ( .A(n2), .B(\regvalue_7<0> ), .C(n1), .D(\regvalue_6<0> ), .Y(
        n187) );
  NAND3X1 U213 ( .A(\read1regsel<1> ), .B(n6), .C(\read1regsel<2> ), .Y(n188)
         );
  NAND3X1 U214 ( .A(\read1regsel<1> ), .B(\read1regsel<0> ), .C(
        \read1regsel<2> ), .Y(n189) );
  AOI22X1 U215 ( .A(n4), .B(\regvalue_5<0> ), .C(n3), .D(\regvalue_4<0> ), .Y(
        n186) );
  NAND3X1 U216 ( .A(n6), .B(n5), .C(\read1regsel<2> ), .Y(n190) );
  NAND3X1 U217 ( .A(\read1regsel<0> ), .B(n5), .C(\read1regsel<2> ), .Y(n191)
         );
  AOI22X1 U218 ( .A(n373), .B(\regvalue_3<0> ), .C(n374), .D(\regvalue_2<0> ), 
        .Y(n184) );
  NOR3X1 U219 ( .A(\read1regsel<0> ), .B(\read1regsel<2> ), .C(n5), .Y(n110)
         );
  NOR3X1 U220 ( .A(n6), .B(\read1regsel<2> ), .C(n5), .Y(n109) );
  AOI22X1 U221 ( .A(n371), .B(\regvalue_1<0> ), .C(n372), .D(\regvalue_0<0> ), 
        .Y(n183) );
  NOR3X1 U222 ( .A(\read1regsel<1> ), .B(\read1regsel<2> ), .C(
        \read1regsel<0> ), .Y(n112) );
  NOR3X1 U223 ( .A(\read1regsel<1> ), .B(\read1regsel<2> ), .C(n6), .Y(n111)
         );
  NOR3X1 U224 ( .A(n14), .B(\writeregsel<0> ), .C(n370), .Y(n194) );
  NOR3X1 U225 ( .A(n15), .B(\writeregsel<1> ), .C(n370), .Y(n195) );
  NOR3X1 U226 ( .A(n370), .B(\writeregsel<1> ), .C(\writeregsel<0> ), .Y(n196)
         );
  NOR3X1 U227 ( .A(n369), .B(n14), .C(n15), .Y(n197) );
  NOR3X1 U228 ( .A(n369), .B(\writeregsel<0> ), .C(n14), .Y(n198) );
  NOR3X1 U229 ( .A(n369), .B(\writeregsel<1> ), .C(n15), .Y(n199) );
  NOR3X1 U230 ( .A(n369), .B(\writeregsel<1> ), .C(\writeregsel<0> ), .Y(n200)
         );
  NOR3X1 U232 ( .A(n15), .B(n370), .C(n14), .Y(N96) );
  BUFX2 U1 ( .A(n22), .Y(n378) );
  BUFX2 U2 ( .A(n24), .Y(n376) );
  BUFX2 U3 ( .A(n110), .Y(n374) );
  BUFX2 U4 ( .A(n112), .Y(n372) );
  INVX1 U5 ( .A(\writeregsel<0> ), .Y(n15) );
  INVX1 U6 ( .A(\writeregsel<1> ), .Y(n14) );
  INVX1 U7 ( .A(\writeregsel<2> ), .Y(n13) );
  BUFX2 U8 ( .A(n111), .Y(n371) );
  BUFX2 U9 ( .A(n109), .Y(n373) );
  BUFX2 U10 ( .A(n23), .Y(n375) );
  BUFX2 U11 ( .A(n21), .Y(n377) );
  INVX1 U12 ( .A(\read1regsel<1> ), .Y(n5) );
  INVX1 U13 ( .A(\read1regsel<0> ), .Y(n6) );
  AND2X1 U14 ( .A(n201), .B(n233), .Y(n185) );
  AND2X1 U15 ( .A(n202), .B(n234), .Y(n180) );
  AND2X1 U16 ( .A(n203), .B(n235), .Y(n175) );
  AND2X1 U17 ( .A(n204), .B(n236), .Y(n170) );
  AND2X1 U18 ( .A(n205), .B(n237), .Y(n165) );
  AND2X1 U19 ( .A(n206), .B(n238), .Y(n160) );
  AND2X1 U20 ( .A(n207), .B(n239), .Y(n155) );
  AND2X1 U21 ( .A(n208), .B(n240), .Y(n150) );
  AND2X1 U22 ( .A(n209), .B(n241), .Y(n145) );
  AND2X1 U23 ( .A(n210), .B(n242), .Y(n140) );
  AND2X1 U24 ( .A(n211), .B(n243), .Y(n135) );
  AND2X1 U25 ( .A(n212), .B(n244), .Y(n130) );
  AND2X1 U26 ( .A(n213), .B(n245), .Y(n125) );
  AND2X1 U27 ( .A(n214), .B(n246), .Y(n120) );
  AND2X1 U28 ( .A(n215), .B(n247), .Y(n115) );
  AND2X1 U29 ( .A(n216), .B(n248), .Y(n106) );
  INVX1 U30 ( .A(\read2regsel<1> ), .Y(n11) );
  INVX1 U31 ( .A(\read2regsel<0> ), .Y(n12) );
  AND2X1 U32 ( .A(n217), .B(n249), .Y(n97) );
  AND2X1 U33 ( .A(n218), .B(n250), .Y(n92) );
  AND2X1 U34 ( .A(n219), .B(n251), .Y(n87) );
  AND2X1 U35 ( .A(n220), .B(n252), .Y(n82) );
  AND2X1 U36 ( .A(n221), .B(n253), .Y(n77) );
  AND2X1 U37 ( .A(n222), .B(n254), .Y(n72) );
  AND2X1 U38 ( .A(n223), .B(n255), .Y(n67) );
  AND2X1 U39 ( .A(n224), .B(n256), .Y(n62) );
  AND2X1 U40 ( .A(n225), .B(n257), .Y(n57) );
  AND2X1 U41 ( .A(n226), .B(n258), .Y(n52) );
  AND2X1 U42 ( .A(n227), .B(n259), .Y(n47) );
  AND2X1 U43 ( .A(n228), .B(n260), .Y(n42) );
  AND2X1 U44 ( .A(n229), .B(n261), .Y(n37) );
  AND2X1 U45 ( .A(n230), .B(n262), .Y(n32) );
  AND2X1 U46 ( .A(n231), .B(n263), .Y(n27) );
  AND2X1 U47 ( .A(n232), .B(n264), .Y(n18) );
  BUFX2 U231 ( .A(n186), .Y(n201) );
  BUFX2 U233 ( .A(n181), .Y(n202) );
  BUFX2 U234 ( .A(n176), .Y(n203) );
  BUFX2 U235 ( .A(n171), .Y(n204) );
  BUFX2 U236 ( .A(n166), .Y(n205) );
  BUFX2 U237 ( .A(n161), .Y(n206) );
  BUFX2 U238 ( .A(n156), .Y(n207) );
  BUFX2 U239 ( .A(n151), .Y(n208) );
  BUFX2 U240 ( .A(n146), .Y(n209) );
  BUFX2 U241 ( .A(n141), .Y(n210) );
  BUFX2 U242 ( .A(n136), .Y(n211) );
  BUFX2 U243 ( .A(n131), .Y(n212) );
  BUFX2 U244 ( .A(n126), .Y(n213) );
  BUFX2 U245 ( .A(n121), .Y(n214) );
  BUFX2 U246 ( .A(n116), .Y(n215) );
  BUFX2 U247 ( .A(n107), .Y(n216) );
  BUFX2 U248 ( .A(n98), .Y(n217) );
  BUFX2 U249 ( .A(n93), .Y(n218) );
  BUFX2 U250 ( .A(n88), .Y(n219) );
  BUFX2 U251 ( .A(n83), .Y(n220) );
  BUFX2 U252 ( .A(n78), .Y(n221) );
  BUFX2 U253 ( .A(n73), .Y(n222) );
  BUFX2 U254 ( .A(n68), .Y(n223) );
  BUFX2 U255 ( .A(n63), .Y(n224) );
  BUFX2 U256 ( .A(n58), .Y(n225) );
  BUFX2 U257 ( .A(n53), .Y(n226) );
  BUFX2 U258 ( .A(n48), .Y(n227) );
  BUFX2 U259 ( .A(n43), .Y(n228) );
  BUFX2 U260 ( .A(n38), .Y(n229) );
  BUFX2 U261 ( .A(n33), .Y(n230) );
  BUFX2 U262 ( .A(n28), .Y(n231) );
  BUFX2 U263 ( .A(n19), .Y(n232) );
  BUFX2 U264 ( .A(n187), .Y(n233) );
  BUFX2 U265 ( .A(n182), .Y(n234) );
  BUFX2 U266 ( .A(n177), .Y(n235) );
  BUFX2 U267 ( .A(n172), .Y(n236) );
  BUFX2 U268 ( .A(n167), .Y(n237) );
  BUFX2 U269 ( .A(n162), .Y(n238) );
  BUFX2 U270 ( .A(n157), .Y(n239) );
  BUFX2 U271 ( .A(n152), .Y(n240) );
  BUFX2 U272 ( .A(n147), .Y(n241) );
  BUFX2 U273 ( .A(n142), .Y(n242) );
  BUFX2 U274 ( .A(n137), .Y(n243) );
  BUFX2 U275 ( .A(n132), .Y(n244) );
  BUFX2 U276 ( .A(n127), .Y(n245) );
  BUFX2 U277 ( .A(n122), .Y(n246) );
  BUFX2 U278 ( .A(n117), .Y(n247) );
  BUFX2 U279 ( .A(n108), .Y(n248) );
  BUFX2 U280 ( .A(n99), .Y(n249) );
  BUFX2 U281 ( .A(n94), .Y(n250) );
  BUFX2 U282 ( .A(n89), .Y(n251) );
  BUFX2 U283 ( .A(n84), .Y(n252) );
  BUFX2 U284 ( .A(n79), .Y(n253) );
  BUFX2 U285 ( .A(n74), .Y(n254) );
  BUFX2 U286 ( .A(n69), .Y(n255) );
  BUFX2 U287 ( .A(n64), .Y(n256) );
  BUFX2 U288 ( .A(n59), .Y(n257) );
  BUFX2 U289 ( .A(n54), .Y(n258) );
  BUFX2 U290 ( .A(n49), .Y(n259) );
  BUFX2 U291 ( .A(n44), .Y(n260) );
  BUFX2 U292 ( .A(n39), .Y(n261) );
  BUFX2 U293 ( .A(n34), .Y(n262) );
  BUFX2 U294 ( .A(n29), .Y(n263) );
  BUFX2 U295 ( .A(n20), .Y(n264) );
  BUFX2 U296 ( .A(n394), .Y(\read1data<0> ) );
  BUFX2 U297 ( .A(n384), .Y(\read1data<10> ) );
  BUFX2 U298 ( .A(n383), .Y(\read1data<11> ) );
  BUFX2 U299 ( .A(n382), .Y(\read1data<12> ) );
  BUFX2 U300 ( .A(n381), .Y(\read1data<13> ) );
  BUFX2 U301 ( .A(n380), .Y(\read1data<14> ) );
  BUFX2 U302 ( .A(n379), .Y(\read1data<15> ) );
  BUFX2 U303 ( .A(n393), .Y(\read1data<1> ) );
  BUFX2 U304 ( .A(n392), .Y(\read1data<2> ) );
  BUFX2 U305 ( .A(n391), .Y(\read1data<3> ) );
  BUFX2 U306 ( .A(n390), .Y(\read1data<4> ) );
  BUFX2 U307 ( .A(n389), .Y(\read1data<5> ) );
  BUFX2 U308 ( .A(n388), .Y(\read1data<6> ) );
  BUFX2 U309 ( .A(n387), .Y(\read1data<7> ) );
  BUFX2 U310 ( .A(n386), .Y(\read1data<8> ) );
  BUFX2 U311 ( .A(n385), .Y(\read1data<9> ) );
  BUFX2 U312 ( .A(n410), .Y(\read2data<0> ) );
  BUFX2 U313 ( .A(n400), .Y(\read2data<10> ) );
  BUFX2 U314 ( .A(n399), .Y(\read2data<11> ) );
  BUFX2 U315 ( .A(n398), .Y(\read2data<12> ) );
  BUFX2 U316 ( .A(n397), .Y(\read2data<13> ) );
  BUFX2 U317 ( .A(n396), .Y(\read2data<14> ) );
  BUFX2 U318 ( .A(n395), .Y(\read2data<15> ) );
  BUFX2 U319 ( .A(n409), .Y(\read2data<1> ) );
  BUFX2 U320 ( .A(n408), .Y(\read2data<2> ) );
  BUFX2 U321 ( .A(n407), .Y(\read2data<3> ) );
  BUFX2 U322 ( .A(n406), .Y(\read2data<4> ) );
  BUFX2 U323 ( .A(n405), .Y(\read2data<5> ) );
  BUFX2 U324 ( .A(n404), .Y(\read2data<6> ) );
  BUFX2 U325 ( .A(n403), .Y(\read2data<7> ) );
  BUFX2 U326 ( .A(n402), .Y(\read2data<8> ) );
  BUFX2 U327 ( .A(n401), .Y(\read2data<9> ) );
  BUFX2 U328 ( .A(n183), .Y(n297) );
  BUFX2 U329 ( .A(n178), .Y(n298) );
  BUFX2 U330 ( .A(n173), .Y(n299) );
  BUFX2 U331 ( .A(n168), .Y(n300) );
  BUFX2 U332 ( .A(n163), .Y(n301) );
  BUFX2 U333 ( .A(n158), .Y(n302) );
  BUFX2 U334 ( .A(n153), .Y(n303) );
  BUFX2 U335 ( .A(n148), .Y(n304) );
  BUFX2 U336 ( .A(n143), .Y(n305) );
  BUFX2 U337 ( .A(n138), .Y(n306) );
  BUFX2 U338 ( .A(n133), .Y(n307) );
  BUFX2 U339 ( .A(n128), .Y(n308) );
  BUFX2 U340 ( .A(n123), .Y(n309) );
  BUFX2 U341 ( .A(n118), .Y(n310) );
  BUFX2 U342 ( .A(n113), .Y(n311) );
  BUFX2 U343 ( .A(n104), .Y(n312) );
  BUFX2 U344 ( .A(n95), .Y(n313) );
  BUFX2 U345 ( .A(n90), .Y(n314) );
  BUFX2 U346 ( .A(n85), .Y(n315) );
  BUFX2 U347 ( .A(n80), .Y(n316) );
  BUFX2 U348 ( .A(n75), .Y(n317) );
  BUFX2 U349 ( .A(n70), .Y(n318) );
  BUFX2 U350 ( .A(n65), .Y(n319) );
  BUFX2 U351 ( .A(n60), .Y(n320) );
  BUFX2 U352 ( .A(n55), .Y(n321) );
  BUFX2 U353 ( .A(n50), .Y(n322) );
  BUFX2 U354 ( .A(n45), .Y(n323) );
  BUFX2 U355 ( .A(n40), .Y(n324) );
  BUFX2 U356 ( .A(n35), .Y(n325) );
  BUFX2 U357 ( .A(n30), .Y(n326) );
  BUFX2 U358 ( .A(n25), .Y(n327) );
  BUFX2 U359 ( .A(n16), .Y(n328) );
  BUFX2 U360 ( .A(n184), .Y(n329) );
  BUFX2 U361 ( .A(n179), .Y(n330) );
  BUFX2 U362 ( .A(n174), .Y(n331) );
  BUFX2 U363 ( .A(n169), .Y(n332) );
  BUFX2 U364 ( .A(n164), .Y(n333) );
  BUFX2 U365 ( .A(n159), .Y(n334) );
  BUFX2 U366 ( .A(n154), .Y(n335) );
  BUFX2 U367 ( .A(n149), .Y(n336) );
  BUFX2 U368 ( .A(n144), .Y(n337) );
  BUFX2 U369 ( .A(n139), .Y(n338) );
  BUFX2 U370 ( .A(n134), .Y(n339) );
  BUFX2 U371 ( .A(n129), .Y(n340) );
  BUFX2 U372 ( .A(n124), .Y(n341) );
  BUFX2 U373 ( .A(n119), .Y(n342) );
  BUFX2 U374 ( .A(n114), .Y(n343) );
  BUFX2 U375 ( .A(n105), .Y(n344) );
  BUFX2 U376 ( .A(n96), .Y(n345) );
  BUFX2 U377 ( .A(n91), .Y(n346) );
  BUFX2 U378 ( .A(n86), .Y(n347) );
  BUFX2 U379 ( .A(n81), .Y(n348) );
  BUFX2 U380 ( .A(n76), .Y(n349) );
  BUFX2 U381 ( .A(n71), .Y(n350) );
  BUFX2 U382 ( .A(n66), .Y(n351) );
  BUFX2 U383 ( .A(n61), .Y(n352) );
  BUFX2 U384 ( .A(n56), .Y(n353) );
  BUFX2 U385 ( .A(n51), .Y(n354) );
  BUFX2 U386 ( .A(n46), .Y(n355) );
  BUFX2 U387 ( .A(n41), .Y(n356) );
  BUFX2 U388 ( .A(n36), .Y(n357) );
  BUFX2 U389 ( .A(n31), .Y(n358) );
  BUFX2 U390 ( .A(n26), .Y(n359) );
  BUFX2 U391 ( .A(n17), .Y(n360) );
  BUFX2 U392 ( .A(n191), .Y(n361) );
  INVX1 U393 ( .A(n361), .Y(n4) );
  BUFX2 U394 ( .A(n190), .Y(n362) );
  INVX1 U395 ( .A(n362), .Y(n3) );
  BUFX2 U396 ( .A(n189), .Y(n363) );
  INVX1 U397 ( .A(n363), .Y(n2) );
  BUFX2 U398 ( .A(n188), .Y(n364) );
  INVX1 U399 ( .A(n364), .Y(n1) );
  BUFX2 U400 ( .A(n103), .Y(n365) );
  INVX1 U401 ( .A(n365), .Y(n10) );
  BUFX2 U402 ( .A(n102), .Y(n366) );
  INVX1 U403 ( .A(n366), .Y(n9) );
  BUFX2 U404 ( .A(n101), .Y(n367) );
  INVX1 U405 ( .A(n367), .Y(n8) );
  BUFX2 U406 ( .A(n100), .Y(n368) );
  INVX1 U407 ( .A(n368), .Y(n7) );
  AND2X1 U408 ( .A(write), .B(n13), .Y(n193) );
  INVX1 U409 ( .A(n193), .Y(n369) );
  AND2X1 U410 ( .A(\writeregsel<2> ), .B(write), .Y(n192) );
  INVX1 U411 ( .A(n192), .Y(n370) );
endmodule


module rf_bypass ( .read1data({\read1data<15> , \read1data<14> , 
        \read1data<13> , \read1data<12> , \read1data<11> , \read1data<10> , 
        \read1data<9> , \read1data<8> , \read1data<7> , \read1data<6> , 
        \read1data<5> , \read1data<4> , \read1data<3> , \read1data<2> , 
        \read1data<1> , \read1data<0> }), .read2data({\read2data<15> , 
        \read2data<14> , \read2data<13> , \read2data<12> , \read2data<11> , 
        \read2data<10> , \read2data<9> , \read2data<8> , \read2data<7> , 
        \read2data<6> , \read2data<5> , \read2data<4> , \read2data<3> , 
        \read2data<2> , \read2data<1> , \read2data<0> }), err, clk, rst, 
    .read1regsel({\read1regsel<2> , \read1regsel<1> , \read1regsel<0> }), 
    .read2regsel({\read2regsel<2> , \read2regsel<1> , \read2regsel<0> }), 
    .writeregsel({\writeregsel<2> , \writeregsel<1> , \writeregsel<0> }), 
    .writedata({\writedata<15> , \writedata<14> , \writedata<13> , 
        \writedata<12> , \writedata<11> , \writedata<10> , \writedata<9> , 
        \writedata<8> , \writedata<7> , \writedata<6> , \writedata<5> , 
        \writedata<4> , \writedata<3> , \writedata<2> , \writedata<1> , 
        \writedata<0> }), write );
  input clk, rst, \read1regsel<2> , \read1regsel<1> , \read1regsel<0> ,
         \read2regsel<2> , \read2regsel<1> , \read2regsel<0> ,
         \writeregsel<2> , \writeregsel<1> , \writeregsel<0> , \writedata<15> ,
         \writedata<14> , \writedata<13> , \writedata<12> , \writedata<11> ,
         \writedata<10> , \writedata<9> , \writedata<8> , \writedata<7> ,
         \writedata<6> , \writedata<5> , \writedata<4> , \writedata<3> ,
         \writedata<2> , \writedata<1> , \writedata<0> , write;
  output \read1data<15> , \read1data<14> , \read1data<13> , \read1data<12> ,
         \read1data<11> , \read1data<10> , \read1data<9> , \read1data<8> ,
         \read1data<7> , \read1data<6> , \read1data<5> , \read1data<4> ,
         \read1data<3> , \read1data<2> , \read1data<1> , \read1data<0> ,
         \read2data<15> , \read2data<14> , \read2data<13> , \read2data<12> ,
         \read2data<11> , \read2data<10> , \read2data<9> , \read2data<8> ,
         \read2data<7> , \read2data<6> , \read2data<5> , \read2data<4> ,
         \read2data<3> , \read2data<2> , \read2data<1> , \read2data<0> , err;
  wire   n127, \q1<15> , \q1<14> , \q1<13> , \q1<12> , \q1<11> , \q1<10> ,
         \q1<9> , \q1<8> , \q1<7> , \q1<6> , \q1<5> , \q1<4> , \q1<3> ,
         \q1<2> , \q1<1> , \q1<0> , \q2<15> , \q2<14> , \q2<13> , \q2<12> ,
         \q2<11> , \q2<10> , \q2<9> , \q2<8> , \q2<7> , \q2<6> , \q2<5> ,
         \q2<4> , \q2<3> , \q2<2> , \q2<1> , \q2<0> , n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126;
  assign err = 1'b0;

  rf ins1 ( .read1data({\q1<15> , \q1<14> , \q1<13> , \q1<12> , \q1<11> , 
        \q1<10> , \q1<9> , \q1<8> , \q1<7> , \q1<6> , \q1<5> , \q1<4> , 
        \q1<3> , \q1<2> , \q1<1> , \q1<0> }), .read2data({\q2<15> , \q2<14> , 
        \q2<13> , \q2<12> , \q2<11> , \q2<10> , \q2<9> , \q2<8> , \q2<7> , 
        \q2<6> , \q2<5> , \q2<4> , \q2<3> , \q2<2> , \q2<1> , \q2<0> }), .err(
        n127), .clk(clk), .rst(n125), .read1regsel({n124, n123, n122}), 
        .read2regsel({n121, n120, n119}), .writeregsel({\writeregsel<2> , n118, 
        n117}), .writedata({n116, n115, n114, n113, n112, n111, n110, n109, 
        n108, n107, n106, n105, n104, n103, n102, n101}), .write(write) );
  OAI21X1 U18 ( .A(n99), .B(n11), .C(n95), .Y(\read2data<9> ) );
  OAI21X1 U20 ( .A(n99), .B(n12), .C(n94), .Y(\read2data<8> ) );
  OAI21X1 U22 ( .A(n99), .B(n13), .C(n93), .Y(\read2data<7> ) );
  OAI21X1 U24 ( .A(n99), .B(n14), .C(n92), .Y(\read2data<6> ) );
  OAI21X1 U26 ( .A(n99), .B(n15), .C(n91), .Y(\read2data<5> ) );
  OAI21X1 U28 ( .A(n99), .B(n16), .C(n90), .Y(\read2data<4> ) );
  OAI21X1 U30 ( .A(n99), .B(n17), .C(n89), .Y(\read2data<3> ) );
  OAI21X1 U32 ( .A(n99), .B(n18), .C(n88), .Y(\read2data<2> ) );
  OAI21X1 U34 ( .A(n99), .B(n19), .C(n87), .Y(\read2data<1> ) );
  OAI21X1 U36 ( .A(n99), .B(n5), .C(n86), .Y(\read2data<15> ) );
  OAI21X1 U38 ( .A(n99), .B(n6), .C(n85), .Y(\read2data<14> ) );
  OAI21X1 U40 ( .A(n99), .B(n7), .C(n84), .Y(\read2data<13> ) );
  OAI21X1 U42 ( .A(n99), .B(n8), .C(n83), .Y(\read2data<12> ) );
  OAI21X1 U44 ( .A(n99), .B(n9), .C(n82), .Y(\read2data<11> ) );
  OAI21X1 U46 ( .A(n99), .B(n10), .C(n81), .Y(\read2data<10> ) );
  OAI21X1 U48 ( .A(n99), .B(n20), .C(n80), .Y(\read2data<0> ) );
  NAND3X1 U50 ( .A(n39), .B(n40), .C(n97), .Y(n22) );
  XOR2X1 U52 ( .A(\writeregsel<2> ), .B(n121), .Y(n42) );
  XNOR2X1 U53 ( .A(n118), .B(n120), .Y(n40) );
  XNOR2X1 U54 ( .A(n117), .B(n119), .Y(n39) );
  OAI21X1 U55 ( .A(n11), .B(n98), .C(n79), .Y(\read1data<9> ) );
  OAI21X1 U57 ( .A(n12), .B(n98), .C(n78), .Y(\read1data<8> ) );
  OAI21X1 U59 ( .A(n13), .B(n98), .C(n77), .Y(\read1data<7> ) );
  OAI21X1 U61 ( .A(n14), .B(n98), .C(n76), .Y(\read1data<6> ) );
  OAI21X1 U63 ( .A(n15), .B(n98), .C(n75), .Y(\read1data<5> ) );
  OAI21X1 U65 ( .A(n16), .B(n98), .C(n74), .Y(\read1data<4> ) );
  OAI21X1 U67 ( .A(n17), .B(n98), .C(n73), .Y(\read1data<3> ) );
  OAI21X1 U69 ( .A(n18), .B(n98), .C(n72), .Y(\read1data<2> ) );
  OAI21X1 U71 ( .A(n19), .B(n98), .C(n71), .Y(\read1data<1> ) );
  OAI21X1 U73 ( .A(n5), .B(n98), .C(n70), .Y(\read1data<15> ) );
  OAI21X1 U75 ( .A(n6), .B(n98), .C(n69), .Y(\read1data<14> ) );
  OAI21X1 U77 ( .A(n7), .B(n98), .C(n68), .Y(\read1data<13> ) );
  OAI21X1 U79 ( .A(n8), .B(n98), .C(n67), .Y(\read1data<12> ) );
  OAI21X1 U81 ( .A(n9), .B(n98), .C(n66), .Y(\read1data<11> ) );
  OAI21X1 U83 ( .A(n10), .B(n98), .C(n65), .Y(\read1data<10> ) );
  OAI21X1 U85 ( .A(n20), .B(n98), .C(n64), .Y(\read1data<0> ) );
  NAND3X1 U87 ( .A(n60), .B(n61), .C(n96), .Y(n43) );
  XOR2X1 U89 ( .A(\writeregsel<2> ), .B(n124), .Y(n63) );
  XNOR2X1 U90 ( .A(n118), .B(n123), .Y(n61) );
  XNOR2X1 U91 ( .A(n117), .B(n122), .Y(n60) );
  BUFX2 U92 ( .A(\writedata<1> ), .Y(n102) );
  BUFX2 U93 ( .A(\writedata<2> ), .Y(n103) );
  BUFX2 U94 ( .A(\writedata<3> ), .Y(n104) );
  BUFX2 U95 ( .A(\writedata<4> ), .Y(n105) );
  BUFX2 U96 ( .A(\writedata<5> ), .Y(n106) );
  BUFX2 U97 ( .A(\writedata<6> ), .Y(n107) );
  BUFX2 U98 ( .A(\writedata<7> ), .Y(n108) );
  BUFX2 U99 ( .A(\writedata<8> ), .Y(n109) );
  BUFX2 U100 ( .A(\writedata<9> ), .Y(n110) );
  BUFX2 U101 ( .A(\writedata<10> ), .Y(n111) );
  BUFX2 U102 ( .A(\writedata<11> ), .Y(n112) );
  BUFX2 U103 ( .A(\writedata<12> ), .Y(n113) );
  BUFX2 U104 ( .A(\writedata<13> ), .Y(n114) );
  BUFX2 U105 ( .A(\writedata<14> ), .Y(n115) );
  BUFX2 U106 ( .A(\writedata<15> ), .Y(n116) );
  BUFX2 U107 ( .A(\writedata<0> ), .Y(n101) );
  INVX1 U108 ( .A(write), .Y(n21) );
  BUFX2 U109 ( .A(\read2regsel<0> ), .Y(n119) );
  BUFX2 U110 ( .A(\read2regsel<1> ), .Y(n120) );
  BUFX2 U111 ( .A(\writeregsel<0> ), .Y(n117) );
  BUFX2 U112 ( .A(\read1regsel<0> ), .Y(n122) );
  BUFX2 U113 ( .A(\writeregsel<1> ), .Y(n118) );
  BUFX2 U114 ( .A(\read1regsel<1> ), .Y(n123) );
  INVX1 U115 ( .A(n101), .Y(n20) );
  INVX1 U116 ( .A(n102), .Y(n19) );
  INVX1 U117 ( .A(n103), .Y(n18) );
  INVX1 U118 ( .A(n104), .Y(n17) );
  INVX1 U119 ( .A(n105), .Y(n16) );
  INVX1 U120 ( .A(n106), .Y(n15) );
  INVX1 U121 ( .A(n107), .Y(n14) );
  INVX1 U122 ( .A(n108), .Y(n13) );
  INVX1 U123 ( .A(n109), .Y(n12) );
  INVX1 U124 ( .A(n110), .Y(n11) );
  INVX1 U125 ( .A(n111), .Y(n10) );
  INVX1 U126 ( .A(n112), .Y(n9) );
  INVX1 U127 ( .A(n113), .Y(n8) );
  INVX1 U128 ( .A(n114), .Y(n7) );
  INVX1 U129 ( .A(n115), .Y(n6) );
  INVX1 U130 ( .A(n116), .Y(n5) );
  INVX2 U131 ( .A(n126), .Y(n125) );
  INVX1 U132 ( .A(rst), .Y(n126) );
  AND2X1 U133 ( .A(\q1<0> ), .B(n98), .Y(n59) );
  INVX1 U134 ( .A(n59), .Y(n64) );
  AND2X1 U135 ( .A(\q1<10> ), .B(n98), .Y(n58) );
  INVX1 U136 ( .A(n58), .Y(n65) );
  AND2X1 U137 ( .A(\q1<11> ), .B(n98), .Y(n57) );
  INVX1 U138 ( .A(n57), .Y(n66) );
  AND2X1 U139 ( .A(\q1<12> ), .B(n98), .Y(n56) );
  INVX1 U140 ( .A(n56), .Y(n67) );
  AND2X1 U141 ( .A(\q1<13> ), .B(n98), .Y(n55) );
  INVX1 U142 ( .A(n55), .Y(n68) );
  AND2X1 U143 ( .A(\q1<14> ), .B(n98), .Y(n54) );
  INVX1 U144 ( .A(n54), .Y(n69) );
  AND2X1 U145 ( .A(\q1<15> ), .B(n98), .Y(n53) );
  INVX1 U146 ( .A(n53), .Y(n70) );
  AND2X1 U147 ( .A(\q1<1> ), .B(n98), .Y(n52) );
  INVX1 U148 ( .A(n52), .Y(n71) );
  AND2X1 U149 ( .A(\q1<2> ), .B(n98), .Y(n51) );
  INVX1 U150 ( .A(n51), .Y(n72) );
  AND2X1 U151 ( .A(\q1<3> ), .B(n98), .Y(n50) );
  INVX1 U152 ( .A(n50), .Y(n73) );
  AND2X1 U153 ( .A(\q1<4> ), .B(n98), .Y(n49) );
  INVX1 U154 ( .A(n49), .Y(n74) );
  AND2X1 U155 ( .A(\q1<5> ), .B(n98), .Y(n48) );
  INVX1 U156 ( .A(n48), .Y(n75) );
  AND2X1 U157 ( .A(\q1<6> ), .B(n98), .Y(n47) );
  INVX1 U158 ( .A(n47), .Y(n76) );
  AND2X1 U159 ( .A(\q1<7> ), .B(n98), .Y(n46) );
  INVX1 U160 ( .A(n46), .Y(n77) );
  AND2X1 U161 ( .A(\q1<8> ), .B(n98), .Y(n45) );
  INVX1 U162 ( .A(n45), .Y(n78) );
  AND2X1 U163 ( .A(\q1<9> ), .B(n98), .Y(n44) );
  INVX1 U164 ( .A(n44), .Y(n79) );
  AND2X1 U165 ( .A(\q2<0> ), .B(n99), .Y(n38) );
  INVX1 U166 ( .A(n38), .Y(n80) );
  AND2X1 U167 ( .A(\q2<10> ), .B(n99), .Y(n37) );
  INVX1 U168 ( .A(n37), .Y(n81) );
  AND2X1 U169 ( .A(\q2<11> ), .B(n99), .Y(n36) );
  INVX1 U170 ( .A(n36), .Y(n82) );
  AND2X1 U171 ( .A(\q2<12> ), .B(n99), .Y(n35) );
  INVX1 U172 ( .A(n35), .Y(n83) );
  AND2X1 U173 ( .A(\q2<13> ), .B(n99), .Y(n34) );
  INVX1 U174 ( .A(n34), .Y(n84) );
  AND2X1 U175 ( .A(\q2<14> ), .B(n99), .Y(n33) );
  INVX1 U176 ( .A(n33), .Y(n85) );
  AND2X1 U177 ( .A(\q2<15> ), .B(n99), .Y(n32) );
  INVX1 U178 ( .A(n32), .Y(n86) );
  AND2X1 U179 ( .A(\q2<1> ), .B(n99), .Y(n31) );
  INVX1 U180 ( .A(n31), .Y(n87) );
  AND2X1 U181 ( .A(\q2<2> ), .B(n99), .Y(n30) );
  INVX1 U182 ( .A(n30), .Y(n88) );
  AND2X1 U183 ( .A(\q2<3> ), .B(n99), .Y(n29) );
  INVX1 U184 ( .A(n29), .Y(n89) );
  AND2X1 U185 ( .A(\q2<4> ), .B(n99), .Y(n28) );
  INVX1 U186 ( .A(n28), .Y(n90) );
  AND2X1 U187 ( .A(\q2<5> ), .B(n99), .Y(n27) );
  INVX1 U188 ( .A(n27), .Y(n91) );
  AND2X1 U189 ( .A(\q2<6> ), .B(n99), .Y(n26) );
  INVX1 U190 ( .A(n26), .Y(n92) );
  AND2X1 U191 ( .A(\q2<7> ), .B(n99), .Y(n25) );
  INVX1 U192 ( .A(n25), .Y(n93) );
  AND2X1 U193 ( .A(\q2<8> ), .B(n99), .Y(n24) );
  INVX1 U194 ( .A(n24), .Y(n94) );
  AND2X1 U195 ( .A(\q2<9> ), .B(n99), .Y(n23) );
  INVX1 U196 ( .A(n23), .Y(n95) );
  OR2X1 U197 ( .A(n21), .B(n63), .Y(n62) );
  INVX1 U198 ( .A(n62), .Y(n96) );
  OR2X1 U199 ( .A(n21), .B(n42), .Y(n41) );
  INVX1 U200 ( .A(n41), .Y(n97) );
  BUFX2 U201 ( .A(n43), .Y(n98) );
  BUFX2 U202 ( .A(n22), .Y(n99) );
  BUFX2 U203 ( .A(\read1regsel<2> ), .Y(n124) );
  BUFX2 U204 ( .A(\read2regsel<2> ), .Y(n121) );
endmodule

