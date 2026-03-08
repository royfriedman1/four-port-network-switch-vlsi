typedef struct packed {
	logic        valid;
	logic [3:0]  source;
	logic [3:0]  target;
	logic [7:0]  data;
} packet_t;