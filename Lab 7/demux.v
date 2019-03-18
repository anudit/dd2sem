module demux(o1,o2,o3,o4,i,s0,s1);
input i;
input s1,s0;
output o1,o2,o3,o4;
reg o1,o2,o3,o4;
always@(i or s0 or s1)
begin
case({s1,s0})
	2'b00:begin o1=i; o2=1'bz; o3=1'bz; o4=1'bz; end
	2'b01:begin o1=1'bz; o2=i; o3=1'bz; o4=1'bz; end
	2'b10:begin o1=1'bz; o2=1'bz; o3=i; o4=1'bz; end
	2'b11:begin o1=1'bz; o2=1'bz; o3=1'bz; o4=i; end
	default:$display("Invalid");
	endcase
end
endmodule

module demux_testbench;
 reg i,s0,s1;
wire o1,o2,o3,o4;
parameter stimDelay = 10;
demux DUT(o1,o2,o3,o4,i,s0,s1);
initial
begin
 #(stimDelay) i = 0;s1=0;s0=0;
 #(stimDelay) i = 0;s1=0;s0=1;
 #(stimDelay) i = 0;s1=1;s0=0;
 #(stimDelay) i = 0;s1=1;s0=1;
 #(stimDelay) i = 1;s1=0;s0=0;
 #(stimDelay) i = 1;s1=0;s0=1;
 #(stimDelay) i = 1;s1=1;s0=0;
 #(stimDelay) i = 1;s1=1;s0=1;
#100; //Let simulation finish
end
endmodule
