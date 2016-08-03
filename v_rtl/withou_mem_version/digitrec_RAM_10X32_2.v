// Generated by stratus_vlg 15.21-p100  (11111646)
// Tue Aug  2 19:14:37 2016
// from c_parts/digitrec_RAM_10X32_2.cc

`timescale 1ps / 1ps

      
// Generated by stratus_hls 15.21-p100  (11111647)
// Tue Aug  2 19:14:24 2016
// from digitrec.cc
/* Include declarations of instantiated parts. */
/* Declaration of the synthesized module. */
module digitrec_RAM_10X32_2(DIN, CE, RW, in1, out1, clk);

      input [31:0] DIN;
      input CE;
      input RW;
      input [3:0] in1;
      input clk;
      output [31:0] out1;
      reg [31:0] out1;
      reg[31:0] mem[9:0];

         // Generated by stratus_hls 15.21-p100  (11111647)
         // Tue Aug  2 19:14:24 2016
         // from digitrec.cc
         always @(posedge clk)
          begin :thread_139
            if (in1 < 4'd10) begin
               if (CE) begin
                  if (RW) begin
                     mem[in1] = DIN;
                  end
                  else begin
                     out1 <= mem[in1];
                  end
               end
               else begin
                  out1 <= 32'd0000000000;
               end
            end
         end


endmodule
