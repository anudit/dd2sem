module half_adder(
    a,
    b,
    sum,
    carry
    );

    //what are the input ports.
    input a;
    input b;
    //What are the output ports.
    output sum;
     output carry;
     
     //Implement the Sum and Carry equations using Verilog Bit operators.
     assign sum = a ^ b;  //XOR operation
     assign carry = a & b; //AND operation
    
endmodule
