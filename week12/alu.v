module alu
(
    input      [31:0] rs, rt, 
	 input	    [4:0] shamt, 
	 input	    [5:0] funct,
  	 output     [31:0] rd
);

wire [31:0]add_r;
wire [31:0]sub_r;
wire [31:0]srl_r;

add u0(rs, rt, add_r);
sub u1(rs, rt, sub_r);
srl u2(rt, shamt, srl_r);
mux u3(add_r, sub_r, srl_r, funct, rd);
	
endmodule
