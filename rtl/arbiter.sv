
module arbiter #(
	parameter SLAVE_NUM = 0,
	parameter AMOUNT_MASTER = 4
)
(
	input       					clk,
	input 							reset_n,
	input 							is_full, //coming out of slave's FIFO
	input  [AMOUNT_MASTER-1:0] 	    in_rdy_m,
	output [AMOUNT_MASTER-1:0]  	rdy_out_demux_d,

	
	
	internal_if.slave  input_if [AMOUNT_MASTER-1:0],
	internal_if.master output_if_s
	
);

	wire [$clog2(AMOUNT_MASTER)-1:0] round_robin_select;
	wire [AMOUNT_MASTER-1:0] 		 valid_m;

	 Arbiter_data_path #(
		 .AMOUNT_MASTER(AMOUNT_MASTER))
	 u_Arbiter_data_path (
	 	.round_robin_select(round_robin_select),
	 	.valid             (valid_m           ),
	 	.input_if          (input_if          ),
	 	.output_if         (output_if_s       )
	 );


	 Arbiter_control_unit #(
		 .SLAVE_NUM(SLAVE_NUM), 
		 .AMOUNT_MASTER(AMOUNT_MASTER))	 
	 u_Arbiter_control_unit (
	 	.clk               (clk               ),
	 	.reset_n           (reset_n           ),
	 	.is_full           (is_full           ),
	 	.round_robin_select(round_robin_select),
		.input_if          (input_if          ),
		.valid_m		   (valid_m			  ),
		.in_rdy_m 		   (in_rdy_m		  ),
		.rdy_out_demux_d   (rdy_out_demux_d   )
	 );

endmodule