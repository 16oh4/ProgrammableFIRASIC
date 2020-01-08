`timescale 1ns / 1ps
//Engineer: Bruno E. Gracia Villalobos
//16oh4.com
//DECEMBER 4, 2019
//MIT LICENSE

module CNTRL_SIM();

localparam BITS = 16;
localparam ORDER = 4;
localparam ROWS = 16;

//CREATE 100 MHz CLOCK
reg clk;
initial clk = 1'b0;
always #5 clk = ~clk;

//CONTROLLER WIRES
wire [BITS*2-1:0] y;

/*
wire [3:0] state_test;
wire [3:0] next_state_test;
wire ctrl_clk_test;
wire [31:0] loop_test;
wire [31:0] filter_loop_test;

//DPU WIRES
wire [$clog2(ROWS)-1:0] dpu_h_rom_addr_test;
wire [BITS*(ORDER+1)-1:0] dpu_h_rom_data_test;
wire [BITS*(ORDER+1)-1:0] dpu_h_regs_test;

wire [BITS-1:0] dpu_x_rom_data_test;
wire [BITS-1:0] dpu_x_regs_test;

wire [BITS*2*(ORDER+1)-1:0] dpu_y_test;

wire [ORDER:0] dpu_enables_test;
wire inv_dpu_clk_test;
*/
CNTRL UUT(
.dpu_clk(clk),

.y(y)

/*
//DIAGNOSTICS
.state_test             (state_test),
.next_state_test        (next_state_test),
.ctrl_clk_test          (ctrl_clk_test),
.loop_test              (loop_test),
.filter_loop_test       (filter_loop_test),

.dpu_h_rom_addr_test    (dpu_h_rom_addr_test),
.dpu_h_rom_data_test    (dpu_h_rom_data_test),
.dpu_h_regs_test        (dpu_h_regs_test),

.dpu_x_rom_data_test    (dpu_x_rom_data_test),
.dpu_x_regs_test        (dpu_x_regs_test),

.dpu_y_test             (dpu_y_test),

.dpu_enables_test       (dpu_enables_test),
.inv_dpu_clk_test       (inv_dpu_clk_test)
*/
);

defparam UUT.BITS = BITS;
defparam UUT.ORDER = ORDER;
defparam UUT.ROWS = ROWS;

endmodule