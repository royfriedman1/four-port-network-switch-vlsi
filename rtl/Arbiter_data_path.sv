
module Arbiter_data_path #(
	parameter AMOUNT_MASTER = 4
)
(
	input [$clog2(AMOUNT_MASTER)-1:0] round_robin_select,
	input [AMOUNT_MASTER-1:0] 		  valid,
	
	internal_if.slave  input_if [AMOUNT_MASTER-1:0],
	internal_if.master output_if	
);	
	
		logic [AMOUNT_MASTER-1:0][7:0] data_m;
		logic [AMOUNT_MASTER-1:0][3:0] source_m;
		logic [AMOUNT_MASTER-1:0][3:0] target_m;

		generate
			for (genvar m = 0; m < AMOUNT_MASTER; m++) begin : EXTRACT_FROM_IF
				assign data_m  [m] = input_if[m].data;
				assign source_m[m] = input_if[m].source;
				assign target_m[m] = input_if[m].target;

			end
		endgenerate
		
	always_comb begin
		
		output_if.valid  = 1'b0;
		output_if.data   = '0;
		output_if.source = '0;
		output_if.target = '0;
		
		output_if.valid  = valid      [round_robin_select];
		output_if.data   = data_m  	  [round_robin_select];
		output_if.source = source_m   [round_robin_select];
		output_if.target = target_m   [round_robin_select];
		
	end


endmodule