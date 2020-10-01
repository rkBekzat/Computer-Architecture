module ex2(
		output[7:0]	HEX0,
		output[7:0]	HEX1,
		output[7:0]	HEX2,
		output[7:0]	HEX3,
		output[7:0]	HEX4,
		output[7:0]	HEX5,
		
		input [1:0] KEY
);

//09.04.01
assign HEX0[6] = ~KEY[0],
HEX0[7] = ~KEY[0];
			

assign HEX1[4] = ~KEY[0];			
						
assign HEX2[6] = ~KEY[0],
HEX2[7] = ~KEY[0];
							
assign HEX3[0] = ~KEY[0],
HEX3[4] = ~KEY[0],
HEX4[3] = ~KEY[0];
						
assign HEX4[6] = ~KEY[0],
HEX4[7] = ~KEY[0];

assign HEX5[0] = ~KEY[0],
HEX5[3] = ~KEY[0],
HEX5[4] = ~KEY[0],
HEX5[5] = ~KEY[0],
HEX5[6] = ~KEY[0];
			
endmodule 