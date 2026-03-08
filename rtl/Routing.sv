
module Routing #(
	parameter AMOUNT_MASTER = 4,
	parameter AMOUNT_SLAVE = 4
)
(
	input       					  			   clk,
	input 			     			  			   rst_n,
	input 	[AMOUNT_SLAVE-1: 0] 	  			   is_full,
	input   [AMOUNT_MASTER-1:0] 				   in_rdy_m,
	output  [AMOUNT_MASTER-1:0][AMOUNT_SLAVE-1:0]  sent_mask_m,
	
	internal_if.slave 	input_if_m 	[AMOUNT_MASTER-1:0],
	internal_if.master  output_if_s [AMOUNT_SLAVE-1: 0]
);	

	wire [AMOUNT_MASTER-1:0] rdy_out_slave [AMOUNT_SLAVE-1:0];
	
	generate
		for (genvar i = 0 ; i < AMOUNT_SLAVE ; i++) begin : SLAVE_SWITCH
			arbiter #(
				.SLAVE_NUM(i),
				.AMOUNT_MASTER(AMOUNT_MASTER))
			u_arbiter (
				.clk             (clk      			    ),
				.reset_n         (rst_n     			),
				.input_if        (input_if_m		   	),
				.is_full         (is_full	   [i]     	),
				.output_if_s     (output_if_s  [i]		),
				.rdy_out_demux_d (rdy_out_slave[i]	    ),
				.in_rdy_m		 (in_rdy_m      		)
				
			);
			
		end
	endgenerate
	
	//Transpose
	generate
		for (genvar i = 0 ; i < AMOUNT_MASTER ; i++) begin : TARGET_FILTER
			for (genvar j = 0 ; j < AMOUNT_SLAVE ; j++) begin : FLIPING
				assign sent_mask_m[i][j] = rdy_out_slave[j][i];
			end
		end
	endgenerate
		


endmodule