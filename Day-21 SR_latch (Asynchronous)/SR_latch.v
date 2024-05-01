module sr_latch(S,R,Q,Qbar);
  
input S,R;
output Q,Qbar;
  
  assign Q = ~(R|Qbar);
assign Qbar = ~(S|Q);
  
endmodule