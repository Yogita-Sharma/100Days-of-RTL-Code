
module mux_2x1(i0,i1,s0,y);

  input   i0,i1,s0;
  output   y;

  wire w1,w2,w3;
  
  not x1(w1,s0);
  and x2(w2,i0,w1);
  and x3(w3,s0,i1);
  or  x4(y,w2,w3);
  
 
endmodule