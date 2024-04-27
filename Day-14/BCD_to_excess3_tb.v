module bcd_to_excess3_tb();

  
    reg [3:0]a;
    wire [3:0]y;
    
    bcd_to_excess3 dut(a,y);
  
    initial
    begin
      $monitor("t=%0t, a=%0b, y=%0b", $time, a,y);
      
        a=4'b0000;
    #1  a=4'b0001;
    #2  a=4'b0010;
    #5  a=4'b0011;
    #6  a=4'b0100;
    #7  a=4'b0101;
    #10 a=4'b0110;
    #15 a=4'b0111;
    #20 a=4'b1000;
    #80 $finish;
    
    end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule