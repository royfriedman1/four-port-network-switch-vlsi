class monitor extends component_base;
	
	// ------------------------------------------------------------
	// Type Definitions
	// ------------------------------------------------------------
	typedef enum {S_SINGLE, S_MULTICAST, S_BROADCAST} cov_pkt_type_e;
	
	// ------------------------------------------------------------
	// Connections & Config
	// ------------------------------------------------------------
	virtual port_if vif;
	virtual debug_if dbg_vif;
	
	int unsigned port_id;
	mailbox #(packet) mon2sb_in_mbx;  // For Expected packets (Scoreboard Input)
	mailbox #(packet) mon2sb_out_mbx; // For Actual packets (Scoreboard Output)
	
	// ------------------------------------------------------------
	// Local Variables for Coverage Sampling
	// ------------------------------------------------------------
	bit prev_valid_out;
	int unsigned in_accepted_cnt;
	
	// ------------------------------------------------------------
	// Coverage Groups
	// ------------------------------------------------------------
	
	// ============================================================
	// INPUT coverage per-port (monitor instance == one input port)
	// ============================================================
	covergroup cg_in_cov with function sample(
			logic [3:0] src,
			logic [3:0] tgt,
			bit         accept,
			int         port_id
	);
		option.per_instance = 1;
		
		// --- classify target by number of destinations ---
		cp_tgt_cnt: coverpoint $countones(tgt) {
			bins single       = {1};
			bins multicast    = {[2:3]};
			bins bcast        = {4};
			illegal_bins zero = {0};
		}
		
		cp_src_match_port: coverpoint (($countones(src) == 1)	&& src[port_id]==1) {
			bins ok = {1};
			illegal_bins illegal = {0};
		}
		
		// --- illegal pattern: source included in target (except broadcast) ---
		cp_src_in_tgt: coverpoint (((tgt & src) != 0) && (tgt != 4'b1111)) {
			bins ok     = {0};
			illegal_bins illegal= {1};
		}
		
		cp_accept_drop: coverpoint accept {
			bins accepted = {1};
			bins drop = {0};
		}
		
		cp_single_dest: coverpoint tgt iff ($countones(tgt)==1) {
			bins d_0001 = {4'b0001};
			bins d_0010 = {4'b0010};
			bins d_0100 = {4'b0100};
			bins d_1000 = {4'b1000};
			
			// ignore loopback single per input port
			illegal_bins lb_p0 = {4'b0001} iff (port_id==0);
			illegal_bins lb_p1 = {4'b0010} iff (port_id==1);
			illegal_bins lb_p2 = {4'b0100} iff (port_id==2);
			illegal_bins lb_p3 = {4'b1000} iff (port_id==3);
		}
		
		cp_mcast_mask: coverpoint tgt iff ($countones(tgt) inside {2,3}) {
			// 2 destinations (6)
			bins d_0011 = {4'b0011};
			bins d_0101 = {4'b0101};
			bins d_1001 = {4'b1001};
			bins d_0110 = {4'b0110};
			bins d_1010 = {4'b1010};
			bins d_1100 = {4'b1100};
			
			// 3 destinations (4)
			bins d_0111 = {4'b0111};
			bins d_1011 = {4'b1011};
			bins d_1101 = {4'b1101};
			bins d_1110 = {4'b1110};
			
			// ignore loopback masks per input port
			illegal_bins lbm_p0 = {4'b0011,4'b0101,4'b1001,4'b0111,4'b1011,4'b1101} iff (port_id==0);
			illegal_bins lbm_p1 = {4'b0011,4'b0110,4'b1010,4'b0111,4'b1011,4'b1110} iff (port_id==1);
			illegal_bins lbm_p2 = {4'b0101,4'b0110,4'b1100,4'b0111,4'b1101,4'b1110} iff (port_id==2);
			illegal_bins lbm_p3 = {4'b1001,4'b1010,4'b1100,4'b1011,4'b1101,4'b1110} iff (port_id==3);
		}
		
		
		
		cp_bcast: coverpoint tgt { bins d_1111 = {4'b1111}; }
		
		// accepted-only coverpoint
		cp_accept_ok: coverpoint accept {
			bins accepted = {1};
		}
		
		x_single_acc : cross cp_single_dest, cp_accept_ok;
		x_mcast_acc  : cross cp_mcast_mask,  cp_accept_ok;
		
	endgroup
	
	
	
	// 2. OUTPUT Coverage: Packet types observed at output
	covergroup cg_out_cov with function sample(cov_pkt_type_e t,bit is_b2b, bit [3:0] src_out);
		option.per_instance = 1;
		
		cp_type: coverpoint t {
			bins single = {S_SINGLE};
			bins multi  = {S_MULTICAST};
			bins bcast  = {S_BROADCAST};
		}
		
		cp_b2b: coverpoint is_b2b {
			bins no  = {0};
			bins yes = {1};
		}
		
		x_type_b2b : cross cp_type, cp_b2b;
		
		cp_src: coverpoint src_out {
			bins p0 = {4'b0001};
			bins p1 = {4'b0010};
			bins p2 = {4'b0100};
			bins p3 = {4'b1000};
			illegal_bins not_onehot = default;
		}
		
	endgroup
	
	
	
	// ------------------------------------------------------------
	// Constructor
	// ------------------------------------------------------------
	function new(string n, component_base p=null);
		super.new(n, p);
		cg_in_cov = new();
		cg_out_cov  = new();
		prev_valid_out = 0;
		in_accepted_cnt = 0;
		
	endfunction
	
	// ------------------------------------------------------------
	// Configure
	// ------------------------------------------------------------
	function void configure(
			virtual port_if   vif,
			virtual debug_if  dbg_vif,
			int unsigned      port_id,
			mailbox #(packet) mon2sb_out_mbx,
			mailbox #(packet) mon2sb_in_mbx
	);
		this.vif = vif;
		this.dbg_vif = dbg_vif;
		this.port_id = port_id;
		this.mon2sb_out_mbx = mon2sb_out_mbx;
		this.mon2sb_in_mbx  = mon2sb_in_mbx;
	endfunction
	
	// ------------------------------------------------------------
	// Helper: Classify Packet Type
	// ------------------------------------------------------------
	function cov_pkt_type_e get_type_from_tgt(bit [3:0] tgt);
		if (tgt == 4'b1111) return S_BROADCAST;
		if ($countones(tgt) == 1) return S_SINGLE;
		return S_MULTICAST;
	endfunction
	
	// ------------------------------------------------------------
	// Helper: Legal function
	// ------------------------------------------------------------
	function automatic logic is_packet_legal(input logic [3:0] target,
			input logic                                  [3:0] source);
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
	
	
	
	function void log(string level, string tag, string msg);
		$display("%0t | %-5s | P%0d | %-4s | %s",
				$time, level, port_id, tag, msg);
	endfunction
	
	// ------------------------------------------------------------
	// Run Task
	// ------------------------------------------------------------
	task run();
		if (vif == null) $fatal("%s: vif is null", pathname());
		
		// Wait for Reset release
		wait (vif.rst_n === 1);
		@(posedge vif.clk);
		
		fork
			// --- THREAD 1: coverage_output ---
			coverage_output();
			
			// --- THREAD 2: Input Monitor (Expected Packets) ---
			monitor_input_expected();
			
			// --- THREAD 3: Output Monitor (Actual Packets) ---
			monitor_output_actual();
			
			// --- THREAD 4: Output Assertions ---
			output_assertion();
		join_none
	endtask
	
	// ------------------------------------------------------------
	// Task: Monitor Inputs (Expected)
	// Only sends to checker if the FIFO is NOT full.
	// ------------------------------------------------------------
	task monitor_input_expected();
		packet p_in;
		logic [3:0] s;
		logic [3:0] t;
		logic [7:0] d;
		logic       wr_accept;
		
		forever begin
			@(posedge vif.clk);
			if (!vif.rst_n) continue;
			
			if (vif.valid_in === 1'b1) begin
				s = vif.source_in;
				t = vif.target_in;
				d = vif.data_in;
				
				// Full / Not accepted
				wr_accept = dbg_vif.wr_accept;
				
				cg_in_cov.sample(s,t,wr_accept,port_id);
				
				if (!wr_accept) begin
					log("WARN","MONI",
							$sformatf("DROP_FULL src=%b tgt=%b data=%02h", s,t,d));
					continue;
				end
				
				
				in_accepted_cnt++;
				
				// 4) Accepted -> enqueue expected
				p_in = new($sformatf("mon_in_p%0d", port_id), port_id);
				p_in.source = s;
				p_in.target = t;
				p_in.data   = d;
				mon2sb_in_mbx.put(p_in);
				
				log("INFO","MONI",
						$sformatf("ENQ_EXP src=%b tgt=%b data=%02h cnt=%0d",
						s,t,d,in_accepted_cnt));
			end
		end
	endtask
	
	
	// ------------------------------------------------------------
	// Task: Monitor Outputs (Actual)
	// Collects packets exiting the DUT.
	// ------------------------------------------------------------
	task monitor_output_actual();
		packet p_out;
		
		forever begin
			
			vif.collect_packet(p_out);
			
			if (p_out == null) begin
				$error("%0t | MON[%0d] | collect_packet returned null", $time, port_id);
				continue;
			end
			
			// Send to Checker
			mon2sb_out_mbx.put(p_out);
			
			log("INFO","MONO",
					$sformatf("OUT src=%b tgt=%b data=%02h",
					p_out.source, p_out.target, p_out.data));
		end
	endtask
	
	
	// ------------------------------------------------------------
	// Output coverage task
	// - Samples output packet type (single/multicast/broadcast)
	// - Samples back-to-back behavior on output (is_b2b)
	// NOTE:
	//   is_b2b is defined as: valid_out is asserted in two consecutive cycles
	// ------------------------------------------------------------
	task coverage_output();
		bit is_b2b;
		
		forever begin
			@(posedge vif.clk);
			
			// Reset handling
			if (!vif.rst_n) begin
				prev_valid_out = 1'b0;
				continue;
			end
			
			// Only sample when an output packet is valid this cycle
			if (vif.valid_out === 1'b1) begin
				
				// Back-to-back means: valid_out was also high in the previous cycle
				is_b2b = prev_valid_out;
				
				// Sample both packet type and B2B in the SAME sample call
				cg_out_cov.sample(
						get_type_from_tgt(vif.target_out),is_b2b,vif.source_out
						);
				
				// Update history for next cycle
				prev_valid_out = 1'b1;
			end
			else begin
				// No valid output this cycle -> reset B2B history
				prev_valid_out = 1'b0;
			end
		end
	endtask
	
	
	// ------------------------------------------------------------
	// Output Assertions
	// - Check output signals when valid_out is asserted
	// ------------------------------------------------------------
	task output_assertion();
		logic legal;
		
		forever begin
			@(posedge vif.clk);
			
			// Do not check during reset
			if (!vif.rst_n)
				continue;
			
			// Assertions are only relevant when output is valid
			if (vif.valid_out === 1'b1) begin
				
				// ------------------------------------------------------
				// Assertion 1:
				// When valid_out=1, output signals must not contain X/Z
				// ------------------------------------------------------
				assert (!$isunknown({vif.source_out, vif.target_out, vif.data_out}))
				else $error("%0t | OUT[%0d] X/Z on outputs when valid=1 | SRC=%b TGT=%b DATA=%02h",
						$time, port_id,
						vif.source_out, vif.target_out, vif.data_out);
				
				// ------------------------------------------------------
				// Assertion 2:
				// Output packet must obey source/target legality rules
				// ------------------------------------------------------
				legal = is_packet_legal(vif.target_out, vif.source_out);
				assert (legal)
				else $error("%0t | OUT[%0d] ILLEGAL packet observed | SRC=%b TGT=%b DATA=%02h",
						$time, port_id,
						vif.source_out, vif.target_out, vif.data_out);
				
				// ------------------------------------------------------
				// Assertion 3:
				// If packet is legal, this output port must be selected
				// in the target bitmap
				// ------------------------------------------------------
				if (legal) begin
					assert (vif.target_out[port_id] === 1'b1)
					else $error("%0t | OUT[%0d] BAD ROUTE: target does not include this port | SRC=%b TGT=%b DATA=%02h",
							$time, port_id,
							vif.source_out, vif.target_out, vif.data_out);
				end
				
				
				
				
			end // valid_out
		end // forever
	endtask
	
	
endclass