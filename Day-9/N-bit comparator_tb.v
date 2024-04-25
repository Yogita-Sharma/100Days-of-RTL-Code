module tb;
  parameter n = 32;
  reg [n-1:0]a, b;
  wire gr, lo, eq;
  
  compar_r c(a, b, gr,lo, eq);
  
  initial
    begin
      $monitor("t=%0t, a=%0b, b=%0b, gr=%0b, lo=%0b, eq=%0b", $time, a, b, gr, lo, eq);
    
   
     a=0; b=0;
      #2
      a=0; b=1;
      #2
      a=1; b=0;
      #6
      a=1; b=1;
      #10
      $finish();
      
       end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule


