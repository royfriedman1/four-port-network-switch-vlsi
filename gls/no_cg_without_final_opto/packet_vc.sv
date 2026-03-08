
class packet_vc extends component_base;
	
	// Internal components
	agent agt_h;
	
	// Virtual Interface handle
	virtual port_if vif;
	virtual debug_if dbg_vif;
	
	// Configuration state
	int port_id;
	
	// Mailboxes created inside new()
	mailbox #(packet) expected2driver_mbx;
	mailbox #(packet) monitor2checker_in_mb;
	mailbox #(packet) moniter2checker_out_mb;
	
	// Constructor
	
	function new(string n, component_base p = null);
		super.new(n, p);
		
		
	endfunction
	
	
	// Configure
	
	function void configure(virtual port_if v,
							virtual debug_if dbg_vif,
							int id,
							mailbox #(packet) expected2driver_mbx,
							mailbox #(packet) moniter2checker_out_mb,
							mailbox #(packet) monitor2checker_in_mb);
		this.vif     = v;
		this.dbg_vif = dbg_vif;
		this.port_id = id;
		this.expected2driver_mbx = expected2driver_mbx;
		this.moniter2checker_out_mb = moniter2checker_out_mb;
		this.monitor2checker_in_mb = monitor2checker_in_mb;
		
		agt_h = new("agent", this);
		// Pass configuration and mailboxes down to the agent
		agt_h.configure(
				this.vif,
				this.dbg_vif,
				this.port_id,
				this.expected2driver_mbx,
				this.monitor2checker_in_mb,
				this.moniter2checker_out_mb
			  );
	endfunction

	
	// Run
	task run(int num_packets);
		// Launch the agent's processes in the background
		fork
			agt_h.run(num_packets);
		join_none
	endtask
	
endclass