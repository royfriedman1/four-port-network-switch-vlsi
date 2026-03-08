module switch_test;
import packet_pkg::*;

// --------------------------------------------------------
// Clock & Reset
// --------------------------------------------------------
bit clk = 0; 
always #5 clk = ~clk; 
bit rst_n;

// --------------------------------------------------------
// Interface Array
// --------------------------------------------------------
localparam int N = 4;

port_if ports[N-1:0](.clk(clk), .rst_n(rst_n));
debug_if dbg_if[N-1:0]();


// --------------------------------------------------------
// Covergroups
// --------------------------------------------------------
//per input port
covergroup cg_fsm_states with function sample(int fsm_state);
	option.per_instance = 1;

	// ----------------------------
	// State coverage
	// ----------------------------
	cp_state : coverpoint fsm_state {
	  bins IDLE                     = {0};
	  bins PACKET_RECIVED           = {1};
	  bins SEE_IF_ALL_PACKET_PASSED = {2};
	  illegal_bins bad = default;
	}

	// ----------------------------
	// Transition coverage (per port instance)
	// NOTE: this is across consecutive samples of fsm_state
	// ----------------------------
	cp_state_trans : coverpoint fsm_state {

	  // ===== LEGAL transitions =====
	  bins legal0[] = (0 => 0), (0 => 1); // IDLE -> IDLE/RECIVED
	  bins legal1[] = (1 => 2);           // RECIVED -> All packet passed
	  bins legal2[] = (2 => 0), (2 => 1),(2=>2); // All packet passed -> IDLE/RECIVED

	  // ===== ILLEGAL transitions: anything else =====
	  illegal_bins illegal_any_other = default sequence;
	}

  endgroup
  covergroup cg_global with function sample(
		  bit is_multi,
		  bit input_contention,
		  bit in_activity,
		  bit out_activity
		);
		  option.per_instance = 1;

		  // sample outputs only when there was output activity
		  cp_multi_out : coverpoint is_multi iff (out_activity) {
			bins single_out = {0};
			bins multi_out  = {1};
		  }

		  // sample contention only when there was input activity
		  cp_in_cont : coverpoint input_contention iff (in_activity) {
			bins no_cont = {0};
			bins cont    = {1};
		  }

		  cx_both : cross cp_multi_out, cp_in_cont iff (in_activity && out_activity);

		endgroup

cg_fsm_states fsm_cvrg [N-1:0];
cg_global global_edge_inst;


// --------------------------------------------------------
// DUT Instantiation
// --------------------------------------------------------
switch_4port #(.NUM_OF_PORTS(4), .DEPTH(4)) u_switch_4port (
	.clk  (clk),
	.rst_n(rst_n),
	.ports(ports) 
);

// --------------------------------------------------------
// Verification Components
// --------------------------------------------------------
packet_vc vc[N]; 
mailbox #(packet) moniter2checker_out_mb[N];
mailbox #(packet) expected2driver_mbx[N];
mailbox #(packet) monitor2chcker_in;
checker_class chk;

localparam int BURST_LEN_port0 = 100; 
localparam int BURST_LEN_port1 = 100; 
localparam int BURST_LEN_port2 = 100; 
localparam int BURST_LEN_port3 = 100; 
// --------------------------------------------------------
// Main Test Flow
// --------------------------------------------------------
initial begin
	// Init Coverage and Mailboxes
	
	foreach (fsm_cvrg[i]) fsm_cvrg[i] = new();
	global_edge_inst = new();
	monitor2chcker_in = new();
	foreach(moniter2checker_out_mb[i]) moniter2checker_out_mb[i] = new();
	foreach(expected2driver_mbx[i]) expected2driver_mbx[i] = new();
	// Reset
	rst_n = 0; 
	repeat(3) @(posedge clk); 
	rst_n = 1;

	// Init Checker
	chk = new("checker", null);
	chk.configure(monitor2chcker_in, moniter2checker_out_mb);

	// Init VCs (Unrolled to avoid interface array index error)
	vc[0] = new("vc0", null); 
	vc[1] = new("vc1", null); 
	vc[2] = new("vc2", null);
	vc[3] = new("vc3", null);

	vc[0].configure(ports[0],dbg_if[0], 0, expected2driver_mbx[0], moniter2checker_out_mb[0],monitor2chcker_in);
	vc[1].configure(ports[1],dbg_if[1], 1, expected2driver_mbx[1], moniter2checker_out_mb[1],monitor2chcker_in);
	vc[2].configure(ports[2],dbg_if[2], 2, expected2driver_mbx[2], moniter2checker_out_mb[2],monitor2chcker_in);
	vc[3].configure(ports[3],dbg_if[3], 3, expected2driver_mbx[3], moniter2checker_out_mb[3],monitor2chcker_in);


	$display("[%0t] Starting Test...", $time);

	fork
		// Generator Threads
		begin
			fork
				vc[0].run(BURST_LEN_port0);
				vc[1].run(BURST_LEN_port1);
				vc[2].run(BURST_LEN_port2);
				vc[3].run(BURST_LEN_port3);
			join
			$display("[%0t] Packet generation finished.", $time);
		end

		// Checker Thread
		chk.run();
	join_none

	// Drain Phase
	$display("[%0t] Waiting for drain...", $time);
	repeat(500) @(posedge clk);

	// Final Report
	chk.final_check();
	chk.report();
	
	$finish;
