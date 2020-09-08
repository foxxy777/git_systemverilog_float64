`include "transaction.sv"

class driver;
 
transaction trans_dri;

  virtual intf vif;
  
  mailbox gen2driv;
  mailbox driv2in_mon;
  
  function new(virtual intf vif,mailbox gen2driv,driv2in_mon );
    this.vif = vif;
    this.gen2driv = gen2driv;
    this.driv2in_mon = driv2in_mon;

  endfunction
  
  task reset;
	
	vif.start <= 0;
	vif.rstN <= 1;
	#10;
	vif.rstN <= 0;
	#10;
	vif.rstN <= 1;
	vif.start <= 1;
	vif.a = 64'h7FF8000000000000;
	vif.b = 64'h3FF0000000000000;
	#10;
	//vif.return_value = 64'h7FF8000000000000;
	trans_dri = new();	
	trans_dri.a = 64'h7FF8000000000000;
	trans_dri.b = 64'h3FF0000000000000;
	trans_dri.return_value = 64'h7FF8000000000000;
	driv2in_mon.put(trans_dri);

	$display("driv.reset:done");
	

  endtask
  
  task main;
    begin
      transaction trans;
      gen2driv.get(trans);//看起来这种有从FIFO中get的操作是不需要先new
      driv2in_mon.put(trans);
      trans.display("[ Driver: send transaction to input_monitor]");
      @(posedge vif.clk);
      vif.a     <= trans.a;
      vif.b     <= trans.b;
      #1000;
      
    end
  endtask
  
endclass
