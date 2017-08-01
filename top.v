module TOP();
  parameter CLK = 16;
  parameter HALF = 8;

  reg reset;
  reg clk_in;
  reg [127:0] data_in;
  reg [1:0]   write_addr;
  reg [1:0]   read_addr;
  reg         read_hit;
  reg         stop;

  wire clk;

  always #(HALF) clk_in = ~clk_in;
     
  initial
  begin
    $dumpfile ("./test.vcd");
    $dumpvars (0, TOP);
  end

  initial
  begin
    //read test
  end

  cpu cpu_core(
    .clk(clk),
    .rst(reset),
    .idata(),
    .ddate(),
    .iaddr(),
    .daddr()
  );

endmodule
