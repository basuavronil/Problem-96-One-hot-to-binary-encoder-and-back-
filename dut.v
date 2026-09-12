module bin_to_onehot_8bit (
    input  wire [2:0] bin_in,
    input  wire       enable,
    output wire [7:0] one_hot_out
);

    // Bit-shift decoding logic
    assign one_hot_out = enable ? (8'b0000_0001 << bin_in) : 8'b0000_0000;

endmodule
// OR 
module dut(
  input [2:0] binary,
  output [7:0] hot
);
  always@(*) 
    begin
      case (binary) 
          3'd0: hot = 8'd1;
          3'd1: hot = 8'd2;
          3'd2: hot = 8'd4;
          3'd3: hot = 8'd8;
          3'd4: hot = 8'd16:
          3'd5: hot = 8'd32;
          3'd6: hot = 8'd64;
          3'd7: hot = 8'd128;
          3'd8: hot = 8'd256;
          default: hot = 8'd0;
      endcase
    end
endmodule
        
        
              
          
          
