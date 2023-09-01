module pes_lfsr(q, clk, rst, seed, load);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire \F[0].clk ;
  wire \F[0].d ;
  wire \F[0].q ;
  wire \F[0].rst ;
  wire \F[1].clk ;
  wire \F[1].d ;
  wire \F[1].q ;
  wire \F[1].rst ;
  wire \F[2].clk ;
  wire \F[2].d ;
  wire \F[2].q ;
  wire \F[2].rst ;
  wire \F[3].clk ;
  wire \F[3].d ;
  wire \F[3].q ;
  wire \F[3].rst ;
  wire \M1[0].a ;
  wire \M1[0].b ;
  wire \M1[0].control ;
  wire \M1[0].q ;
  wire \M1[1].a ;
  wire \M1[1].b ;
  wire \M1[1].control ;
  wire \M1[1].q ;
  wire \M1[2].a ;
  wire \M1[2].b ;
  wire \M1[2].control ;
  wire \M1[2].q ;
  wire \M1[3].a ;
  wire \M1[3].b ;
  wire \M1[3].control ;
  wire \M1[3].q ;
  input clk;
  wire clk;
  input load;
  wire load;
  output q;
  wire q;
  input rst;
  wire rst;
  input [3:0] seed;
  wire [3:0] seed;
  wire [3:0] state_in;
  wire [3:0] state_out;
  sky130_fd_sc_hd__xor2_1 _04_ (
    .A(state_out[3]),
    .B(state_out[2]),
    .X(q)
  );
  sky130_fd_sc_hd__clkinv_1 _05_ (
    .A(\F[0].rst ),
    .Y(_00_)
  );
  sky130_fd_sc_hd__dfrtp_1 _06_ (
    .CLK(\F[0].clk ),
    .D(\F[0].d ),
    .Q(\F[0].q ),
    .RESET_B(_00_)
  );
  sky130_fd_sc_hd__clkinv_1 _07_ (
    .A(\F[1].rst ),
    .Y(_01_)
  );
  sky130_fd_sc_hd__dfrtp_1 _08_ (
    .CLK(\F[1].clk ),
    .D(\F[1].d ),
    .Q(\F[1].q ),
    .RESET_B(_01_)
  );
  sky130_fd_sc_hd__clkinv_1 _09_ (
    .A(\F[2].rst ),
    .Y(_02_)
  );
  sky130_fd_sc_hd__dfrtp_1 _10_ (
    .CLK(\F[2].clk ),
    .D(\F[2].d ),
    .Q(\F[2].q ),
    .RESET_B(_02_)
  );
  sky130_fd_sc_hd__clkinv_1 _11_ (
    .A(\F[3].rst ),
    .Y(_03_)
  );
  sky130_fd_sc_hd__dfrtp_1 _12_ (
    .CLK(\F[3].clk ),
    .D(\F[3].d ),
    .Q(\F[3].q ),
    .RESET_B(_03_)
  );
  sky130_fd_sc_hd__mux2_1 _13_ (
    .A0(\M1[0].b ),
    .A1(\M1[0].a ),
    .S(\M1[0].control ),
    .X(\M1[0].q )
  );
  sky130_fd_sc_hd__mux2_1 _14_ (
    .A0(\M1[1].b ),
    .A1(\M1[1].a ),
    .S(\M1[1].control ),
    .X(\M1[1].q )
  );
  sky130_fd_sc_hd__mux2_1 _15_ (
    .A0(\M1[2].b ),
    .A1(\M1[2].a ),
    .S(\M1[2].control ),
    .X(\M1[2].q )
  );
  sky130_fd_sc_hd__mux2_1 _16_ (
    .A0(\M1[3].b ),
    .A1(\M1[3].a ),
    .S(\M1[3].control ),
    .X(\M1[3].q )
  );
  assign \M1[3].a  = seed[3];
  assign \M1[3].b  = state_out[2];
  assign \M1[3].control  = load;
  assign state_in[3] = \M1[3].q ;
  assign \M1[2].a  = seed[2];
  assign \M1[2].b  = state_out[1];
  assign \M1[2].control  = load;
  assign state_in[2] = \M1[2].q ;
  assign \M1[1].a  = seed[1];
  assign \M1[1].b  = state_out[0];
  assign \M1[1].control  = load;
  assign state_in[1] = \M1[1].q ;
  assign \M1[0].a  = seed[0];
  assign \M1[0].b  = q;
  assign \M1[0].control  = load;
  assign state_in[0] = \M1[0].q ;
  assign \F[3].clk  = clk;
  assign \F[3].d  = state_in[3];
  assign state_out[3] = \F[3].q ;
  assign \F[3].rst  = rst;
  assign \F[2].clk  = clk;
  assign \F[2].d  = state_in[2];
  assign state_out[2] = \F[2].q ;
  assign \F[2].rst  = rst;
  assign \F[1].clk  = clk;
  assign \F[1].d  = state_in[1];
  assign state_out[1] = \F[1].q ;
  assign \F[1].rst  = rst;
  assign \F[0].clk  = clk;
  assign \F[0].d  = state_in[0];
  assign state_out[0] = \F[0].q ;
