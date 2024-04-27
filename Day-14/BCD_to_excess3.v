module bcd_to_excess3(
  
    input [3:0] a,
    output [3:0] y
    );
  
    assign y[3]=a[3]|(a[2]&a[0])|(a[2]&a[1]);
    assign y[2]=(~a[2]&a[0])|((~a[2])& a[1])|(a[2]&(~a[1])&(~a[0]));
    assign y[1]=(~a[1]&(~a[0]))|(a[1]&(a[0]));
    assign y[0]=~a[0];
  
endmodule