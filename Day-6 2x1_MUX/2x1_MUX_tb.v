module mux_2x1_tb;

  reg I0,I1,S0;
  wire Y;
  
  mux_2x1 mux_2x1_inst(I0,I1,S0,Y);
  
  initial
    begin

      $monitor("t=%0t, I0=%0b, I1=%0b, S0=%0b, Y=%0b", $time, I0,I1,S0,Y);
        
        #2 I0=0; I1=0; S0=0;
        #2 I0=0; I1=1; S0=1;
       
     end
      
   initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
    
endmodule

