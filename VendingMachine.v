module Vending_Machine(
    input clk,
    input rst,
    input [1:0] in,
    output reg out,
    output reg [1:0] change
);

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

reg [1:0] c_state, n_state;

always @(posedge clk) begin
    if (rst == 1) begin
        c_state <= s0;
        n_state <= s0;
        change <= 2'b00;
        out <= 0;
    end
    else begin
        c_state <= n_state;
    end
end

always @(posedge clk) begin
    case (c_state)
        s0: begin // state 0: 0 rs
            if (in == 0) begin
                n_state = s0;
                out = 0;
                change = 2'b00;
            end
            else if (in == 2'b01) begin
                n_state = s1;
                out = 0;
                change = 2'b00;
            end
            else if (in == 2'b10) begin
                n_state = s2;
                out = 0;
                change = 2'b00;
            end
        end
        
        s1: begin // state 1: 5 rs
            if (in == 0) begin
                n_state = s0;
                out = 0;
                change = 2'b01;
            end
            else if (in == 2'b01) begin
                n_state = s2;
                out = 0;
                change = 2'b00;
            end
            else if (in == 2'b10) begin
                n_state = s0;
                out = 1;
                change = 2'b00;
            end
        end
        
        s2: begin // state 2: 10 rs
            if (in == 0) begin
                n_state = s0;
                out = 0;
                change = 2'b10;
            end
            else if (in == 2'b01) begin
                n_state = s0;
                out = 1;
                change = 2'b00;
            end
            else if (in == 2'b10) begin
                n_state = s0;
                out = 1;
                change = 2'b01; // change returned 5 rs and 1 bottle
            end
        end
        
        default: begin
            n_state = s0;
            out = 0;
            change = 2'b00;
        end
    endcase
end

endmodule
