module buffer4x64(w_addr,w_data,r_addr,clk,rst,w_enable,r_data);

input [1:0]w_addr;
input [63:0]w_data;
input [1:0]r_addr;
input clk;
input rst;
input w_enable;
output reg[63:0]r_data;

wire w_enable0, w_enable1, w_enable2, w_enable3;
reg w_enable0_temp, w_enable1_temp, w_enable2_temp, w_enable3_temp;

assign w_enable0=w_enable0_temp;
assign w_enable1=w_enable1_temp;
assign w_enable2=w_enable2_temp;
assign w_enable3=w_enable3_temp;

wire [63:0]regvalue0, regvalue1, regvalue2, regvalue3;

register #(64)reg0(.writedata(w_data),.clk(clk),.rst(rst),.enable(w_enable0),.regvalue(regvalue0));
register #(64)reg1(.writedata(w_data),.clk(clk),.rst(rst),.enable(w_enable1),.regvalue(regvalue1));
register #(64)reg2(.writedata(w_data),.clk(clk),.rst(rst),.enable(w_enable2),.regvalue(regvalue2));
register #(64)reg3(.writedata(w_data),.clk(clk),.rst(rst),.enable(w_enable3),.regvalue(regvalue3));

//determine which reg to write 
always@* begin
	case(w_addr)
	2'b00:begin//reg0
		w_enable0_temp=w_enable;
		w_enable1_temp=0;
		w_enable2_temp=0;
		w_enable3_temp=0;
	end
	2'b01:begin//reg1
		w_enable0_temp=0;
		w_enable1_temp=w_enable;
		w_enable2_temp=0;
		w_enable3_temp=0;
	end
	2'b10:begin//reg2
		w_enable0_temp=0;
		w_enable1_temp=0;
		w_enable2_temp=w_enable;
		w_enable3_temp=0;
	end
	2'b11:begin//reg3
		w_enable0_temp=0;
		w_enable1_temp=0;
		w_enable2_temp=0;
		w_enable3_temp=w_enable;
	end

	endcase
end 

//determine which reg to read
always@* begin
	case(r_addr)
	2'b00:begin//reg0
		r_data=regvalue0;
	end
	2'b01:begin//reg1
		r_data=regvalue1;
	end
	2'b10:begin//reg2
		r_data=regvalue2;
	end
	2'b11:begin//reg3
		r_data=regvalue3;
	end
	endcase
end 

endmodule 
