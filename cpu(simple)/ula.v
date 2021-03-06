module ula(outx,outy,tula,outula,status);
	input wire [3:0] outx;
	input wire [3:0] outy;
	input wire [2:0] tula;
	output reg signed [3:0] outula;
	output reg status;
	
	always @(*) begin
		case(tula)
			3'b000: 
				outula <= outx+outy;
			3'b001:
				outula <= outx-outy;
			3'b010:
				outula <= ~outy+1;
			3'b011: begin
				if (outx==outy)
					status <= 1;
				else
					status <= 0;
			end
			3'b100: begin
				if (outx>outy)
					status <= 1'b1;
				else
					status <= 1'b0;
				end
		
			3'b101: begin
				if (outx<outy)
					status <= 1;
				else
					status <= 0;
				end
			3'b110:
				outula <= outx&outy;
			3'b111:
				outula <= outx^outy;	
			endcase
		end
endmodule