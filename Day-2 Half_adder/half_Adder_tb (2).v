module half_adder_tb;
  reg a,b;
  wire s1,c1,s2,c2,s3,c3;
  
  half_adder ha(a,b,s1,c1,s2,c2,s3,c3);
  initial
    begin
      
      $monitor("t=%0t, a=%0b, b=%0b, s1=%0b, c1=%0b, s2=%0b, s3=%0b, c3=%0b",                     $time, a,b,s1,c1,s2,c2,s3,c3);
      
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

