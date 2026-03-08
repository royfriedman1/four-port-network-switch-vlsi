
module Arbiter_control_unit #(
	parameter SLAVE_NUM = 0,
	parameter AMOUNT_MASTER = 4
)
(
	
	input 								clk,
	input 								reset_n,
	input 								is_full,
	input  [AMOUNT_MASTER-1:0] 	    	in_rdy_m,
	output [$clog2(AMOUNT_MASTER)-1:0] 	round_robin_select,
	output [AMOUNT_MASTER-1:0] 			valid_m,
	output [AMOUNT_MASTER-1:0] 			rdy_out_demux_d,
	
	//All input interfaces of each master comes out of target_filter module
	//Note that the target signal in each interface is the masked one 
	internal_if.slave  input_if [AMOUNT_MASTER-1:0]


);
	wire [AMOUNT_MASTER-1:0] rdy_out_demux; 
	
	generate 
		for (genvar i = 0; i < AMOUNT_MASTER ; i++) begin : SELECT_RDY
			assign rdy_out_demux[i] = (round_robin_select == $clog2(AMOUNT_MASTER)'(i)) ? !is_full : 1'b0;
			
			//overall AMOUNT_MASTER d_ff
			logic clear_sent_i;
			assign clear_sent_i = in_rdy_m[i];

			d_ff #(
				.INITIAL_VAL(1'b0),
				.DATA_WIDTH(1)
			) u_d_ff (
				.clk    (clk),
				.reset_n(reset_n),
				.din    ( clear_sent_i ? 1'b0 : (rdy_out_demux[i] & valid_m[i]) ),
				.en     ( clear_sent_i ? 1'b1 : valid_m[i] ),
				.dout   (rdy_out_demux_d[i])
			);
			
			 assign valid_m[i] = input_if[i].valid & input_if[i].target[SLAVE_NUM] & (!rdy_out_demux_d[i]) & !clear_sent_i;	
			 
		end			
	endgenerate
	
	
	
	//Round robin implementation
	wire [$clog2(AMOUNT_MASTER)-1:0] grant;
	wire [$clog2(AMOUNT_MASTER)-1:0] prev_grant;

		
	
	d_ff #(
		.DATA_WIDTH($clog2(AMOUNT_MASTER)), 
		.INITIAL_VAL(0)) 
	round_robin_grant (
		.clk    (clk     	  ),
		.reset_n(reset_n 	  ),
		.din    (grant	      ),
		.en     (!is_full 	  ),
		.dout   (prev_grant)
	);
	
	
	assign grant = (valid_m[(prev_grant+2'd1)%4]==1'b1)? (prev_grant+2'd1)%4 :
				   (valid_m[(prev_grant+2'd2)%4]==1'b1)? (prev_grant+2'd2)%4 :
				   (valid_m[(prev_grant+2'd3)%4]==1'b1)? (prev_grant+2'd3)%4 :
				   prev_grant%4;
	

	assign round_robin_select = grant;

endmodule