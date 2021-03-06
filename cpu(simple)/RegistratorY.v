module RegistratorY (Ty, outula, clk, outy);
	
	input wire clk;
	input wire [3:0] outula;
	input wire [2:0] Ty;
	output reg [3:0] outy;
	
	parameter HOLD = 3'b000;
	parameter LOAD = 3'b001;
	parameter SHIFTR = 3'b010;
	parameter SHIFTL = 3'b011;
	parameter RESET = 3'b100;
	
	always @ (posedge clk) begin
		case (Ty)
			HOLD : begin
				outy <= outy;
				end
			LOAD : begin
				outy <= outula;
				end
			SHIFTR : begin
				outy <= (outy >> 1);
				end
			SHIFTL : begin
				outy <= (outy << 1);
				end
			RESET : begin
				outy <= 4'b0000;
				end
		endcase	
	
			end
endmodule