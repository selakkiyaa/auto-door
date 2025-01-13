module auto_door(input clk,rst,sensor,output reg door_output_state);
always @(*)
begin
if(rst)
begin
door_output_state=0;
end
else if(sensor == 1'b1)
begin
door_output_state=1;
end
else
begin
door_output_state=0;
end
end
endmodule

