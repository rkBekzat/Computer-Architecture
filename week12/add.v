module add
(
	input [4:0] rs, rt,
	output [31:0] res
);

assign res = glob.r[rs] + glob.r[rt];

endmodule
