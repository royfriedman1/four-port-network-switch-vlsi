class checker_class extends component_base;

	// ============================================================
	// Parameters / Connections
	// ============================================================
	localparam int NUM_PORTS = 4;

	//sequencer seq_h;               // kept to match the given skeleton
	//monitor   mon_h[NUM_PORTS];    // kept to match the given skeleton

	// ============================================================
	// Shared data: expected per output port + statistics
	// ============================================================
	packet expected_q[NUM_PORTS][$];

	int unsigned exp_added[NUM_PORTS];
	int unsigned act_seen [NUM_PORTS];
	int unsigned pass_cnt [NUM_PORTS];
	int unsigned fail_cnt [NUM_PORTS];

	// ------------------------------------------------------------
	// Constructor: create checker component and set hierarchy
	// ------------------------------------------------------------
	function new(string n, component_base p=null);
		super.new(n,p);
	endfunction


	// ============================================================
	// =====================  REFERENCE MODEL  ====================
	// ============================================================

	mailbox #(packet) exp_mbx;

	// Connect mailbox carrying packets sent into the DUT
	function void configure_expected(mailbox #(packet) exp_mbx);
		this.exp_mbx = exp_mbx;
	endfunction

	// Check whether an input packet obeys source/target legality rules
	function logic is_packet_legal(input logic [3:0] target,
			input logic                        [3:0] source);
		logic source_valid;
		logic is_all_one;
		logic is_not_zero;
		logic source_in_target;
		logic target_valid;
		
		source_valid     = ($countones(source) == 1);
		is_all_one       = (target == 4'b1111);
		is_not_zero      = (target != 4'b0000);
		source_in_target = ((target & source) != 4'b0000);
		
		target_valid = is_all_one || (is_not_zero && !source_in_target);
		return target_valid && source_valid;
	endfunction

	// Insert a legal packet into expected queues of all targeted output ports
	function void add_expected(packet p);
		for (int outp = 0; outp < NUM_PORTS; outp++) begin
			if (p.target[outp]) begin
				expected_q[outp].push_back(p);
				exp_added[outp]++;
			end
		end
	endfunction

	// Collect input packets, validate them, and update the reference model
	task expected_collector();
		packet p;
		forever begin
			exp_mbx.get(p);
			
			if (!is_packet_legal(p.target, p.source)) begin
				$error("%0t | ILLEGAL INPUT | SRC=%b TGT=%b DATA=%02h",
						$time, p.source, p.target, p.data);
				continue;
			end
			
			add_expected(p);
		end
	endtask


	// ============================================================
	// =======================  SCOREBOARD  =======================
	// ============================================================

	mailbox #(packet) mon2sb_mbx[NUM_PORTS];

	// Connect mailboxes carrying packets observed at DUT outputs
	function void configure_actual(mailbox #(packet) mon2sb_mbx[NUM_PORTS]);
		for (int i = 0; i < NUM_PORTS; i++) begin
			this.mon2sb_mbx[i] = mon2sb_mbx[i];
		end
	endfunction

	// Convenience function to configure both expected and actual connections
	function void configure(mailbox #(packet) exp_mbx,
			mailbox #(packet)                 mon2sb_mbx [NUM_PORTS]);
		configure_expected(exp_mbx);
		configure_actual(mon2sb_mbx);
	endfunction

	// Compare expected and actual packets for full field equality
	function bit packets_match(packet exp, packet act);
		return (exp.source == act.source) &&
				(exp.target == act.target) &&
				(exp.data   == act.data);
	endfunction

	// Search for a matching expected packet in a given output queue
	function int find_match_idx(int outp, packet act);
		for (int i = 0; i < expected_q[outp].size(); i++) begin
			if (packets_match(expected_q[outp][i], act))
				return i;
		end
		return -1;
	endfunction

	// Check actual packets from one output port against its expected queue
	task check_out_port(int outp);
		packet act;
		int idx;
		
		if (mon2sb_mbx[outp] == null)
			$fatal("%s: mon2sb_mbx[%0d] is null", pathname(), outp);
		
		forever begin
			mon2sb_mbx[outp].get(act);
			act_seen[outp]++;
			
			idx = find_match_idx(outp, act);
			
			if (idx < 0) begin
				fail_cnt[outp]++;
				$error("%0t | SB[%0d] UNEXPECTED | SRC=%b | TGT=%b | DATA=%02h",
						$time, outp, act.source, act.target, act.data);
			end
			else begin
				expected_q[outp].delete(idx);
				pass_cnt[outp]++;
			end
		end
	endtask

	// ============================================================
	// Run
	// ============================================================
	// Start reference-model collection and per-output scoreboard checking
	task run();
		fork
			expected_collector();
			check_out_port(0);
			check_out_port(1);
			check_out_port(2);
			check_out_port(3);
		join_none
	endtask



	// ============================================================
	// Report
	// ============================================================
	
	function void log(string level, string tag, string msg);
		$display("%0t | %-5s | %-4s | %s", $time, level, tag, msg);
	endfunction
	
	
	// Final consistency check to detect missing packets per output port
	function void final_check();
		for (int outp = 0; outp < NUM_PORTS; outp++) begin
			if (expected_q[outp].size() != 0) begin
				$error("[%s] OUT%0d: MISSING packets (expected_left=%0d)",
						pathname(), outp, expected_q[outp].size());
				fail_cnt[outp] += expected_q[outp].size();
			end
		end
	endfunction

	// Print a concise per-output scoreboard summary
	function void report();
		for (int outp = 0; outp < NUM_PORTS; outp++) begin
			$display("[%s] OUT%0d: exp_added=%0d act_seen=%0d pass=%0d fail=%0d exp_left=%0d",
					pathname(), outp,
					exp_added[outp], act_seen[outp],
					pass_cnt[outp], fail_cnt[outp],
					expected_q[outp].size());
		end
	endfunction
	endclass

