module ula(a,b,tula,outp,stat);
	input wire signed [3:0] a;
	input wire signed [3:0] b;
	input wire [2:0] tula;
	output reg signed [3:0] outp;
	output reg stat;
	
	always @(*) begin
		case(tula)
			3'b000: 
				outp = a+b;
			3'b001:
				outp = a-b;
			3'b010:
				outp = ~b+1;
			3'b011: begin
				if (a==b)
					stat = 1;
				else
					stat = 0;
			end
			3'b100: begin
				if (a>b)
					stat = 1'b1;
				else
					stat = 1'b0;
				end
		
			3'b101: begin
				if (a<b)
					stat=1;
				else
					stat=0;
				end
			3'b110:
				outp= a&b;
			3'b111:
				outp= a^b;	
			endcase
		end
endmodule