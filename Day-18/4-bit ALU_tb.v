module tb;
  reg [3:0]CTRL;
  reg [31:0]A,B,C;
  wire  [31:0]D;
  
  alu  inst(.ctrl(CTRL), .a(A), .b(B), .c(C), .d(D));
  
  initial
    begin
      A=15; B=20; C=35;
      $display("A=%0d, B=%0d, C=%0d",A,B,C,$time);
      
       CTRL= 4'b0000;
    #2 CTRL= 4'b0001;
    #2 CTRL= 4'b0010;
    #2 CTRL= 4'b0011;
    #2 CTRL= 4'b0100;
    #2 CTRL= 4'b0101;
    #2 CTRL= 4'b0110;
    #2 CTRL= 4'b0111; 
    #2 CTRL= 4'b1000;
    #2 CTRL= 4'b1001;
    #2 CTRL= 4'b1010;

    end

    initial begin 
    $dumpfile("dump.vcd");
    $dumpvars();
    end
    endendmodule