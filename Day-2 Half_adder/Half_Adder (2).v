module half_adder(a,b,s1,c1,s2,c2,s3,c3);
  
    input wire a,b;
    output reg s1,c1,s2,c2;
    output s3,c3;
  
  xor X1(s1,a,b);   
 and X2(c1,a,b);
  
  assign s3 = a ^ b;     
  assign c3 = a & b;
  
  
 always @(a,b)      
    begin
      
      s2=a^b;
      c2=a&b;
      
    end
  
  
endmodule
