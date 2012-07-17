`timescale 1ps/1ps
module HlpSintb();

reg clk;
reg rst;

initial begin
    clk=0;
    forever begin
        #10;
        clk=~clk;
    end
end

initial begin
    rst=1;
    repeat(4)@(negedge clk);
    rst=0;
end


integer fd;
integer code;
reg [15:0] id;
wire [15:0] od;

initial begin
    fd = $fopen("G.txt","r");
    code = $fscanf(fd,"%x\n",id);
    @(negedge rst);
    repeat(2000) begin
        @(negedge clk);
        $display("%x",od);
        code=$fscanf(fd,"%x\n",id);
    end
    @(negedge clk);
    $display("%x",od);
    $finish;
end


Hlp Hlp_0 (
.clk(clk),
.clk_enable(1'b1),
.reset(rst),
.filter_in(id),
.filter_out(od)
);


endmodule
