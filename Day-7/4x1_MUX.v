module mux_4x1(i0,i1,i2,i3,s0,s1,y);

  input wire i0,i1,i2,i3,s0,s1;
  output reg y;
  
  wire w1,w2,w3,w4,w5,w6;
  
  not x1(w1,s1);
  not x2(w2,s0);
  and x3(w3,i1,i0);
  and x4(w4,s0,i1);
  and x5(w5,s1,s0);
  and x6(w6,s1,s0);
  or  x7(y,w3,w4,w5,w6);
  
 
endmodule