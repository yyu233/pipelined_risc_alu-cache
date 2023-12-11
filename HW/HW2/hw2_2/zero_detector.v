module zero_detector(Sum, Ofl, Out);

input [15:0]Sum; 
input Ofl;
output Out;

assign Out=~((|Sum)|Ofl);


endmodule
