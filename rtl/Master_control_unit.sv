`define IDLE 2'd0
`define PACKET_RECIVED 2'd1
`define CHECK_IF_ALL_PACKET_PASSED 2'd2

module Master_Control_unit #(
	parameter AMOUNT_SLAVE = 4

)
(
	input clk,
	input reset_n,
	input in_vld,
	input [AMOUNT_SLAVE-1:0] sent_vector,
	input [AMOUNT_SLAVE-1:0] target_vector,
	output in_rdy

);

	logic [1:0] current_state;
	logic [1:0] next_state;
	
	// Note that when the sent mask in each slave controller is getting 0 when the packet
	// has not passed which ensures that the sent_mask will not be set to unwanted values 
	// in the CHECK_IF_ALL_PACKET_PASSED state
	logic all_sent;
	assign all_sent = (sent_vector == target_vector);
	assign in_rdy =
			(current_state == `IDLE) ||
			( (current_state == `CHECK_IF_ALL_PACKET_PASSED) && all_sent );
	
	always_comb begin
		
		next_state = current_state;
	
		case (current_state)
			`IDLE: begin
			  if (in_vld)
				next_state = `PACKET_RECIVED;
			end

			`PACKET_RECIVED: begin
			  next_state = `CHECK_IF_ALL_PACKET_PASSED;
			end

			`CHECK_IF_ALL_PACKET_PASSED: begin
			  if (all_sent && in_vld)
				next_state = `PACKET_RECIVED;
			  else if (all_sent && !in_vld)
				next_state = `IDLE;
			  else
				next_state = `CHECK_IF_ALL_PACKET_PASSED;
			end
			
			default: next_state = `IDLE;
		  endcase
	
	end

	d_ff #(
		.DATA_WIDTH(2), 
		.INITIAL_VAL(0)) 
	u_d_ff (
		.clk    (clk    		),
		.reset_n(reset_n		),
		.din    (next_state     ),
		.en     (1'b1     		),
		.dout   (current_state  )
	);


	


endmodule