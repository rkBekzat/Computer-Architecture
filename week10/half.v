module half
  (
   bit1,
   bit2,
   sum,
   carry
   );
 
  input  bit1;
  input  bit2;
  output sum;
  output carry;
 
  assign sum   = bit1 ^ bit2;  
  assign carry = bit1 & bit2;  
 
endmodule  