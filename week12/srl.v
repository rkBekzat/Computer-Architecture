module srl(
    input       [4:0] rt, shamt,
    output      [31:0] res
);

assign res = glob.r[rt] >> shamt;

endmodule