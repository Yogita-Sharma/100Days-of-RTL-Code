module RCA(
  
  input  [4:0] a,b,cin,
  output [4:0] sum,cout
  
);
  
  
  assign {cout,sum} = a+b+cin;
  
  
endmodule