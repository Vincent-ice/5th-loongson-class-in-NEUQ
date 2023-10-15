module mult_simple (//移位补码乘法器
    input [7:0] op1,op2,
    output[15:0]out
);

wire [15:0] op1_ext = op1[7] ? {8'b11111111,op1} : {8'b0,op1};
wire [15:0] mult_buf [7:0];

generate
    genvar i;
    for (i = 0;i<8 ;i=i+1 ) begin
        assign mult_buf[i] = ~op2[i] ? 16'b0 : (op1_ext<<i);
    end
endgenerate

assign out = mult_buf[0] + mult_buf[1] + mult_buf[2] + mult_buf[3] 
           + mult_buf[4] + mult_buf[5] + mult_buf[6] - mult_buf[7];
endmodule



module compressor32 (//华莱士树32压缩
    input [15:0] op1,op2,op3,
    output[15:0] out1,out2
);

assign out1 = op1^op2^op3;
assign out2 = (op1&op2|op2&op3|op3&op1)<<1;
    
endmodule

module mult_booth1 (
    input signed [7:0] op1,op2,
    output signed [15:0] out
);

wire signed [15:0] op1_ext = op1[7] ? {8'b11111111,op1} : {8'b0,op1};
wire signed [15:0] mult_buf [7:0];

/* assign mult_buf[0] = op2[0] ? -op1_ext : 0;
assign mult_buf[1] = op2[1]^op2[0] ? (op2[1]?-op1_ext:op1_ext):0;
assign mult_buf[2] = op2[2]^op2[1] ? (op2[2]?-op1_ext:op1_ext):0;
assign mult_buf[3] = op2[3]^op2[2] ? (op2[3]?-op1_ext:op1_ext):0;
assign mult_buf[4] = op2[4]^op2[3] ? (op2[4]?-op1_ext:op1_ext):0;
assign mult_buf[5] = op2[5]^op2[4] ? (op2[5]?-op1_ext:op1_ext):0;
assign mult_buf[6] = op2[6]^op2[5] ? (op2[6]?-op1_ext:op1_ext):0;
assign mult_buf[7] = op2[7]^op2[6] ? (op2[7]?-op1_ext:op1_ext):0;
 */

generate
    genvar i;
    for (i = 0; i < 8; i = i + 1) begin
        if (i == 0) begin
            assign mult_buf[0] = op2[0] ? -op1_ext : 0;
        end else begin
            assign mult_buf[i] = op2[i] ^ op2[i - 1] ? (op2[i] ? -op1_ext : op1_ext) : 0;
        end
    end  
endgenerate


/* assign out = mult_buf[0]    + (mult_buf[1]<<1) + (mult_buf[2]<<2) + (mult_buf[3]<<3) 
           + (mult_buf[4]<<4) + (mult_buf[5]<<5) + (mult_buf[6]<<6) + (mult_buf[7]<<7); */

wire [15:0] wallace1_buf [11:0];
begin:wallace1
    compressor32 wallace1_1(mult_buf[0],mult_buf[1]<<1,mult_buf[2]<<2,wallace1_buf[0],wallace1_buf[1]);
    compressor32 wallace1_2(mult_buf[3]<<3,mult_buf[4]<<4,mult_buf[5]<<5,wallace1_buf[2],wallace1_buf[3]);
end
begin:wallace2
    compressor32 wallace2_1(wallace1_buf[0],wallace1_buf[1],wallace1_buf[2],wallace1_buf[4],wallace1_buf[5]);
    compressor32 wallace2_2(wallace1_buf[3],mult_buf[6]<<6,mult_buf[7]<<7,wallace1_buf[6],wallace1_buf[7]);
end
begin:wallace3
    compressor32 wallace3(wallace1_buf[4],wallace1_buf[5],wallace1_buf[6],wallace1_buf[8],wallace1_buf[9]);
end
begin:wallace4
    compressor32 wallace4(wallace1_buf[8],wallace1_buf[9],wallace1_buf[7],wallace1_buf[10],wallace1_buf[11]);
end
begin:adder
    assign out = wallace1_buf[10] + wallace1_buf[11];
end
endmodule


module mult_booth2 (
    input signed [7:0] op1,op2,
    output signed [15:0] out
);
wire signed [15:0] op1_ext = op1[7] ? {8'b11111111,op1} : {8'b0,op1};
wire signed [15:0] mult_buf [3:0];
wire signed [8:0]  op2_left1 = op2 << 1;
wire [2:0] judge_buff [3:0];

generate
    genvar i;
    for (i = 0; i < 4; i = i + 1) begin
        assign judge_buff[i] = op2_left1[2*i +:3];
    end
    for (i = 0; i < 4; i = i + 1) begin
        assign mult_buf[i] = judge_buff[i]==3'b001 ? op1_ext        :
                             judge_buff[i]==3'b010 ? op1_ext        :
                             judge_buff[i]==3'b011 ? op1_ext<<1     :
                             judge_buff[i]==3'b100 ? -(op1_ext<<1)  :
                             judge_buff[i]==3'b101 ? -op1_ext       :
                             judge_buff[i]==3'b110 ? -op1_ext       : 0;
    end  
endgenerate

assign out = mult_buf[0] + (mult_buf[1]<<2) + (mult_buf[2]<<4) + (mult_buf[3]<<6);
endmodule
