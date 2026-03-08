class agent extends component_base;
	
	// --- Components ---
	sequencer seq_h;
	driver    drv_h;
	monitor   mon_h;
	
	// --- Configuration Variables ---
	virtual port_if vif;
	virtual debug_if dbg_vif;

	int port_id;

	mailbox #(packet) expected2driver_mbx;
	mailbox #(packet) monitor2checker_in_mb;
	mailbox #(packet) moniter2checker_out_mb;
	
	// --- Constructor: Only creates objects ---
	function new(string n, component_base p = null);
		super.new(n, p);
		// We create the objects here, but we connect them in configure()
		seq_h = new("sequencer", this);
		drv_h = new("driver",    this);
		mon_h = new("monitor",   this);
	endfunction
	
	// Configuration:
	function void configure(
			virtual port_if   vif,
			virtual debug_if dbg_vif,
			int               port_id,
			mailbox #(packet) exp_driver_mb,
			mailbox #(packet) monitor2checker_in_mb,
			mailbox #(packet) moniter2checker_out_mb);
		
		this.vif                    = vif;
		this.dbg_vif                = dbg_vif;
		this.port_id                = port_id;
		this.expected2driver_mbx    = exp_driver_mb;
		this.monitor2checker_in_mb  = monitor2checker_in_mb;
		this.moniter2checker_out_mb = moniter2checker_out_mb;
		
		// Pass relevant handles to sub-components
		// Note: Check your sequencer/driver/monitor configure signatures
		seq_h.configure(this.port_id, this.expected2driver_mbx);
		drv_h.configure(this.vif,this.expected2driver_mbx,this.port_id);
		mon_h.configure(this.vif,
						this.dbg_vif,
						this.port_id,
				        this.moniter2checker_out_mb,
				        this.monitor2checker_in_mb);
	endfunction
	
	// --- Execution Phase ---
	task run(int num_packets);
		fork
			drv_h.run();
			mon_h.run();
		join_none
		seq_h.run(num_packets);
	endtask
	
endclass