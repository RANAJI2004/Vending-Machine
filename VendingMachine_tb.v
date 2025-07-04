module VendingMachine_tb;

  // Inputs
  reg clk;
  reg [1:0] in;
  reg rst;

  // Outputs
  wire out;
  wire [1:0] change;

  // Instantiate the Unit Under Test (UUT)
  Vending_Machine uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    $dumpfile("VendingMachine.vcd");
    $dumpvars(0, VendingMachine_tb);

    // Initialize
    clk = 0;
    rst = 1;
    in = 2'b00;

    #6 rst = 0;
    
    in = 2'b01;  // Insert Rs 5
    #11;
    in = 2'b01;  // Insert Rs 5 again
    #16;
    in = 2'b01;  // Insert Rs 5 again
    #25;

    $finish;
  end

endmodule
