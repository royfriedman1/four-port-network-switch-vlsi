module FIFO #(
	parameter DEPTH = 4)
(
	input logic         rst_n,
	input logic         clk,
	input logic         wr_en,
	input logic         rd_en,
	input packet_t      data_in,
	output logic        full,
	output logic        empty,
	output packet_t     data_out
);
 
	logic [$clog2(DEPTH)-1:0] wr_ptr;
	logic [$clog2(DEPTH)-1:0] rd_ptr;
	 
	packet_t  fifo[DEPTH-1:0];
	 
	always_ff @(posedge clk) begin
		if (!rst_n) begin
			wr_ptr <= '0;
		end else begin
			if (wr_en && !full) begin
				fifo[wr_ptr] <= data_in;
				wr_ptr <= (wr_ptr == $clog2(DEPTH)'(DEPTH-1)) ? 2'b0 : $clog2(DEPTH)'(wr_ptr + 2'b1);
			end
		end
	end
	 
	always_ff @(posedge clk) begin
		if (!rst_n) begin
			rd_ptr<= '0;
		end else begin
			if (rd_en && !empty) begin
				data_out <= fifo[rd_ptr];
				rd_ptr <= (rd_ptr == $clog2(DEPTH)'(DEPTH-1)) ? 2'b0 : $clog2(DEPTH)'(rd_ptr + 2'b1);
			end
		end
	end
	 
	assign full = ($clog2(DEPTH)'(wr_ptr +2'b1) == rd_ptr);
	assign empty = (wr_ptr == rd_ptr);
	
		
	
	
endmodule