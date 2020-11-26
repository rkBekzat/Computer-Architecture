module testbench;

// input and output test signals
reg [5:0] opcode, funct;
wire MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite;
wire [2:0] ALUControl;

control_unit cu(opcode, funct, MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, ALUControl);

initial
begin
opcode = 6'h00;
funct = 6'h20;
#5;
funct = 6'h22;
#5;
funct = 6'h24;
#5;
funct = 6'h25;
#5;
funct = 6'h2A;
#5;
opcode = 6'h23;
#5;
opcode = 6'h2B;
#5;
opcode = 6'h04;
end

initial
$monitor("opcode = 0x%h RegWrite = %b RegDst = %b ALUSrc = %b Branch = %b MemWrite = %b MemtoReg = %b funct = 0x%h ALUControl = %b", opcode, RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, funct, ALUControl);

initial
$dumpvars;

endmodule
