module mux8_1(i, sel, out);
	output logic [63:0] out;
	input logic [7:0][63:0] i;
	input logic [2:0] sel;
	logic [63:0] v0, v1;
	
	mux4_1 m0(.i(i[3:0]), .sel(sel[1:0]), .out(v0));
	mux4_1 m1(.i(i[7:4]), .sel(sel[1:0]), .out(v1));
	
	mux2_1 m2(.i0(v0), .i1(v1), .sel(sel[2]), .out(out));
	
endmodule

module mux8_1_testbench();
	
	logic [7:0][63:0] i;
	logic [63:0] out;
	logic [2:0] sel;
	
	mux8_1 dut (.i, .sel, .out);

	initial begin
		i[0]=64'd64357; i[1]=64'd26000; i[2]=64'd24556; i[3]=64'd12328; i[4]=64'd63; i[5]=64'd31; i[6]=64'd132346; i[7]=64'd7; #10;
		sel=3'b000; #10;
		sel=3'b001; #10;
		sel=3'b010; #10;
		sel=3'b011; #10;
		sel=3'b100; #10;
		sel=3'b101; #10;
		sel=3'b110; #10;
		sel=3'b111; #10;
	end
endmodule