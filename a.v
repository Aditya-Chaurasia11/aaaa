module cyclic_lamp(clock, light);
input clock;
output reg[0:2] light;  // light is avector
parameter s0=2'b00,s1=2'b01,s2=2'b10;  // parameter decleration as constant
parameter RED=3'b100,GREEN=3'b010,YELLOW=3'b001;
reg[0:1] state;//state as two bit variable
// reg[0:25] count=0;
always @(posedge clock)
    case (state)
        s0:begin
            light<=GREEN; state<=s1;
        end
        s1:begin
            light<=YELLOW; state<=s2;
        end
        s2:begin
            light<=RED; state<=s0;
        end 
        default: begin
            light<=RED;
            state<=s0;
        end 
    endcase
endmodule

