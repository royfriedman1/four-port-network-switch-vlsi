class sequencer extends component_base;
	
	// Properties
	mailbox #(packet) seq2driver_mbx;  // Connection to driver/checker
	//mailbox #(packet) seq2checker_mbx;
	int port_id;            // Identity of this sequencer (0-3)
	
	// Constructor:
	function new(string name, component_base parent = null);
		super.new(name, parent); 
	endfunction
	
	// Configure: Called by the Agent to provide necessary handles
	function void configure(int id, mailbox #(packet) seq2driver_mbx);
		this.port_id     = id;
		this.seq2driver_mbx         = seq2driver_mbx;
		//this.seq2checker_mbx = seq2checker_mbx;
	endfunction
	
	// Main execution task
	task run(int num_packets);
		packet pkt; 
		
		// Sanity check to prevent null pointer errors
		if (seq2driver_mbx == null) $fatal("Sequencer %s: driver mailbox is null!", pathname());
		//if (seq2checker_mbx == null) $fatal("Sequencer %s: checker mailbox is null!", pathname());
		
		$display("%0t | %s | Started. Generating %0d packets.", $time, pathname(), num_packets);
		
		repeat(num_packets) begin
			pkt = new(); 
			
			// Randomize: source must match the port_id bit (One-hot)
			// Example: port_id 0 -> source 4'b0001 (1)
			// Example: port_id 2 -> source 4'b0100 (4)
			if (pkt.randomize() with { source == (4'b0001 << port_id); }) begin
				seq2driver_mbx.put(pkt);
				//seq2checker_mbx.put(pkt);
			end else begin
				$error("%0t | %s | Randomization failed!", $time, pathname());
			end
		end
		
		$display("%0t | %s | Finished.", $time, pathname());
	endtask
	
endclass