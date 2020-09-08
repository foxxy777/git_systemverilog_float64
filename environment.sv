`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "input_monitor.sv"
`include "scoreboard.sv"
class environment;
  generator 	gen;
  scoreboard	scb;
  driver    	driv;
  monitor   	mon;
  input_monitor in_mon;
  
  mailbox gen2driv;
  mailbox mon2scb;
  mailbox in_mon2scb;
  mailbox driv2in_mon;
  
  virtual intf vif;
  
  function new(virtual intf vif);
    this.vif = vif;
    
    gen2driv = new();
    mon2scb  = new();
    in_mon2scb  = new();
    driv2in_mon  = new();
    
    gen  = new(gen2driv);
    scb  = new(mon2scb,in_mon2scb);
    driv = new(vif,gen2driv,driv2in_mon);
    mon  = new(vif,mon2scb,scb);
    in_mon  = new(vif,driv2in_mon,in_mon2scb,scb);
  endfunction
  
  task pre_test();
    $display("pre_test:driv.reset:begin");
    driv.reset();//��driver�У�����interface��ʵ��reset
    $display("pre_test:driv.reset:end");
    in_mon.main();
    #1000;
    mon.main();    
  endtask

 integer i;
  
  task test();
	  
      gen.read_input_output;
      for(i=1;i<=45;i++)
      begin
    $display("i:%d",i);
      gen.main(i);//����һ��trans����a��b��ֵ������gen2driv_mailbox��
      driv.main();//��gen2driv_mailbox��ȡab�����Լ�������ٴ���interface����1000ns��Ȼ���interface��ȡreturn_value������display��ʾ
      //driver��main����1000ns��ʱ
      in_mon.main();
      mon.main();//��interface��ȡ���������ȷ��Լ������Ȼ��ѽ��put��mon2scb_mailbox
      end
  endtask
  
  task post_test();
  endtask  
  
  //run task
  task run;
	  $display("pre_test");
    pre_test();
	  $display("test");
    test();
	  $display("post_test");
    post_test();
	  $display("finish");
    $finish;
  endtask
  
endclass
