
interface internal_if ();
	logic        valid;
	logic [3:0]  source;
	logic [3:0]  target;
	logic [7:0]  data;

	modport master (
		output valid,
		output source,
		output target,
		output data	
	);
	
	modport slave (
		input valid,
		input source,
		input target,
		input data
	);
	

endinterface


