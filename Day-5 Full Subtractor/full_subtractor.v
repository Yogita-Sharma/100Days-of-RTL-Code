module full_sub(a,b,bin,d,bout);

 input wire a,b,bin;
  output reg d,bout;
  
  assign d = a^b^bin;
  assign bout = (~a&b) | (~(a^b) & bin);
  
endmodule