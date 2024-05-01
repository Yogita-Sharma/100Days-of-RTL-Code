module gated_sr_tb;
  
reg S,R,clk;
wire Q,Qbar;
  
  gated_sr DUT(S,R,clk,Q,Qbar);

always 
  begin
    clk=0;
forever #5 clk=~clk;
  end
  
initial
  begin
 $monitor("t = %0t, S = %0b, R = %0b, Q = %0b, Qbar = %0b", $time, S,R,Q,Qbar);
      S=0; R=0;
      #10
      S=0; R=1;
      #10
      S=1; R=0;
      #10
      S=1; R=1;
      #10
      $finish();
  end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule
