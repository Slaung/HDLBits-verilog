module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire cin1, cout1, cout2;
    wire[15:0] sum1, sum2;
    assign cin1 = 0;
    
    add16 add16_1 (a[15:0], b[15:0], cin1, sum1, cout1);
    add16 add16_2 (a[31:16], b[31:16], cout1, sum2, cout2);
    
    assign sum = {sum2, sum1};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	assign sum = a ^ b ^ cin;
    assign cout = ((a & b) | (cin & (a ^ b))) ;
endmodule
