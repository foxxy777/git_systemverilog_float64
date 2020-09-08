`ifndef SCOREBOARD
`define SCOREBOARD

`include "transaction.sv"

class scoreboard;

  transaction transaction_asso_array[*];
   
  mailbox mon2scb;
  mailbox in_mon2scb;
  
  
  function new(mailbox mon2scb,in_mon2scb);
    this.mon2scb = mon2scb;
    this.in_mon2scb = in_mon2scb;
  endfunction
  
 task update_input;
	 transaction trans;
	 in_mon2scb.get(trans);
	 transaction_asso_array[trans.a] = trans;
 endtask

 task check_output;
	 transaction trans;
	 mon2scb.get(trans);
	 if(trans.return_value == transaction_asso_array[trans.a].return_value)
	 begin
	   $display("Scoreboard:pass!");
   end
   else
   begin
	   $display("Scoreboard:fail!");
   end
 endtask
  
endclass

`endif
