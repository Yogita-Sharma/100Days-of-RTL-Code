module half_sub(a,b,d1,d2,b1,b2);
  input wire a,b;
  output reg d1,b1;
  output d2,b2;
  
  assign d2 = a^b;     
  assign b2 = ~a&b;
  
  always @ (a,b)        
    begin
      d1 = a^b;
      b1 = ~a&b;
    end
endmodule