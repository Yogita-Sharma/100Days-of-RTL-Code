module bidir_buff(a,b,ctrl);
  
   inout a,b;
   input ctrl;
  
  bufif1 b1(a,b,ctrl);
  bufif1 b2(b,a,ctrl);
  
  
endmodule