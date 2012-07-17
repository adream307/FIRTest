`timescale 1ps/1ps

module ft();
    integer fd;
    integer code;
    reg [15:0] d;
initial begin
    d=0;
    fd = $fopen("t.txt","r");
    code=$fscanf(fd,"%x\n",d);
    $display("%b",d);
    code=$fscanf(fd,"%x\n",d);
    $display("%b",d);
    $finish;
end

endmodule