end



// --------------------------------------------------------
// White-Box Coverage Sampling
// --------------------------------------------------------

bit prev_rst_n;

always_ff @(posedge clk) begin
  prev_rst_n <= rst_n;

  if (rst_n && prev_rst_n) begin
	logic [1:0] st0, st1, st2, st3;

	st0 = u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[0]
			.u_switch_port.u_Master_Control_unit.current_state;
	st1 = u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[1]
			.u_switch_port.u_Master_Control_unit.current_state;
	st2 = u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[2]
			.u_switch_port.u_Master_Control_unit.current_state;
	st3 = u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[3]
			.u_switch_port.u_Master_Control_unit.current_state;

	if (!$isunknown(st0)) fsm_cvrg[0].sample(int'(st0));
	if (!$isunknown(st1)) fsm_cvrg[1].sample(int'(st1));
	if (!$isunknown(st2)) fsm_cvrg[2].sample(int'(st2));
	if (!$isunknown(st3)) fsm_cvrg[3].sample(int'(st3));
  end
end



bit input_contention;
bit is_multi;
bit in_activity, out_activity;
int out_cnt;     
int req_cnt;     

always_ff @(posedge clk) begin
  if (rst_n) begin

	// -------------------------
	// Part A: outputs activity + multi-out
	// -------------------------
	out_cnt = 0;

	if (ports[0].valid_out) out_cnt++;
	if (ports[1].valid_out) out_cnt++;
	if (ports[2].valid_out) out_cnt++;
	if (ports[3].valid_out) out_cnt++;

	out_activity = (out_cnt > 0);
	is_multi     = (out_cnt > 1);

	// -------------------------
	// Part B: input contention + input activity
	// -------------------------
	input_contention = 1'b0;
	in_activity      = 1'b0;

	for (int j = 0; j < N; j++) begin
	  req_cnt = 0;

	  if (ports[0].valid_in && ports[0].target_in[j]) req_cnt++;
	  if (ports[1].valid_in && ports[1].target_in[j]) req_cnt++;
	  if (ports[2].valid_in && ports[2].target_in[j]) req_cnt++;
	  if (ports[3].valid_in && ports[3].target_in[j]) req_cnt++;

	  if (req_cnt > 0) in_activity = 1'b1;
	  if (req_cnt > 1) begin
		input_contention = 1'b1;
		break;
	  end
	end

	if (in_activity || out_activity) begin
		global_edge_inst.sample(is_multi, input_contention, in_activity, out_activity);

	end
  end
end





genvar i;
generate
  for (i=0; i<N; i++) begin : FIFO_FULL_SIGNAL
	assign dbg_if[i].full =
	  u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[i].u_switch_port.u_FIFO.full;

	assign dbg_if[i].wr_en =
	  u_switch_4port.SWITCH_UNIT_MASTER_CONTROL[i].u_switch_port.u_FIFO.wr_en;

	assign dbg_if[i].wr_accept = dbg_if[i].wr_en & ~dbg_if[i].full;
  end
endgenerate




endmodule