module bidir_buff_tb();
  
   reg ctrl;
   wire a,b;
   integer i;
   reg temp_a,temp_b;
  
  bidir_buff dut(a,b,ctrl);
  
   
  
   initial 
     begin

       $monitor("t=%0t, a=%0b, b=%0b, ctrl=%0b" , $time, a,b,ctrl);
       
          #10  ctrl=1; temp_a=0;
          #10          temp_a=1;
          #10  ctrl=0; temp_b=0;
          #10          temp_b=1;
          #10;
        
     end
    initial 
       begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
           
endmodule