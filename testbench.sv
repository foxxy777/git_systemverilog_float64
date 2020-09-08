`timescale 1ns / 100ps
`include "float64_add_main.v"
`include "interface.sv"
`include "random_test.sv"


module testbench_top;
  
  bit clk;
  
  always #10 clk = ~clk;
  
  
  float64_add_DUT_RTL float64_add_DUT_RTL_1(
	.clk(i_intf.clk),
	.rstN(i_intf.rstN),
	.start(i_intf.start),
	.fin(i_intf.fin),
	.a(i_intf.a),
	.b(i_intf.b),
	.return_value(i_intf.return_value)
); 
  
  intf i_intf(clk);
  
  test t1(i_intf);
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
endmodule
