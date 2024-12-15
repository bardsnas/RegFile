# RegFile Details:
### regfile.sv - top-level module that instantiates all the necessary submodules (listed below) to creating the Register File functionality.
### decoder.sv - 5:32 Decoder that receives 1, 5-bit input and activates 1 of 32 different lines of output depending on the register that is being accessed.
### D_FF.sv - A single D Flip-Flop that will update the data upon a clock cycle change.
### DFF_VAR.sv - A variable D Flip-Flop module that instantiates multiple single D Flip-Flops based on the WIDTH parameter.
### register.sv - Module that instantiates the DFF_VAR module and handles the input and outputs to the registers.
### mux2_1.sv - Creates a single 2:1 MUX that can handle 64-bit data based on pure gate logic.
### mux4_1.sv - Creates a single 4:1 MUX that can handle 64-bit data based on three 2:1 MUX modules.
### mux8_1.sv - Creates a single 8:1 MUX that can handle 64-but data based on two 4:1 MUX and a 2:1 MUX.
### mux16_1.sv - Creates a single 16:1 MUX that can handle 64-bit data based on two 8:1 MUX and a 2:1 MUX.
### mux32_1.sv - Creates a single 32:1 MUX that can handle 64-but data based on two 16:1 MUX and a 2:1 MUX.
