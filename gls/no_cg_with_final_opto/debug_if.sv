
interface debug_if ();
	logic  full;
	logic wr_en;
	logic wr_accept;
	logic [1:0] wr_ptr;
	logic [1:0] rd_ptr;
	
endinterface