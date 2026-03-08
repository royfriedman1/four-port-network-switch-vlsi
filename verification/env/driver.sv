
class driver extends component_base;
	
	//Properties
	mailbox #(packet) mbx;
	virtual port_if vif;
	int port_id;
	
	
	// Constructor
	function new(string name, component_base parent = null);
		super.new(name, parent);
		// Mailbox and VIF will be assigned during the configuration phase
	endfunction

	// Configure: Receives handles from the Agent
	function void configure(virtual port_if v, mailbox #(packet) m, int port_id);
		this.vif = v;
		this.mbx = m;
		this. port_id = port_id;
	endfunction
	
	function void log(string level, string tag, string msg);
		$display("%0t | %-5s | P%0d | %-4s | %s", $time, level, port_id, tag, msg);
	  endfunction


	// Execution: Retrieves packets and uses Interface BFM to drive them
	task run();
		packet pkt;
		int gap;

		if (vif == null || mbx == null)
		  $fatal("%0t | %s | VIF or Mailbox is null in Driver!", $time, pathname());

		forever begin
		  mbx.get(pkt);

		  // random gap BEFORE sending (optional but nice)
		  gap = $urandom_range(0,1);
		  repeat (gap) @(posedge vif.clk);

		  vif.drive_packet(pkt);

		  log("INFO","DRV",
				  $sformatf("src=%b tgt=%b data=%02h gap=%0d",
							pkt.source, pkt.target, pkt.data, gap));
		end
	  endtask

	
endclass