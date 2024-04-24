module mux_4X1_tb;
  reg in,sel;
  wire out;
  
  mux_4X1 mux_4X1_inst(in,sel,out);

  initial
    begin
      
      $monitor("t=%0t, in=%0b, sel=%0b, out=%0b", $time,in,sel,out);
      
      #5 in=0; sel=1; 
      #5 in=0; sel=0; 
      #5 in=1; sel=1;
      #5 in=1; sel=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish;
    end
endmodule
