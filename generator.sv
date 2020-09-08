`include "transaction.sv"

class generator;
  parameter NUMBER = 46;
  //declaring transaction class 
  transaction trans;
reg [63:0] a_input[0:NUMBER-1];
reg [63:0] b_input[0:NUMBER-1];
reg [63:0] z_output[0:NUMBER-1];

task read_input_output;
begin
	$readmemh("a_input.txt",a_input);
	$readmemh("b_input.txt",b_input);
	$readmemh("z_output.txt",z_output);
end
endtask
  
  mailbox gen2driv;
  
  event ended;
  
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
  task main(integer i);
	  
   trans = new();
   //trans.a = 64'h7FF0000000000000;
   trans.a = a_input[i];
   //trans.b = 64'h3FF0000000000000;
   trans.b = b_input[i];
   //trans.return_value = 64'h7FF0000000000000;
   trans.return_value = z_output[i];
   trans.display("[ Generator: transaction generated in Generator");
    gen2driv.put(trans);
    //-> ended; //triggering indicatesthe end of generation
  endtask
  
endclass
