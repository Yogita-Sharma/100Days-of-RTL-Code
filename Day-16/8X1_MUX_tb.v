module mux_8to1_tb();

reg [7:0]d;
reg [2:0]s;
wire y;integer i;

mux_8to1_using_2t01 dut1(.d(d),.s(s),.y(y));

initial 
begin

for(i=0;i<20;i=i+1)
begin

d=$random;s=$random;
#10;
end
$finish();

end
endmodule