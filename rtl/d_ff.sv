
module d_ff #(
	parameter DATA_WIDTH = 1,
	parameter INITIAL_VAL = 0
)
(
	input clk,
	input reset_n,
	input [DATA_WIDTH-1:0] din,
	input en,
	output reg [DATA_WIDTH-1:0] dout
);

	always @(posedge clk or negedge reset_n) begin
		
		if (!reset_n) begin
			dout <= DATA_WIDTH'(INITIAL_VAL);
		end else if (en) begin
			dout <= din;
		end		
	end


endmodule