module or_gate_structural(input a, input b,output wire y);
      assign = a|b
end module

  testbench
module or_gate_tb;
reg a,b;
wire y;
or_gate dut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
$monitor("a=%b,b=%b,y=%b,a,b,y);
end
initial begin
#10 a=0;b=0;
#10 a=1;b=1;
#10 a=1;b=0;
end 
endmodule
