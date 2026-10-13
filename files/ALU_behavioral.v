module ALU_behavioral(A,B,OpCode,result,carry_out,overflow);
input [3:0]A,B;
input [2:0]OpCode;
output reg [3:0]result;
output reg overflow;
output reg carry_out;

wire wire_And ,wire_OR ,wire_Addition ,wire_Subtraction,wire_carrySum,wire_carry_Sub,wire_overflow;
Bitwise_OR G1(A,B,wire_OR);
Bitwise_AND G2(A,B,wire_And);
Addition(A,B,0,wire_Addition,wire_carrySum);
Subtraction(A,B,1,wire_Subtraction,wire_carry_Sub,wire_overflow);
always @ (*)begin
 
if(OpCode==3'b000) begin 
result=wire_Addition;
carry_out = wire_carrySum;
 overflow= 1'b z;

end
else if(OpCode==3'b001) begin
 result=wire_Subtraction;
 carry_out= wire_carry_Sub;
 overflow=wire_overflow;
 end
 
else if (OpCode==3'b010)  begin
result=wire_And;
 overflow= 1'b z;
end
else if (OpCode==3'b011) begin
result=wire_OR;
 overflow= 1'b z;
end
else result= 3'b z;
end 


endmodule 