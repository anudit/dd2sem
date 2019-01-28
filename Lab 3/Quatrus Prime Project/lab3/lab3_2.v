module lab3_2(a, b, c, d, o);
  input a, b, c, d;
  output o;
  
  wire p, q, r, s, t, u;
  
  and(p, ~b, c, d);
  and(q, a, ~c, d);
  and(r, ~a, b, ~d);
  and(s, ~a, b, c);
  and(t, a, ~b, c);
  and(u, ~b, c, ~d);
  or(o, p, q, r, s, t, u);
  
endmodule
// B’C’D+AC’D + A’BD’+ A’BC+AB’C  + B’CD’
