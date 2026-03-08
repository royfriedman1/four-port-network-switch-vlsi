
module switch_4port #(
	parameter int NUM_OF_PORTS  = 4,
	parameter int AMOUNT_MASTER = NUM_OF_PORTS,
	parameter int AMOUNT_SLAVE  = NUM_OF_PORTS,
	parameter int DEPTH         = 4
	)
	(
		input  logic                         clk,
		input  logic                         rst_n,

		// Array of external bidirectional ports (per master / per slave index)
		port_if                              ports [AMOUNT_MASTER - 1:0]
	);

	wire logic[AMOUNT_MASTER - 1:0][AMOUNT_SLAVE - 1:0] sent_mask_m;
	wire logic[AMOUNT_MASTER - 1:0]                     in_rdy_m;

	internal_if input_if_m  [AMOUNT_MASTER - 1:0]();
	internal_if output_if_s [AMOUNT_SLAVE - 1: 0]();


	generate
		for (genvar i = 0; i < AMOUNT_MASTER; i++) begin : SWITCH_UNIT_MASTER_CONTROL

			switch_port #(
				.MASTER_NUM(i),
				.AMOUNT_SLAVE(AMOUNT_SLAVE))
			u_switch_port(
					.clk(clk),
					.rst_n(rst_n),
					.valid_in         (ports[i].valid_in   ),
					.source_in        (ports[i].source_in  ),
					.target_in        (ports[i].target_in  ),
					.data_in          (ports[i].data_in    ),
					.valid_out        (input_if_m[i].valid ),
					.source_out       (input_if_m[i].source),
					.target_out       (input_if_m[i].target),
					.data_out         (input_if_m[i].data  ),
					.sent_mask_m      (sent_mask_m      [i]),
					.in_rdy_m         (in_rdy_m         [i])
				);

		end
	endgenerate

	Routing #(
		.AMOUNT_MASTER(AMOUNT_MASTER),
		.AMOUNT_SLAVE(AMOUNT_SLAVE)
		) u_Routing(
			.clk              (clk                 ),
			.rst_n            (rst_n               ),
			.is_full          (AMOUNT_SLAVE'(1'b0) ),
			.sent_mask_m      (sent_mask_m         ),
			.input_if_m       (input_if_m.slave    ),
			.in_rdy_m         (in_rdy_m            ),
			.output_if_s      (output_if_s.master  ) 
		);

	// ------------------------------------------------------------
	// Output connection per slave
	//  - For now, no FIFO at the output:
	//    we simply drive ports[i].*_out directly from output_if_s[i]
	// ------------------------------------------------------------
	generate
		for (genvar i = 0; i < AMOUNT_SLAVE; i++) begin : OUTPUT_PER_SLAVE
			assign ports[i].data_out   = output_if_s[i].data;
			assign ports[i].target_out = output_if_s[i].target;
			assign ports[i].source_out = output_if_s[i].source;
			assign ports[i].valid_out  = output_if_s[i].valid;
		end
	endgenerate

endmodule
