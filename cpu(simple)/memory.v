module memory (Opcode,count, in);

	input wire [2:0] count;
	output reg [2:0] Opcode;
	output reg [3:0] in;
		
	always @ (*) begin
		case(count)
			3'd0: begin
				Opcode <= 3'b000;
				in <= 4'd0;
			end
			3'd1: begin
				Opcode <= 3'b001;
				in <= 4'd4;
			end
			3'd2: begin
				Opcode <= 3'b010;
				in <= 4'd2;
			end
			3'd3: begin
				Opcode <= 3'b011;
			end
			3'd4: begin
				Opcode <= 3'b100;
			end
			3'd5: begin
				Opcode <= 3'b101;
			end
		endcase
	end
endmodule

	
	