module demux_1to2_tb();

reg a,s; 
wire [1:0]y;integer i;

demux_1to2 dut(.a(a),.s(s),.y(y));
initial
begin

for(i=0;i<10;i=i+1) 
begin

a=$random; 
s=$random;
#20;
end
$finish();

end
endmodule