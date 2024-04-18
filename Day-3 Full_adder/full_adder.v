module full_adder(a,b,s1,c1,s2,c2,s3,c3);
  input wire a,b;
  output reg s1,c1,s2,c2;
  output s3,c3;
  wire w1,w2,w3;
  
  xor X1(w1,a,b);    
  xor X2(s1,w1,c1);
  and X3(w2,a,b);
  and X4(w3,w1,c1);
  or X5(c2,w2,w3);
  
  
  
endmodule
  