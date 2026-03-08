module switch_port #(
	parameter NUM_PORTS = 4,
	parameter AMOUNT_SLAVE = NUM_PORTS,
	parameter MASTER_NUM = NUM_PORTS
)
(
	input  logic        			 clk,
	input  logic        			 rst_n,
	input  logic        			 valid_in,
	input  logic [3:0]  			 source_in,
	input  logic [3:0]  			 target_in,
	input  logic [7:0]  			 data_in,
	input  logic [AMOUNT_SLAVE-1:0]  sent_mask_m, //added signal
	output logic        			 valid_out,
	output logic [3:0]  			 source_out,
	output logic [3:0]  			 target_out,
	output logic [7:0]  			 data_out,
	output logic 					 in_rdy_m //added signal
  );
   
	function logic is_packet_legal(input [3:0] target, [3:0] source);
		//returns 1 if legal, otherwise 0
		logic is_all_one;
		logic is_not_zero;
		logic source_in_target;
		logic target_valid;
		logic source_valid;

		source_valid      = ($countones(source) == 1);

		is_all_one        = (target == 4'b1111 );
		is_not_zero       = (target != 4'b0000 );
		source_in_target  = (target[MASTER_NUM]);

		target_valid      = is_all_one || (is_not_zero && ~source_in_target);

		return target_valid && source_valid;
	endfunction

	
   packet_t packet_in;
   packet_t packet_out;
   
  logic        empty;
  
  
  //in_rdy_m says = 1 ; The router can get a new packet if the FIFO is not empty
  //This master control unit flows the packet's state coming to the router 
  Master_Control_unit #(
	  .AMOUNT_SLAVE(AMOUNT_SLAVE)) 
  u_Master_Control_unit (
	  .clk          (clk             ),
	  .reset_n      (rst_n           ),
	  .sent_vector  (sent_mask_m     ),
	  .target_vector(target_out		 ),
	  .in_vld       (!empty 	     ),
	  .in_rdy       (in_rdy_m        )
  );
	
  
  //FIFO's Input
  assign packet_in.data   = data_in;
  assign packet_in.valid  = valid_in;
  assign packet_in.target = target_in;
  assign packet_in.source = source_in;
  
  //check if the packet is not one hot, where the bit is MASTER_NUM in the target
  
  FIFO #(
	  .DEPTH(4)) 
  u_FIFO (
	  .rst_n   (rst_n                                                                ),
	  .clk     (clk                                                                  ),
	  .wr_en   (packet_in.valid & is_packet_legal(packet_in.target, packet_in.source)),
	  .rd_en   (in_rdy_m                                                             ),
	  .data_in (packet_in                                                            ),
	  .full    (/*not in used*/                                                      ), //note in used because the is no in_rdy for the master
	  .empty   (empty                                                                ),
	  .data_out(packet_out                                                           )
  );
  
  //FIFO's Output
  assign data_out    = packet_out.data;   
  assign target_out  = packet_out.target; 
  assign source_out  = packet_out.source;
  assign valid_out   = packet_out.valid;   


 endmodule