
module ex4
(
	input clk ,
	input d,
	output q,
	output q_n
);
	wire r = ~d & clk;
	wire s = d & clk ;
	sr_latch sr_latch(s, r, q, q_n) ;
endmodule