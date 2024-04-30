module demux_1to2(

    input a,
    input s,
    output reg [1:0]y
    );

    always@(*) 
    begin 

    case(s) 
    1'b0:
    begin y[0]=a;y[1]=1'b0; end
    1'b1:
    begin y[1]=a; y[0]=1'b0; end
    endcase
    
    end
endmodule