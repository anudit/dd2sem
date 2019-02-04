module ripple_carry_adder(
  input [4-1:0] i_add_term1,
   input [4-1:0] i_add_term2,
   output [4:0]  o_result);
     
  wire [4:0]     w_CARRY;
  wire [4-1:0]   w_SUM;

  assign w_CARRY[0] = 1'b0;        
   
  genvar             ii;
  generate 
    for (ii=0; ii<4; ii=ii+1) 
      begin
        full_adder full_adder_inst
            ( 
              .i_bit1(i_add_term1[ii]),
              .i_bit2(i_add_term2[ii]),
              .i_carry(w_CARRY[ii]),
              .o_sum(w_SUM[ii]),
              .o_carry(w_CARRY[ii+1])
              );
      end
  endgenerate
   
  assign o_result = {w_CARRY[4], w_SUM};
 
endmodule
