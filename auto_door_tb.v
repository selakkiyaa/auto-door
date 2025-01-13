module auto_door_tb;
reg clk;
reg rst;
reg sensor;
wire door_output_state;
auto_door dut(.clk(clk),.rst(rst),.sensor(sensor),.door_output_state(door_output_state));
initial 
begin
clk = 1;

forever #5 clk = ~clk;
end
initial 
begin
rst = 1;

sensor = 0;
#10;
rst = 0;
sensor = 1;
#20;
sensor = 0;
#20;
sensor = 1;
#20;
sensor = 0;
#20;
sensor = 1;
#20;
sensor = 0;
#20;
rst = 1;
#10;
rst = 0;
#20;
$finish;
end
endmodule

