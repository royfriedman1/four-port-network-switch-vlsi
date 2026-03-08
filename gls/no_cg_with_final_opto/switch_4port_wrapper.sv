module switch_4port_wrapper (
	input  logic clk,
	input  logic rst_n,
	port_if ports [3:0]
  );

	// -----------------------
	// Flattened nets (per port)
	// -----------------------
	wire        p_valid_in   [3:0];
	wire [3:0]  p_source_in  [3:0];
	wire [3:0]  p_target_in  [3:0];
	wire [7:0]  p_data_in    [3:0];

	wire        p_valid_out  [3:0];
	wire [3:0]  p_source_out [3:0];
	wire [3:0]  p_target_out [3:0];
	wire [7:0]  p_data_out   [3:0];

	// TB/interface -> Gate (inputs), Gate -> TB/interface (outputs)
	genvar i;
	generate
	  for (i=0; i<4; i++) begin : GEN_INOUT_MAP
		assign p_valid_in[i]   = ports[i].valid_in;
		assign p_source_in[i]  = ports[i].source_in;
		assign p_target_in[i]  = ports[i].target_in;
		assign p_data_in[i]    = ports[i].data_in;

		assign ports[i].valid_out  = p_valid_out[i];
		assign ports[i].source_out = p_source_out[i];
		assign ports[i].target_out = p_target_out[i];
		assign ports[i].data_out   = p_data_out[i];
	  end
	endgenerate

	// -----------------------
	// Gate-level netlist instance (MATCH NETLIST PORT NAMES)
	// -----------------------
	switch_4port u_gate (
	  .clk   ( clk   ),
	  .rst_n ( rst_n ),

	  // PORT 3
	  .\ports[3].clk       ( clk ),
	  .\ports[3].rst_n     ( rst_n ),
	  .\ports[3].valid_in  ( p_valid_in[3] ),
	  .\ports[3].source_in ( p_source_in[3] ),
	  .\ports[3].target_in ( p_target_in[3] ),
	  .\ports[3].data_in   ( p_data_in[3] ),
	  .\ports[3].valid_out ( p_valid_out[3] ),
	  .\ports[3].source_out ( p_source_out[3] ),
	  .\ports[3].target_out ( p_target_out[3] ),
	  .\ports[3].data_out  ( p_data_out[3] ),

	  // PORT 2
	  .\ports[2].clk       ( clk ),
	  .\ports[2].rst_n     ( rst_n ),
	  .\ports[2].valid_in  ( p_valid_in[2] ),
	  .\ports[2].source_in ( p_source_in[2] ),
	  .\ports[2].target_in ( p_target_in[2] ),
	  .\ports[2].data_in   ( p_data_in[2] ),
	  .\ports[2].valid_out  ( p_valid_out[2] ),
	  .\ports[2].source_out ( p_source_out[2] ),
	  .\ports[2].target_out ( p_target_out[2] ),
	  .\ports[2].data_out  ( p_data_out[2] ),

	  // PORT 1
	  .\ports[1].clk       ( clk ),
	  .\ports[1].rst_n     ( rst_n ),
	  .\ports[1].valid_in  ( p_valid_in[1] ),
	  .\ports[1].source_in ( p_source_in[1] ),
	  .\ports[1].target_in ( p_target_in[1] ),
	  .\ports[1].data_in   ( p_data_in[1] ),
	  .\ports[1].valid_out ( p_valid_out[1] ),
	  .\ports[1].source_out ( p_source_out[1] ),
	  .\ports[1].target_out ( p_target_out[1] ),
	  .\ports[1].data_out  ( p_data_out[1] ),

	  // PORT 0
	  .\ports[0].clk       ( clk ),
	  .\ports[0].rst_n     ( rst_n ),
	  .\ports[0].valid_in  ( p_valid_in[0] ),
	  .\ports[0].source_in ( p_source_in[0] ),
	  .\ports[0].target_in ( p_target_in[0] ),
	  .\ports[0].data_in   ( p_data_in[0] ),
	  .\ports[0].valid_out ( p_valid_out[0] ),
	  .\ports[0].source_out ( p_source_out[0] ),
	  .\ports[0].target_out ( p_target_out[0] ),
	  .\ports[0].data_out  ( p_data_out[0] )
	);

  endmodule
