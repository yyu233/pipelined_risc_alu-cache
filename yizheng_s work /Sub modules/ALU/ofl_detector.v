module ofl_detector(sign, C15, C16, Ofl);

input sign, C15, C16;
output Ofl;

wire s_ofl;

xor2 sign_det(.in1(C16),.in2(C15),.out(s_ofl));

mux_2_1  ins1(.InA(C16),.InB(s_ofl),.S(sign),.Out(Ofl));//unsigned ofl==C16, signed ofl==s_ofl

endmodule 
