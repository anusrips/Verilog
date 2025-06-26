design

module not_gate_b(input a,output y);
  assign y=~a;
endmodule  

testbench
module not_gate_tb;
  reg a;
  wire y;
  not_gate_b dut(.a(a),.y(y));
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars();
    $monitor("a=%b,y=%b",a,b);
  end
  initial begin
    #10 a=1;
  end
endmodule
