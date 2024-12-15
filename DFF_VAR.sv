module DFF_VAR #(parameter WIDTH=64) (q, d, clk);
	output logic [WIDTH-1:0] q;
	input logic [WIDTH-1:0] d;
	input logic clk;
	
	initial assert(WIDTH>0);
	
	genvar i;
	
	generate
		for(i=0; i<WIDTH; i++) begin : eachDff
			D_FF d (.q(q[i]), .d(d[i]), .reset(0), .clk);
		end
	endgenerate

endmodule