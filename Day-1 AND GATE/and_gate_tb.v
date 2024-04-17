// Code your testbench here
module m1_tb;
  reg a,b;
  wire c,d,e;
  
  m1 m1_tb(a,b,c,d,e);
  initial
    begin
      $monitor("t = %0t, a = %d, b = %d, c = %b, d = %b, e = %b", $time, a,b,c,d,e);
      a=0; b=0;
      #4
      a=0; b=1;
      #4
      a=1; b=0;
      #4
      a=1; b=1;
      #4
      $finish();
      
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule
