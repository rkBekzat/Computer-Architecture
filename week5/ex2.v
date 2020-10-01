module ex2
(
	input din ,
	input [1:0] sel ,
	output reg dout0,
	output reg dout1,
	output reg dout2,
	output reg dout3
);

	always @ (*)
		case (sel)
			2'b 00:
			begin
				dout0 = din ;
				dout1 = 0;
				dout2 = 0;
				dout3 = 0;
			end
			2'b 01:
			begin
				dout0 = 0;
				dout1 = din ;
				dout2 = 0;
				dout3 = 0;
			end
			2'b 10:
			begin
				dout0 = 0;
				dout1 = 0;
				dout2 = din ;
				dout3 = 0;
			end 
			2'b 11:
			begin
				dout0 = 0;
				dout1 = 0;
				dout2 = 0;
				dout3 = din ;
			end
	endcase
endmodule
