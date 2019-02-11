module full_adder(
    a,  //input A
    b,  //input B
    c,  //input C
    sum,
    carry
    );

    //what are the input ports.
    input a;
    input b;
     input c;
    //What are the output ports.
    output sum;
     output carry;
     //Internal variables
     wire ha1_sum;
     wire ha2_sum;
     wire ha1_carry;
     wire ha2_carry;
     wire sum;
     wire carry;

     //Instantiate the half adder 1
    half_adder  ha1(
        .a(a),
        .b(b),
        .sum(ha1_sum),
        .carry(ha1_carry)
    );
    
    //Instantiate the half adder 2
    half_adder  ha2(
        .a(c),
        .b(ha1_sum),
        .sum(ha2_sum),
        .carry(ha2_carry)
    );

    //sum output from 2nd half adder is connected to full adder output
    assign sum = ha2_sum;  
    //The carry's from both the half adders are OR'ed to get the final carry./
    assign carry = ha1_carry | ha2_carry;
    
endmodule
