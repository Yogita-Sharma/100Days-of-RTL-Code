module sr_latch_tb;
  
reg S,R;
wire Q,Qbar;
  
  sr_latch DUT(S,R,Q,Qbar);
  
initial
  begin
    
    $monitor("t = %0t, S = %0b, R = %0b, Q = %0b, Qbar = %0b", $time, S,R,Q,Qbar);
      S=0; R=0;
      #4
      S=0; R=1;
      #4
      S=1; R=0;
      #4
      S=1; R=1;
      #4
      $finish();
      
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule
