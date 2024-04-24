module mux_4x1_tb;

  reg I0,I1,I2,I3,S0,S1;

  wire Y;
  
  mux_4x1 mux_4x1_inst(I0,I1,I2,I3,SO,S1,Y);

  initial
    begin

      $monitor("t=%0t, I0=%0b, I1=%0b, I2=%0b, I3=%0b, S0=%ob, S1=%ob, Y=%0b", $time,I0,I1,I2,I3,S0,S1,Y);
      
      #5 I0=0; I1=1; S0=0;
      #5 I2=0; I1=0; S0=1;
      #5 I3=1; I2=1; S1=0;
      #5 I3=0; S1=1;

    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish;
    end
    
endmodule
