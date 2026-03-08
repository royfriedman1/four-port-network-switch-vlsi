// Fusion Compiler Version V-2023.12-SP3 Verilog Writer
// Generated on 1/17/2026 at 20:58:25
// Library Name: switch_4port_with_cg_f.dlib
// Block Name: switch_4port
// User Label: 
// Write Command: write_verilog switch_4port_with_cg_f.v
module d_ff_DATA_WIDTH2_INITIAL_VAL0 ( clk , reset_n , din , en , dout , 
    clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;
input  clock_gate_logic_0 ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module d_ff_1_0 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_14 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_13 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_12 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module Arbiter_control_unit_SLAVE_NUM3_AMOUNT_MASTER4_I_input_if_internal_if_slave_ ( 
    clk , reset_n , is_full , in_rdy_m , round_robin_select , valid_m , 
    rdy_out_demux_d , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 , HFSNET_1 , 
    HFSNET_3 , HFSNET_5 , HFSNET_7 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [1:0] round_robin_select ;
output [3:0] valid_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;
input  HFSNET_1 ;
input  HFSNET_3 ;
input  HFSNET_5 ;
input  HFSNET_7 ;

wire [1:0] prev_grant ;

d_ff_1_0_12 \SELECT_RDY[0].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_0_net_[0] } ) ,
    .en ( \_1_net_[0] ) , .dout ( rdy_out_demux_d[0] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_13 \SELECT_RDY[1].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_2_net_[0] } ) ,
    .en ( \_3_net_[0] ) , .dout ( rdy_out_demux_d[1] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_14 \SELECT_RDY[2].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_4_net_[0] } ) ,
    .en ( \_5_net_[0] ) , .dout ( rdy_out_demux_d[2] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0 \SELECT_RDY[3].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_6_net_[0] } ) ,
    .en ( \_7_net_[0] ) , .dout ( rdy_out_demux_d[3] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0 round_robin_grant ( .reset_n ( reset_n ) , 
    .din ( round_robin_select ) , .dout ( prev_grant ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
NOR3X1_RVT ctmi_99 ( .A1 ( HFSNET_4 ) , .A2 ( in_rdy_m[1] ) , 
    .A3 ( rdy_out_demux_d[1] ) , .Y ( valid_m[1] ) ) ;
NOR3X1_RVT ctmi_102 ( .A1 ( HFSNET_0 ) , .A2 ( in_rdy_m[3] ) , 
    .A3 ( rdy_out_demux_d[3] ) , .Y ( valid_m[3] ) ) ;
OR3X1_RVT ctmi_105 ( .A1 ( in_rdy_m[2] ) , .A2 ( rdy_out_demux_d[2] ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_106 ) ) ;
INVX1_HVT HFSINV_79_547 ( .A ( HFSNET_7 ) , .Y ( HFSNET_6 ) ) ;
INVX1_HVT HFSINV_195_543 ( .A ( HFSNET_5 ) , .Y ( HFSNET_4 ) ) ;
AND3X1_RVT ctmi_128 ( .A1 ( ctmn_124 ) , .A2 ( valid_m[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_2_net_[0] ) ) ;
INVX0_HVT HFSINV_91_538 ( .A ( HFSNET_3 ) , .Y ( HFSNET_2 ) ) ;
INVX1_HVT phfnr_buf_507 ( .A ( prev_grant[1] ) , .Y ( phfnn_318 ) ) ;
INVX1_HVT HFSINV_175_553 ( .A ( prev_grant[0] ) , .Y ( HFSNET_8 ) ) ;
INVX1_HVT phfnr_buf_509 ( .A ( ctmn_109 ) , .Y ( phfnn_320 ) ) ;
AO22X1_RVT ctmi_110 ( .A1 ( HFSNET_8 ) , .A2 ( phfnn_318 ) , 
    .A3 ( HFSNET_9 ) , .A4 ( prev_grant[1] ) , .Y ( ctmn_109 ) ) ;
OR2X1_RVT ctmi_98 ( .A1 ( in_rdy_m[0] ) , .A2 ( valid_m[0] ) , 
    .Y ( \_1_net_[0] ) ) ;
INVX0_HVT HFSINV_17_534 ( .A ( HFSNET_1 ) , .Y ( HFSNET_0 ) ) ;
AND3X1_RVT ctmi_132 ( .A1 ( valid_m[3] ) , .A2 ( round_robin_select[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_6_net_[0] ) ) ;
INVX0_HVT phfnr_buf_510 ( .A ( ctmn_116 ) , .Y ( phfnn_321 ) ) ;
INVX0_HVT ctmi_23 ( .A ( ctmn_106 ) , .Y ( valid_m[2] ) ) ;
OR2X1_RVT ctmi_108 ( .A1 ( in_rdy_m[2] ) , .A2 ( valid_m[2] ) , 
    .Y ( \_5_net_[0] ) ) ;
OR2X1_RVT ctmi_104 ( .A1 ( in_rdy_m[3] ) , .A2 ( valid_m[3] ) , 
    .Y ( \_7_net_[0] ) ) ;
OR2X1_RVT ctmi_101 ( .A1 ( in_rdy_m[1] ) , .A2 ( valid_m[1] ) , 
    .Y ( \_3_net_[0] ) ) ;
INVX0_HVT phfnr_buf_511 ( .A ( ctmn_121 ) , .Y ( phfnn_322 ) ) ;
AOI221X1_RVT ctmi_524 ( .A1 ( \input_if[2].target [3] ) , 
    .A2 ( \input_if[2].target [3] ) , .A3 ( ctmn_95 ) , 
    .A4 ( \input_if[3].target [3] ) , .A5 ( \input_if[0].target [3] ) , 
    .Y ( ctmn_88 ) ) ;
INVX1_HVT ctmi_26 ( .A ( ctmn_102 ) , .Y ( valid_m[0] ) ) ;
AO221X1_RVT ctmi_525 ( .A1 ( ctmn_90 ) , .A2 ( ctmn_90 ) , .A3 ( ctmn_92 ) , 
    .A4 ( prev_grant[0] ) , .A5 ( ctmn_93 ) , .Y ( clkgt_enable_net_4 ) ) ;
NAND2X0_RVT ctmi_114 ( .A1 ( HFSNET_8 ) , .A2 ( ctmn_111 ) , .Y ( ctmn_112 ) ) ;
AO221X1_RVT ctmi_115 ( .A1 ( phfnn_318 ) , .A2 ( valid_m[1] ) , 
    .A3 ( prev_grant[1] ) , .A4 ( valid_m[3] ) , .A5 ( HFSNET_9 ) , 
    .Y ( ctmn_111 ) ) ;
AO22X1_RVT ctmi_116 ( .A1 ( HFSNET_8 ) , .A2 ( ctmn_111 ) , .A3 ( ctmn_113 ) , 
    .A4 ( ctmn_119 ) , .Y ( ctmn_120 ) ) ;
OAI221X1_RVT ctmi_117 ( .A1 ( valid_m[0] ) , .A2 ( HFSNET_9 ) , 
    .A3 ( valid_m[0] ) , .A4 ( valid_m[1] ) , .A5 ( prev_grant[1] ) , 
    .Y ( ctmn_113 ) ) ;
OAI221X1_RVT ctmi_118 ( .A1 ( phfnn_321 ) , .A2 ( phfnn_318 ) , 
    .A3 ( ctmn_116 ) , .A4 ( phfnn_320 ) , .A5 ( ctmn_118 ) , 
    .Y ( ctmn_119 ) ) ;
NBUFFX2_RVT HFSBUF_19_554 ( .A ( prev_grant[0] ) , .Y ( HFSNET_9 ) ) ;
OR3X1_RVT ctmi_95 ( .A1 ( in_rdy_m[0] ) , .A2 ( rdy_out_demux_d[0] ) , 
    .A3 ( HFSNET_2 ) , .Y ( ctmn_102 ) ) ;
INVX0_HVT ctmi_29 ( .A ( rdy_out_demux_d[3] ) , .Y ( ctmn_95 ) ) ;
OA221X1_RVT ctmi_122 ( .A1 ( prev_grant[1] ) , .A2 ( ctmn_106 ) , 
    .A3 ( prev_grant[1] ) , .A4 ( ctmn_117 ) , .A5 ( ctmn_113 ) , 
    .Y ( ctmn_118 ) ) ;
NAND2X0_RVT ctmi_123 ( .A1 ( HFSNET_9 ) , .A2 ( valid_m[3] ) , 
    .Y ( ctmn_117 ) ) ;
OA221X1_RVT ctmi_125 ( .A1 ( phfnn_320 ) , .A2 ( ctmn_102 ) , 
    .A3 ( ctmn_109 ) , .A4 ( ctmn_106 ) , .A5 ( ctmn_121 ) , .Y ( ctmn_122 ) ) ;
NAND2X0_RVT ctmi_126 ( .A1 ( ctmn_118 ) , .A2 ( phfnn_321 ) , 
    .Y ( ctmn_121 ) ) ;
CGLPPRX2_HVT clock_gate_dout_reg ( .CLK ( clk ) , .EN ( clkgt_enable_net_4 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_dout_reg ) ) ;
NOR2X1_RVT A225 ( .A1 ( ctmn_120 ) , .A2 ( ctmn_102 ) , .Y ( \_0_net_[0] ) ) ;
OA222X1_RVT ctmi_243 ( .A1 ( ctmn_109 ) , .A2 ( ctmn_102 ) , 
    .A3 ( phfnn_320 ) , .A4 ( ctmn_106 ) , .A5 ( HFSNET_9 ) , 
    .A6 ( phfnn_199 ) , .Y ( ctmn_116 ) ) ;
OA22X1_RVT ctmi_400 ( .A1 ( ctmn_122 ) , .A2 ( HFSNET_8 ) , .A3 ( ctmn_111 ) , 
    .A4 ( phfnn_322 ) , .Y ( round_robin_select[0] ) ) ;
NOR2X1_RVT ctmi_401 ( .A1 ( valid_m[1] ) , .A2 ( valid_m[3] ) , 
    .Y ( phfnn_199 ) ) ;
OA21X1_RVT ctmi_402 ( .A1 ( phfnn_320 ) , .A2 ( ctmn_112 ) , 
    .A3 ( ctmn_120 ) , .Y ( round_robin_select[1] ) ) ;
INVX0_HVT ctmi_403 ( .A ( round_robin_select[1] ) , .Y ( ctmn_124 ) ) ;
NOR3X1_RVT ctmi_249 ( .A1 ( round_robin_select[0] ) , .A2 ( ctmn_106 ) , 
    .A3 ( ctmn_124 ) , .Y ( \_4_net_[0] ) ) ;
AOI221X1_RVT ctmi_214 ( .A1 ( ctmn_88 ) , .A2 ( HFSNET_4 ) , .A3 ( ctmn_88 ) , 
    .A4 ( rdy_out_demux_d[1] ) , .A5 ( prev_grant[0] ) , .Y ( ctmn_90 ) ) ;
OR3X1_RVT ctmi_220 ( .A1 ( \input_if[1].target [3] ) , 
    .A2 ( \input_if[3].target [3] ) , .A3 ( ctmn_91 ) , .Y ( ctmn_92 ) ) ;
OAI22X1_RVT ctmi_221 ( .A1 ( rdy_out_demux_d[2] ) , .A2 ( HFSNET_6 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( rdy_out_demux_d[0] ) , .Y ( ctmn_91 ) ) ;
NAND4X0_RVT ctmi_222 ( .A1 ( clkgt_enable_net_0 ) , 
    .A2 ( clkgt_enable_net_1 ) , .A3 ( clkgt_enable_net_2 ) , 
    .A4 ( clkgt_enable_net_3 ) , .Y ( ctmn_93 ) ) ;
endmodule


module Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master_ ( 
    round_robin_select , valid , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , \output_if.valid , 
    \output_if.source , \output_if.target , \output_if.data ) ;
input  [1:0] round_robin_select ;
input  [3:0] valid ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if.valid ;
output [3:0] \output_if.source ;
output [3:0] \output_if.target ;
output [7:0] \output_if.data ;

AO221X1_RVT ctmi_256 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [2] ) , .A5 ( ctmn_238 ) , 
    .Y ( \output_if.target [2] ) ) ;
AO221X1_RVT ctmi_258 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [1] ) , .A5 ( ctmn_239 ) , 
    .Y ( \output_if.target [1] ) ) ;
AO221X1_RVT ctmi_260 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [0] ) , .A5 ( ctmn_240 ) , 
    .Y ( \output_if.target [0] ) ) ;
AO221X1_RVT ctmi_262 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [3] ) , .A5 ( ctmn_241 ) , 
    .Y ( \output_if.source [3] ) ) ;
AO221X1_RVT ctmi_264 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [2] ) , .A5 ( ctmn_242 ) , 
    .Y ( \output_if.source [2] ) ) ;
AO221X1_RVT ctmi_266 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [1] ) , .A5 ( ctmn_243 ) , 
    .Y ( \output_if.source [1] ) ) ;
AO221X1_RVT ctmi_268 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [0] ) , .A5 ( ctmn_244 ) , 
    .Y ( \output_if.source [0] ) ) ;
AO221X1_RVT ctmi_270 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [7] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [7] ) , .A5 ( ctmn_245 ) , 
    .Y ( \output_if.data [7] ) ) ;
AO221X1_RVT ctmi_272 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [6] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [6] ) , .A5 ( ctmn_246 ) , 
    .Y ( \output_if.data [6] ) ) ;
AO221X1_RVT ctmi_274 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [5] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [5] ) , .A5 ( ctmn_247 ) , 
    .Y ( \output_if.data [5] ) ) ;
AO221X1_RVT ctmi_276 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [4] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [4] ) , .A5 ( ctmn_248 ) , 
    .Y ( \output_if.data [4] ) ) ;
AO221X1_RVT ctmi_278 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [3] ) , .A5 ( ctmn_249 ) , 
    .Y ( \output_if.data [3] ) ) ;
AO221X1_RVT ctmi_280 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [2] ) , .A5 ( ctmn_250 ) , 
    .Y ( \output_if.data [2] ) ) ;
AO221X1_RVT ctmi_282 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [1] ) , .A5 ( ctmn_251 ) , 
    .Y ( \output_if.data [1] ) ) ;
AO221X1_RVT ctmi_284 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [0] ) , .A5 ( ctmn_252 ) , 
    .Y ( \output_if.data [0] ) ) ;
AO221X1_RVT ctmi_286 ( .A1 ( ctmn_233 ) , .A2 ( valid[0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( valid[1] ) , .A5 ( ctmn_253 ) , 
    .Y ( \output_if.valid ) ) ;
AO22X1_RVT ctmi_257 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [2] ) , .Y ( ctmn_238 ) ) ;
AO22X1_RVT ctmi_259 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [1] ) , .Y ( ctmn_239 ) ) ;
AO22X1_RVT ctmi_261 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [0] ) , .Y ( ctmn_240 ) ) ;
AO22X1_RVT ctmi_263 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [3] ) , .Y ( ctmn_241 ) ) ;
AO22X1_RVT ctmi_265 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [2] ) , .Y ( ctmn_242 ) ) ;
AO22X1_RVT ctmi_267 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [1] ) , .Y ( ctmn_243 ) ) ;
AO22X1_RVT ctmi_269 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [0] ) , .Y ( ctmn_244 ) ) ;
AO22X1_RVT ctmi_271 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [7] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [7] ) , .Y ( ctmn_245 ) ) ;
AO22X1_RVT ctmi_273 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [6] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [6] ) , .Y ( ctmn_246 ) ) ;
AO22X1_RVT ctmi_275 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [5] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [5] ) , .Y ( ctmn_247 ) ) ;
AO22X1_RVT ctmi_277 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [4] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [4] ) , .Y ( ctmn_248 ) ) ;
AO22X1_RVT ctmi_279 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [3] ) , .Y ( ctmn_249 ) ) ;
AO22X1_RVT ctmi_281 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [2] ) , .Y ( ctmn_250 ) ) ;
AO22X1_RVT ctmi_283 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [1] ) , .Y ( ctmn_251 ) ) ;
AO22X1_RVT ctmi_285 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [0] ) , .Y ( ctmn_252 ) ) ;
AO22X1_RVT ctmi_287 ( .A1 ( ctmn_235 ) , .A2 ( valid[2] ) , .A3 ( ctmn_236 ) , 
    .A4 ( valid[3] ) , .Y ( ctmn_253 ) ) ;
AO221X1_RVT ctmi_248 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [3] ) , .A5 ( ctmn_237 ) , 
    .Y ( \output_if.target [3] ) ) ;
INVX0_HVT phfnr_buf_502 ( .A ( round_robin_select[0] ) , .Y ( phfnn_313 ) ) ;
AO22X1_RVT ctmi_253 ( .A1 ( \input_if[2].target [3] ) , .A2 ( ctmn_235 ) , 
    .A3 ( \input_if[3].target [3] ) , .A4 ( ctmn_236 ) , .Y ( ctmn_237 ) ) ;
AND2X4_RVT ctmi_254 ( .A1 ( phfnn_313 ) , .A2 ( round_robin_select[1] ) , 
    .Y ( ctmn_235 ) ) ;
AND2X4_RVT ctmi_255 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_236 ) ) ;
NOR2X4_RVT ctmi_240 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_233 ) ) ;
NOR2X4_RVT ctmi_241 ( .A1 ( round_robin_select[1] ) , .A2 ( phfnn_313 ) , 
    .Y ( ctmn_234 ) ) ;
endmodule


module arbiter_SLAVE_NUM3_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ ( 
    clk , reset_n , is_full , in_rdy_m , rdy_out_demux_d , 
    \input_if[3].valid , \input_if[3].source , \input_if[3].target , 
    \input_if[3].data , \input_if[2].valid , \input_if[2].source , 
    \input_if[2].target , \input_if[2].data , \input_if[1].valid , 
    \input_if[1].source , \input_if[1].target , \input_if[1].data , 
    \input_if[0].valid , \input_if[0].source , \input_if[0].target , 
    \input_if[0].data , \output_if_s.valid , \output_if_s.source , 
    \output_if_s.target , \output_if_s.data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 , HFSNET_0 , 
    HFSNET_1 , HFSNET_2 , HFSNET_3 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if_s.valid ;
output [3:0] \output_if_s.source ;
output [3:0] \output_if_s.target ;
output [7:0] \output_if_s.data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;
input  HFSNET_0 ;
input  HFSNET_1 ;
input  HFSNET_2 ;
input  HFSNET_3 ;

wire [1:0] round_robin_select ;
wire [3:0] valid_m ;

Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master_ u_Arbiter_data_path ( 
    .round_robin_select ( round_robin_select ) , .valid ( valid_m ) , 
    .\input_if[3].source ( \input_if[3].source ) , 
    .\input_if[3].target ( \input_if[3].target ) , 
    .\input_if[3].data ( \input_if[3].data ) , 
    .\input_if[2].source ( \input_if[2].source ) , 
    .\input_if[2].target ( \input_if[2].target ) , 
    .\input_if[2].data ( \input_if[2].data ) , 
    .\input_if[1].source ( \input_if[1].source ) , 
    .\input_if[1].target ( \input_if[1].target ) , 
    .\input_if[1].data ( \input_if[1].data ) , 
    .\input_if[0].source ( \input_if[0].source ) , 
    .\input_if[0].target ( \input_if[0].target ) , 
    .\input_if[0].data ( \input_if[0].data ) , 
    .\output_if.valid ( \output_if_s.valid ) , 
    .\output_if.source ( \output_if_s.source ) , 
    .\output_if.target ( \output_if_s.target ) , 
    .\output_if.data ( \output_if_s.data ) ) ;
Arbiter_control_unit_SLAVE_NUM3_AMOUNT_MASTER4_I_input_if_internal_if_slave_ u_Arbiter_control_unit ( 
    .clk ( clk ) , .reset_n ( reset_n ) , .in_rdy_m ( in_rdy_m ) , 
    .round_robin_select ( round_robin_select ) , .valid_m ( valid_m ) , 
    .rdy_out_demux_d ( rdy_out_demux_d ) ,
    .\input_if[3].target ( { \input_if[3].target [3] , 
        SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 } ) ,
    .\input_if[2].target ( { \input_if[2].target [3] , 
        SYNOPSYS_UNCONNECTED_4 , SYNOPSYS_UNCONNECTED_5 , 
        SYNOPSYS_UNCONNECTED_6 } ) ,
    .\input_if[1].target ( { \input_if[1].target [3] , 
        SYNOPSYS_UNCONNECTED_7 , SYNOPSYS_UNCONNECTED_8 , 
        SYNOPSYS_UNCONNECTED_9 } ) ,
    .\input_if[0].target ( { \input_if[0].target [3] , 
        SYNOPSYS_UNCONNECTED_10 , SYNOPSYS_UNCONNECTED_11 , 
        SYNOPSYS_UNCONNECTED_12 } ) ,
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) , .HFSNET_1 ( HFSNET_0 ) , 
    .HFSNET_3 ( HFSNET_1 ) , .HFSNET_5 ( HFSNET_2 ) , .HFSNET_7 ( HFSNET_3 ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_6 ( clk , reset_n , din , en , dout , 
    clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;
input  clock_gate_logic_0 ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module d_ff_1_0_11 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_10 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_9 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_8 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module Arbiter_control_unit_SLAVE_NUM2_AMOUNT_MASTER4_I_input_if_internal_if_slave_ ( 
    clk , reset_n , is_full , in_rdy_m , round_robin_select , valid_m , 
    rdy_out_demux_d , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [1:0] round_robin_select ;
output [3:0] valid_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;

wire [1:0] prev_grant ;

d_ff_1_0_8 \SELECT_RDY[0].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_0_net_[0] } ) ,
    .en ( \_1_net_[0] ) , .dout ( rdy_out_demux_d[0] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_9 \SELECT_RDY[1].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_2_net_[0] } ) ,
    .en ( \_3_net_[0] ) , .dout ( rdy_out_demux_d[1] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_10 \SELECT_RDY[2].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_4_net_[0] } ) ,
    .en ( \_5_net_[0] ) , .dout ( rdy_out_demux_d[2] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_11 \SELECT_RDY[3].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_6_net_[0] } ) ,
    .en ( \_7_net_[0] ) , .dout ( rdy_out_demux_d[3] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_6 round_robin_grant ( .reset_n ( reset_n ) , 
    .din ( round_robin_select ) , .dout ( prev_grant ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
NOR3X1_RVT ctmi_99 ( .A1 ( HFSNET_2 ) , .A2 ( in_rdy_m[1] ) , 
    .A3 ( rdy_out_demux_d[1] ) , .Y ( valid_m[1] ) ) ;
NOR3X1_RVT ctmi_102 ( .A1 ( HFSNET_0 ) , .A2 ( in_rdy_m[3] ) , 
    .A3 ( rdy_out_demux_d[3] ) , .Y ( valid_m[3] ) ) ;
OR3X1_RVT ctmi_105 ( .A1 ( in_rdy_m[2] ) , .A2 ( rdy_out_demux_d[2] ) , 
    .A3 ( HFSNET_3 ) , .Y ( ctmn_106 ) ) ;
INVX1_HVT HFSINV_124_546 ( .A ( \input_if[2].target [2] ) , .Y ( HFSNET_3 ) ) ;
INVX0_HVT HFSINV_359_542 ( .A ( \input_if[1].target [2] ) , .Y ( HFSNET_2 ) ) ;
AND3X1_RVT ctmi_128 ( .A1 ( ctmn_124 ) , .A2 ( valid_m[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_2_net_[0] ) ) ;
INVX0_HVT HFSINV_91_537 ( .A ( \input_if[0].target [2] ) , .Y ( HFSNET_1 ) ) ;
INVX1_HVT phfnr_buf_497 ( .A ( prev_grant[1] ) , .Y ( phfnn_308 ) ) ;
INVX1_HVT HFSINV_278_551 ( .A ( prev_grant[0] ) , .Y ( HFSNET_4 ) ) ;
INVX1_HVT phfnr_buf_499 ( .A ( ctmn_109 ) , .Y ( phfnn_310 ) ) ;
AO22X1_RVT ctmi_110 ( .A1 ( HFSNET_4 ) , .A2 ( phfnn_308 ) , 
    .A3 ( HFSNET_5 ) , .A4 ( prev_grant[1] ) , .Y ( ctmn_109 ) ) ;
OR2X1_RVT ctmi_98 ( .A1 ( in_rdy_m[0] ) , .A2 ( valid_m[0] ) , 
    .Y ( \_1_net_[0] ) ) ;
INVX0_HVT HFSINV_58_533 ( .A ( \input_if[3].target [2] ) , .Y ( HFSNET_0 ) ) ;
AND3X1_RVT ctmi_132 ( .A1 ( valid_m[3] ) , .A2 ( round_robin_select[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_6_net_[0] ) ) ;
INVX0_HVT phfnr_buf_500 ( .A ( ctmn_116 ) , .Y ( phfnn_311 ) ) ;
INVX1_HVT ctmi_23 ( .A ( ctmn_106 ) , .Y ( valid_m[2] ) ) ;
OR2X1_RVT ctmi_108 ( .A1 ( in_rdy_m[2] ) , .A2 ( valid_m[2] ) , 
    .Y ( \_5_net_[0] ) ) ;
OR2X1_RVT ctmi_104 ( .A1 ( in_rdy_m[3] ) , .A2 ( valid_m[3] ) , 
    .Y ( \_7_net_[0] ) ) ;
OR2X1_RVT ctmi_101 ( .A1 ( in_rdy_m[1] ) , .A2 ( valid_m[1] ) , 
    .Y ( \_3_net_[0] ) ) ;
INVX0_HVT phfnr_buf_501 ( .A ( ctmn_121 ) , .Y ( phfnn_312 ) ) ;
AOI221X1_RVT ctmi_522 ( .A1 ( \input_if[2].target [2] ) , 
    .A2 ( \input_if[2].target [2] ) , .A3 ( ctmn_97 ) , 
    .A4 ( \input_if[3].target [2] ) , .A5 ( \input_if[0].target [2] ) , 
    .Y ( ctmn_79 ) ) ;
INVX1_HVT ctmi_26 ( .A ( ctmn_102 ) , .Y ( valid_m[0] ) ) ;
AO221X1_RVT ctmi_523 ( .A1 ( ctmn_81 ) , .A2 ( ctmn_81 ) , .A3 ( ctmn_83 ) , 
    .A4 ( HFSNET_5 ) , .A5 ( ctmn_84 ) , .Y ( clkgt_enable_net_25 ) ) ;
NAND2X0_RVT ctmi_114 ( .A1 ( HFSNET_4 ) , .A2 ( ctmn_111 ) , .Y ( ctmn_112 ) ) ;
AO221X1_RVT ctmi_115 ( .A1 ( phfnn_308 ) , .A2 ( valid_m[1] ) , 
    .A3 ( prev_grant[1] ) , .A4 ( valid_m[3] ) , .A5 ( HFSNET_5 ) , 
    .Y ( ctmn_111 ) ) ;
AO22X1_RVT ctmi_116 ( .A1 ( HFSNET_4 ) , .A2 ( ctmn_111 ) , .A3 ( ctmn_113 ) , 
    .A4 ( ctmn_119 ) , .Y ( ctmn_120 ) ) ;
OAI221X1_RVT ctmi_117 ( .A1 ( valid_m[0] ) , .A2 ( HFSNET_5 ) , 
    .A3 ( valid_m[0] ) , .A4 ( valid_m[1] ) , .A5 ( prev_grant[1] ) , 
    .Y ( ctmn_113 ) ) ;
OAI221X1_RVT ctmi_118 ( .A1 ( phfnn_311 ) , .A2 ( phfnn_308 ) , 
    .A3 ( ctmn_116 ) , .A4 ( phfnn_310 ) , .A5 ( ctmn_118 ) , 
    .Y ( ctmn_119 ) ) ;
NBUFFX2_RVT HFSBUF_239_552 ( .A ( prev_grant[0] ) , .Y ( HFSNET_5 ) ) ;
OR3X1_RVT ctmi_95 ( .A1 ( in_rdy_m[0] ) , .A2 ( rdy_out_demux_d[0] ) , 
    .A3 ( HFSNET_1 ) , .Y ( ctmn_102 ) ) ;
INVX0_HVT ctmi_29 ( .A ( rdy_out_demux_d[3] ) , .Y ( ctmn_97 ) ) ;
OA221X1_RVT ctmi_122 ( .A1 ( prev_grant[1] ) , .A2 ( ctmn_106 ) , 
    .A3 ( prev_grant[1] ) , .A4 ( ctmn_117 ) , .A5 ( ctmn_113 ) , 
    .Y ( ctmn_118 ) ) ;
NAND2X0_RVT ctmi_123 ( .A1 ( HFSNET_5 ) , .A2 ( valid_m[3] ) , 
    .Y ( ctmn_117 ) ) ;
OA221X1_RVT ctmi_125 ( .A1 ( phfnn_310 ) , .A2 ( ctmn_102 ) , 
    .A3 ( ctmn_109 ) , .A4 ( ctmn_106 ) , .A5 ( ctmn_121 ) , .Y ( ctmn_122 ) ) ;
NAND2X0_RVT ctmi_126 ( .A1 ( ctmn_118 ) , .A2 ( phfnn_311 ) , 
    .Y ( ctmn_121 ) ) ;
CGLPPRX2_HVT clock_gate_dout_reg ( .CLK ( clk ) , 
    .EN ( clkgt_enable_net_25 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_dout_reg ) ) ;
NOR2X1_RVT A224 ( .A1 ( ctmn_120 ) , .A2 ( ctmn_102 ) , .Y ( \_0_net_[0] ) ) ;
OA222X1_RVT ctmi_253 ( .A1 ( ctmn_109 ) , .A2 ( ctmn_102 ) , 
    .A3 ( phfnn_310 ) , .A4 ( ctmn_106 ) , .A5 ( HFSNET_5 ) , 
    .A6 ( phfnn_188 ) , .Y ( ctmn_116 ) ) ;
OA22X1_RVT ctmi_404 ( .A1 ( ctmn_122 ) , .A2 ( HFSNET_4 ) , .A3 ( ctmn_111 ) , 
    .A4 ( phfnn_312 ) , .Y ( round_robin_select[0] ) ) ;
NOR2X1_RVT ctmi_405 ( .A1 ( valid_m[1] ) , .A2 ( valid_m[3] ) , 
    .Y ( phfnn_188 ) ) ;
OA21X1_RVT ctmi_406 ( .A1 ( phfnn_310 ) , .A2 ( ctmn_112 ) , 
    .A3 ( ctmn_120 ) , .Y ( round_robin_select[1] ) ) ;
INVX0_HVT ctmi_407 ( .A ( round_robin_select[1] ) , .Y ( ctmn_124 ) ) ;
NOR3X1_RVT ctmi_259 ( .A1 ( round_robin_select[0] ) , .A2 ( ctmn_106 ) , 
    .A3 ( ctmn_124 ) , .Y ( \_4_net_[0] ) ) ;
AOI221X1_RVT ctmi_204 ( .A1 ( ctmn_79 ) , .A2 ( HFSNET_2 ) , .A3 ( ctmn_79 ) , 
    .A4 ( rdy_out_demux_d[1] ) , .A5 ( HFSNET_5 ) , .Y ( ctmn_81 ) ) ;
OR3X1_RVT ctmi_210 ( .A1 ( \input_if[1].target [2] ) , 
    .A2 ( \input_if[3].target [2] ) , .A3 ( ctmn_82 ) , .Y ( ctmn_83 ) ) ;
OAI22X1_RVT ctmi_211 ( .A1 ( rdy_out_demux_d[2] ) , .A2 ( HFSNET_3 ) , 
    .A3 ( HFSNET_1 ) , .A4 ( rdy_out_demux_d[0] ) , .Y ( ctmn_82 ) ) ;
NAND4X0_RVT ctmi_212 ( .A1 ( clkgt_enable_net_0 ) , 
    .A2 ( clkgt_enable_net_1 ) , .A3 ( clkgt_enable_net_2 ) , 
    .A4 ( clkgt_enable_net_3 ) , .Y ( ctmn_84 ) ) ;
endmodule


module Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__2 ( 
    round_robin_select , valid , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , \output_if.valid , 
    \output_if.source , \output_if.target , \output_if.data ) ;
input  [1:0] round_robin_select ;
input  [3:0] valid ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if.valid ;
output [3:0] \output_if.source ;
output [3:0] \output_if.target ;
output [7:0] \output_if.data ;

AO221X1_RVT ctmi_256 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [2] ) , .A5 ( ctmn_238 ) , 
    .Y ( \output_if.target [2] ) ) ;
AO221X1_RVT ctmi_258 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [1] ) , .A5 ( ctmn_239 ) , 
    .Y ( \output_if.target [1] ) ) ;
AO221X1_RVT ctmi_260 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [0] ) , .A5 ( ctmn_240 ) , 
    .Y ( \output_if.target [0] ) ) ;
AO221X1_RVT ctmi_262 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [3] ) , .A5 ( ctmn_241 ) , 
    .Y ( \output_if.source [3] ) ) ;
AO221X1_RVT ctmi_264 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [2] ) , .A5 ( ctmn_242 ) , 
    .Y ( \output_if.source [2] ) ) ;
AO221X1_RVT ctmi_266 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [1] ) , .A5 ( ctmn_243 ) , 
    .Y ( \output_if.source [1] ) ) ;
AO221X1_RVT ctmi_268 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [0] ) , .A5 ( ctmn_244 ) , 
    .Y ( \output_if.source [0] ) ) ;
AO221X1_RVT ctmi_270 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [7] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [7] ) , .A5 ( ctmn_245 ) , 
    .Y ( \output_if.data [7] ) ) ;
AO221X1_RVT ctmi_272 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [6] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [6] ) , .A5 ( ctmn_246 ) , 
    .Y ( \output_if.data [6] ) ) ;
AO221X1_RVT ctmi_274 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [5] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [5] ) , .A5 ( ctmn_247 ) , 
    .Y ( \output_if.data [5] ) ) ;
AO221X1_RVT ctmi_276 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [4] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [4] ) , .A5 ( ctmn_248 ) , 
    .Y ( \output_if.data [4] ) ) ;
AO221X1_RVT ctmi_278 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [3] ) , .A5 ( ctmn_249 ) , 
    .Y ( \output_if.data [3] ) ) ;
AO221X1_RVT ctmi_280 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [2] ) , .A5 ( ctmn_250 ) , 
    .Y ( \output_if.data [2] ) ) ;
AO221X1_RVT ctmi_282 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [1] ) , .A5 ( ctmn_251 ) , 
    .Y ( \output_if.data [1] ) ) ;
AO221X1_RVT ctmi_284 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [0] ) , .A5 ( ctmn_252 ) , 
    .Y ( \output_if.data [0] ) ) ;
AO221X1_RVT ctmi_286 ( .A1 ( ctmn_233 ) , .A2 ( valid[0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( valid[1] ) , .A5 ( ctmn_253 ) , 
    .Y ( \output_if.valid ) ) ;
AO22X1_RVT ctmi_257 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [2] ) , .Y ( ctmn_238 ) ) ;
AO22X1_RVT ctmi_259 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [1] ) , .Y ( ctmn_239 ) ) ;
AO22X1_RVT ctmi_261 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [0] ) , .Y ( ctmn_240 ) ) ;
AO22X1_RVT ctmi_263 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [3] ) , .Y ( ctmn_241 ) ) ;
AO22X1_RVT ctmi_265 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [2] ) , .Y ( ctmn_242 ) ) ;
AO22X1_RVT ctmi_267 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [1] ) , .Y ( ctmn_243 ) ) ;
AO22X1_RVT ctmi_269 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [0] ) , .Y ( ctmn_244 ) ) ;
AO22X1_RVT ctmi_271 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [7] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [7] ) , .Y ( ctmn_245 ) ) ;
AO22X1_RVT ctmi_273 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [6] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [6] ) , .Y ( ctmn_246 ) ) ;
AO22X1_RVT ctmi_275 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [5] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [5] ) , .Y ( ctmn_247 ) ) ;
AO22X1_RVT ctmi_277 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [4] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [4] ) , .Y ( ctmn_248 ) ) ;
AO22X1_RVT ctmi_279 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [3] ) , .Y ( ctmn_249 ) ) ;
AO22X1_RVT ctmi_281 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [2] ) , .Y ( ctmn_250 ) ) ;
AO22X1_RVT ctmi_283 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [1] ) , .Y ( ctmn_251 ) ) ;
AO22X1_RVT ctmi_285 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [0] ) , .Y ( ctmn_252 ) ) ;
AO22X1_RVT ctmi_287 ( .A1 ( ctmn_235 ) , .A2 ( valid[2] ) , .A3 ( ctmn_236 ) , 
    .A4 ( valid[3] ) , .Y ( ctmn_253 ) ) ;
AO221X1_RVT ctmi_248 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [3] ) , .A5 ( ctmn_237 ) , 
    .Y ( \output_if.target [3] ) ) ;
INVX0_HVT phfnr_buf_492 ( .A ( round_robin_select[0] ) , .Y ( phfnn_303 ) ) ;
AO22X1_RVT ctmi_253 ( .A1 ( \input_if[2].target [3] ) , .A2 ( ctmn_235 ) , 
    .A3 ( \input_if[3].target [3] ) , .A4 ( ctmn_236 ) , .Y ( ctmn_237 ) ) ;
AND2X4_RVT ctmi_254 ( .A1 ( phfnn_303 ) , .A2 ( round_robin_select[1] ) , 
    .Y ( ctmn_235 ) ) ;
AND2X4_RVT ctmi_255 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_236 ) ) ;
NOR2X4_RVT ctmi_238 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_233 ) ) ;
NOR2X4_RVT ctmi_239 ( .A1 ( round_robin_select[1] ) , .A2 ( phfnn_303 ) , 
    .Y ( ctmn_234 ) ) ;
endmodule


module arbiter_SLAVE_NUM2_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ ( 
    clk , reset_n , is_full , in_rdy_m , rdy_out_demux_d , 
    \input_if[3].valid , \input_if[3].source , \input_if[3].target , 
    \input_if[3].data , \input_if[2].valid , \input_if[2].source , 
    \input_if[2].target , \input_if[2].data , \input_if[1].valid , 
    \input_if[1].source , \input_if[1].target , \input_if[1].data , 
    \input_if[0].valid , \input_if[0].source , \input_if[0].target , 
    \input_if[0].data , \output_if_s.valid , \output_if_s.source , 
    \output_if_s.target , \output_if_s.data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if_s.valid ;
output [3:0] \output_if_s.source ;
output [3:0] \output_if_s.target ;
output [7:0] \output_if_s.data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;

wire [1:0] round_robin_select ;
wire [3:0] valid_m ;

Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__2 u_Arbiter_data_path ( 
    .round_robin_select ( round_robin_select ) , .valid ( valid_m ) , 
    .\input_if[3].source ( \input_if[3].source ) , 
    .\input_if[3].target ( \input_if[3].target ) , 
    .\input_if[3].data ( \input_if[3].data ) , 
    .\input_if[2].source ( \input_if[2].source ) , 
    .\input_if[2].target ( \input_if[2].target ) , 
    .\input_if[2].data ( \input_if[2].data ) , 
    .\input_if[1].source ( \input_if[1].source ) , 
    .\input_if[1].target ( \input_if[1].target ) , 
    .\input_if[1].data ( \input_if[1].data ) , 
    .\input_if[0].source ( \input_if[0].source ) , 
    .\input_if[0].target ( \input_if[0].target ) , 
    .\input_if[0].data ( \input_if[0].data ) , 
    .\output_if.valid ( \output_if_s.valid ) , 
    .\output_if.source ( \output_if_s.source ) , 
    .\output_if.target ( \output_if_s.target ) , 
    .\output_if.data ( \output_if_s.data ) ) ;
Arbiter_control_unit_SLAVE_NUM2_AMOUNT_MASTER4_I_input_if_internal_if_slave_ u_Arbiter_control_unit ( 
    .clk ( clk ) , .reset_n ( reset_n ) , .in_rdy_m ( in_rdy_m ) , 
    .round_robin_select ( round_robin_select ) , .valid_m ( valid_m ) , 
    .rdy_out_demux_d ( rdy_out_demux_d ) ,
    .\input_if[3].target ( { SYNOPSYS_UNCONNECTED_1 , 
        \input_if[3].target [2] , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 } ) ,
    .\input_if[2].target ( { SYNOPSYS_UNCONNECTED_4 , 
        \input_if[2].target [2] , SYNOPSYS_UNCONNECTED_5 , 
        SYNOPSYS_UNCONNECTED_6 } ) ,
    .\input_if[1].target ( { SYNOPSYS_UNCONNECTED_7 , 
        \input_if[1].target [2] , SYNOPSYS_UNCONNECTED_8 , 
        SYNOPSYS_UNCONNECTED_9 } ) ,
    .\input_if[0].target ( { SYNOPSYS_UNCONNECTED_10 , 
        \input_if[0].target [2] , SYNOPSYS_UNCONNECTED_11 , 
        SYNOPSYS_UNCONNECTED_12 } ) ,
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_5 ( clk , reset_n , din , en , dout , 
    clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;
input  clock_gate_logic_0 ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module d_ff_1_0_7 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_6 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_5 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_4 ( clk , reset_n , din , en , dout , clock_gate_logic_0 ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;
input  clock_gate_logic_0 ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clock_gate_logic_0 ) , .RSTB ( reset_n ) , 
    .Q ( dout[0] ) ) ;
endmodule


module Arbiter_control_unit_SLAVE_NUM1_AMOUNT_MASTER4_I_input_if_internal_if_slave_ ( 
    clk , reset_n , is_full , in_rdy_m , round_robin_select , valid_m , 
    rdy_out_demux_d , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 , HFSNET_1 , 
    HFSNET_4 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [1:0] round_robin_select ;
output [3:0] valid_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;
input  HFSNET_1 ;
input  HFSNET_4 ;

wire [1:0] prev_grant ;

d_ff_1_0_4 \SELECT_RDY[0].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_0_net_[0] } ) ,
    .en ( \_1_net_[0] ) , .dout ( rdy_out_demux_d[0] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_5 \SELECT_RDY[1].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_2_net_[0] } ) ,
    .en ( \_3_net_[0] ) , .dout ( rdy_out_demux_d[1] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_6 \SELECT_RDY[2].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_4_net_[0] } ) ,
    .en ( \_5_net_[0] ) , .dout ( rdy_out_demux_d[2] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_1_0_7 \SELECT_RDY[3].u_d_ff ( .reset_n ( reset_n ) ,
    .din ( { \_6_net_[0] } ) ,
    .en ( \_7_net_[0] ) , .dout ( rdy_out_demux_d[3] ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_5 round_robin_grant ( .reset_n ( reset_n ) , 
    .din ( round_robin_select ) , .dout ( prev_grant ) , 
    .clock_gate_logic_0 ( clk_clock_gate_dout_reg ) ) ;
NOR3X1_RVT ctmi_99 ( .A1 ( HFSNET_3 ) , .A2 ( in_rdy_m[1] ) , 
    .A3 ( rdy_out_demux_d[1] ) , .Y ( valid_m[1] ) ) ;
NOR3X0_RVT ctmi_102 ( .A1 ( HFSNET_0 ) , .A2 ( in_rdy_m[3] ) , 
    .A3 ( rdy_out_demux_d[3] ) , .Y ( valid_m[3] ) ) ;
OR3X1_RVT ctmi_105 ( .A1 ( in_rdy_m[2] ) , .A2 ( rdy_out_demux_d[2] ) , 
    .A3 ( HFSNET_5 ) , .Y ( ctmn_106 ) ) ;
INVX1_HVT HFSINV_576_545 ( .A ( \input_if[2].target [1] ) , .Y ( HFSNET_5 ) ) ;
INVX0_HVT HFSINV_93_540 ( .A ( HFSNET_4 ) , .Y ( HFSNET_3 ) ) ;
AND3X1_RVT ctmi_128 ( .A1 ( ctmn_124 ) , .A2 ( valid_m[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_2_net_[0] ) ) ;
INVX0_HVT HFSINV_134_536 ( .A ( \input_if[0].target [1] ) , .Y ( HFSNET_2 ) ) ;
INVX1_HVT phfnr_buf_487 ( .A ( prev_grant[1] ) , .Y ( phfnn_298 ) ) ;
INVX1_HVT HFSINV_201_549 ( .A ( prev_grant[0] ) , .Y ( HFSNET_6 ) ) ;
INVX1_HVT phfnr_buf_489 ( .A ( ctmn_109 ) , .Y ( phfnn_300 ) ) ;
AO22X1_RVT ctmi_110 ( .A1 ( HFSNET_6 ) , .A2 ( phfnn_298 ) , 
    .A3 ( HFSNET_7 ) , .A4 ( prev_grant[1] ) , .Y ( ctmn_109 ) ) ;
OR2X1_RVT ctmi_98 ( .A1 ( in_rdy_m[0] ) , .A2 ( valid_m[0] ) , 
    .Y ( \_1_net_[0] ) ) ;
INVX0_HVT HFSINV_10_531 ( .A ( HFSNET_1 ) , .Y ( HFSNET_0 ) ) ;
AND3X1_RVT ctmi_132 ( .A1 ( valid_m[3] ) , .A2 ( round_robin_select[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_6_net_[0] ) ) ;
INVX0_HVT phfnr_buf_490 ( .A ( ctmn_116 ) , .Y ( phfnn_301 ) ) ;
INVX0_HVT ctmi_23 ( .A ( ctmn_106 ) , .Y ( valid_m[2] ) ) ;
OR2X1_RVT ctmi_108 ( .A1 ( in_rdy_m[2] ) , .A2 ( valid_m[2] ) , 
    .Y ( \_5_net_[0] ) ) ;
OR2X1_RVT ctmi_104 ( .A1 ( in_rdy_m[3] ) , .A2 ( valid_m[3] ) , 
    .Y ( \_7_net_[0] ) ) ;
OR2X1_RVT ctmi_101 ( .A1 ( in_rdy_m[1] ) , .A2 ( valid_m[1] ) , 
    .Y ( \_3_net_[0] ) ) ;
INVX0_HVT phfnr_buf_491 ( .A ( ctmn_121 ) , .Y ( phfnn_302 ) ) ;
AOI221X1_RVT ctmi_520 ( .A1 ( \input_if[2].target [1] ) , 
    .A2 ( \input_if[2].target [1] ) , .A3 ( ctmn_99 ) , 
    .A4 ( \input_if[3].target [1] ) , .A5 ( \input_if[0].target [1] ) , 
    .Y ( ctmn_70 ) ) ;
INVX1_HVT ctmi_26 ( .A ( ctmn_102 ) , .Y ( valid_m[0] ) ) ;
AO221X1_RVT ctmi_521 ( .A1 ( ctmn_72 ) , .A2 ( ctmn_72 ) , .A3 ( ctmn_74 ) , 
    .A4 ( HFSNET_7 ) , .A5 ( ctmn_75 ) , .Y ( clkgt_enable_net_46 ) ) ;
NAND2X0_RVT ctmi_114 ( .A1 ( HFSNET_6 ) , .A2 ( ctmn_111 ) , .Y ( ctmn_112 ) ) ;
AO221X1_RVT ctmi_115 ( .A1 ( phfnn_298 ) , .A2 ( valid_m[1] ) , 
    .A3 ( prev_grant[1] ) , .A4 ( valid_m[3] ) , .A5 ( HFSNET_7 ) , 
    .Y ( ctmn_111 ) ) ;
AO22X1_RVT ctmi_116 ( .A1 ( HFSNET_6 ) , .A2 ( ctmn_111 ) , .A3 ( ctmn_113 ) , 
    .A4 ( ctmn_119 ) , .Y ( ctmn_120 ) ) ;
OAI221X1_RVT ctmi_117 ( .A1 ( valid_m[0] ) , .A2 ( HFSNET_7 ) , 
    .A3 ( valid_m[0] ) , .A4 ( valid_m[1] ) , .A5 ( prev_grant[1] ) , 
    .Y ( ctmn_113 ) ) ;
OAI221X1_RVT ctmi_118 ( .A1 ( phfnn_301 ) , .A2 ( phfnn_298 ) , 
    .A3 ( ctmn_116 ) , .A4 ( phfnn_300 ) , .A5 ( ctmn_118 ) , 
    .Y ( ctmn_119 ) ) ;
NBUFFX2_RVT HFSBUF_551_550 ( .A ( prev_grant[0] ) , .Y ( HFSNET_7 ) ) ;
OR3X1_RVT ctmi_95 ( .A1 ( in_rdy_m[0] ) , .A2 ( rdy_out_demux_d[0] ) , 
    .A3 ( HFSNET_2 ) , .Y ( ctmn_102 ) ) ;
INVX0_HVT ctmi_29 ( .A ( rdy_out_demux_d[3] ) , .Y ( ctmn_99 ) ) ;
OA221X1_RVT ctmi_122 ( .A1 ( prev_grant[1] ) , .A2 ( ctmn_106 ) , 
    .A3 ( prev_grant[1] ) , .A4 ( ctmn_117 ) , .A5 ( ctmn_113 ) , 
    .Y ( ctmn_118 ) ) ;
NAND2X0_RVT ctmi_123 ( .A1 ( HFSNET_7 ) , .A2 ( valid_m[3] ) , 
    .Y ( ctmn_117 ) ) ;
OA221X1_RVT ctmi_125 ( .A1 ( phfnn_300 ) , .A2 ( ctmn_102 ) , 
    .A3 ( ctmn_109 ) , .A4 ( ctmn_106 ) , .A5 ( ctmn_121 ) , .Y ( ctmn_122 ) ) ;
NAND2X0_RVT ctmi_126 ( .A1 ( ctmn_118 ) , .A2 ( phfnn_301 ) , 
    .Y ( ctmn_121 ) ) ;
CGLPPRX2_HVT clock_gate_dout_reg ( .CLK ( clk ) , 
    .EN ( clkgt_enable_net_46 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_dout_reg ) ) ;
NOR2X1_RVT A223 ( .A1 ( ctmn_120 ) , .A2 ( ctmn_102 ) , .Y ( \_0_net_[0] ) ) ;
OA222X1_RVT ctmi_263 ( .A1 ( ctmn_109 ) , .A2 ( ctmn_102 ) , 
    .A3 ( phfnn_300 ) , .A4 ( ctmn_106 ) , .A5 ( HFSNET_7 ) , 
    .A6 ( phfnn_177 ) , .Y ( ctmn_116 ) ) ;
OA22X1_RVT ctmi_408 ( .A1 ( ctmn_122 ) , .A2 ( HFSNET_6 ) , .A3 ( ctmn_111 ) , 
    .A4 ( phfnn_302 ) , .Y ( round_robin_select[0] ) ) ;
NOR2X1_RVT ctmi_409 ( .A1 ( valid_m[1] ) , .A2 ( valid_m[3] ) , 
    .Y ( phfnn_177 ) ) ;
OA21X1_RVT ctmi_410 ( .A1 ( phfnn_300 ) , .A2 ( ctmn_112 ) , 
    .A3 ( ctmn_120 ) , .Y ( round_robin_select[1] ) ) ;
INVX0_HVT ctmi_411 ( .A ( round_robin_select[1] ) , .Y ( ctmn_124 ) ) ;
NOR3X1_RVT ctmi_269 ( .A1 ( round_robin_select[0] ) , .A2 ( ctmn_106 ) , 
    .A3 ( ctmn_124 ) , .Y ( \_4_net_[0] ) ) ;
AOI221X1_RVT ctmi_194 ( .A1 ( ctmn_70 ) , .A2 ( HFSNET_3 ) , .A3 ( ctmn_70 ) , 
    .A4 ( rdy_out_demux_d[1] ) , .A5 ( HFSNET_7 ) , .Y ( ctmn_72 ) ) ;
OR3X1_RVT ctmi_200 ( .A1 ( \input_if[1].target [1] ) , 
    .A2 ( \input_if[3].target [1] ) , .A3 ( ctmn_73 ) , .Y ( ctmn_74 ) ) ;
OAI22X1_RVT ctmi_201 ( .A1 ( rdy_out_demux_d[2] ) , .A2 ( HFSNET_5 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( rdy_out_demux_d[0] ) , .Y ( ctmn_73 ) ) ;
NAND4X0_RVT ctmi_202 ( .A1 ( clkgt_enable_net_0 ) , 
    .A2 ( clkgt_enable_net_1 ) , .A3 ( clkgt_enable_net_2 ) , 
    .A4 ( clkgt_enable_net_3 ) , .Y ( ctmn_75 ) ) ;
endmodule


module Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__1 ( 
    round_robin_select , valid , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , \output_if.valid , 
    \output_if.source , \output_if.target , \output_if.data ) ;
input  [1:0] round_robin_select ;
input  [3:0] valid ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if.valid ;
output [3:0] \output_if.source ;
output [3:0] \output_if.target ;
output [7:0] \output_if.data ;

AO221X1_RVT ctmi_256 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [2] ) , .A5 ( ctmn_238 ) , 
    .Y ( \output_if.target [2] ) ) ;
AO221X1_RVT ctmi_258 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [1] ) , .A5 ( ctmn_239 ) , 
    .Y ( \output_if.target [1] ) ) ;
AO221X1_RVT ctmi_260 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [0] ) , .A5 ( ctmn_240 ) , 
    .Y ( \output_if.target [0] ) ) ;
AO221X1_RVT ctmi_262 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [3] ) , .A5 ( ctmn_241 ) , 
    .Y ( \output_if.source [3] ) ) ;
AO221X1_RVT ctmi_264 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [2] ) , .A5 ( ctmn_242 ) , 
    .Y ( \output_if.source [2] ) ) ;
AO221X1_RVT ctmi_266 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [1] ) , .A5 ( ctmn_243 ) , 
    .Y ( \output_if.source [1] ) ) ;
AO221X1_RVT ctmi_268 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [0] ) , .A5 ( ctmn_244 ) , 
    .Y ( \output_if.source [0] ) ) ;
AO221X1_RVT ctmi_270 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [7] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [7] ) , .A5 ( ctmn_245 ) , 
    .Y ( \output_if.data [7] ) ) ;
AO221X1_RVT ctmi_272 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [6] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [6] ) , .A5 ( ctmn_246 ) , 
    .Y ( \output_if.data [6] ) ) ;
AO221X1_RVT ctmi_274 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [5] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [5] ) , .A5 ( ctmn_247 ) , 
    .Y ( \output_if.data [5] ) ) ;
AO221X1_RVT ctmi_276 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [4] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [4] ) , .A5 ( ctmn_248 ) , 
    .Y ( \output_if.data [4] ) ) ;
AO221X1_RVT ctmi_278 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [3] ) , .A5 ( ctmn_249 ) , 
    .Y ( \output_if.data [3] ) ) ;
AO221X1_RVT ctmi_280 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [2] ) , .A5 ( ctmn_250 ) , 
    .Y ( \output_if.data [2] ) ) ;
AO221X1_RVT ctmi_282 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [1] ) , .A5 ( ctmn_251 ) , 
    .Y ( \output_if.data [1] ) ) ;
AO221X1_RVT ctmi_284 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [0] ) , .A5 ( ctmn_252 ) , 
    .Y ( \output_if.data [0] ) ) ;
AO221X1_RVT ctmi_286 ( .A1 ( ctmn_233 ) , .A2 ( valid[0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( valid[1] ) , .A5 ( ctmn_253 ) , 
    .Y ( \output_if.valid ) ) ;
AO22X1_RVT ctmi_257 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [2] ) , .Y ( ctmn_238 ) ) ;
AO22X1_RVT ctmi_259 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [1] ) , .Y ( ctmn_239 ) ) ;
AO22X1_RVT ctmi_261 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [0] ) , .Y ( ctmn_240 ) ) ;
AO22X1_RVT ctmi_263 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [3] ) , .Y ( ctmn_241 ) ) ;
AO22X1_RVT ctmi_265 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [2] ) , .Y ( ctmn_242 ) ) ;
AO22X1_RVT ctmi_267 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [1] ) , .Y ( ctmn_243 ) ) ;
AO22X1_RVT ctmi_269 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [0] ) , .Y ( ctmn_244 ) ) ;
AO22X1_RVT ctmi_271 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [7] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [7] ) , .Y ( ctmn_245 ) ) ;
AO22X1_RVT ctmi_273 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [6] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [6] ) , .Y ( ctmn_246 ) ) ;
AO22X1_RVT ctmi_275 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [5] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [5] ) , .Y ( ctmn_247 ) ) ;
AO22X1_RVT ctmi_277 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [4] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [4] ) , .Y ( ctmn_248 ) ) ;
AO22X1_RVT ctmi_279 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [3] ) , .Y ( ctmn_249 ) ) ;
AO22X1_RVT ctmi_281 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [2] ) , .Y ( ctmn_250 ) ) ;
AO22X1_RVT ctmi_283 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [1] ) , .Y ( ctmn_251 ) ) ;
AO22X1_RVT ctmi_285 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [0] ) , .Y ( ctmn_252 ) ) ;
AO22X1_RVT ctmi_287 ( .A1 ( ctmn_235 ) , .A2 ( valid[2] ) , .A3 ( ctmn_236 ) , 
    .A4 ( valid[3] ) , .Y ( ctmn_253 ) ) ;
AO221X1_RVT ctmi_248 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [3] ) , .A5 ( ctmn_237 ) , 
    .Y ( \output_if.target [3] ) ) ;
INVX0_HVT phfnr_buf_482 ( .A ( round_robin_select[0] ) , .Y ( phfnn_293 ) ) ;
AO22X1_RVT ctmi_253 ( .A1 ( \input_if[2].target [3] ) , .A2 ( ctmn_235 ) , 
    .A3 ( \input_if[3].target [3] ) , .A4 ( ctmn_236 ) , .Y ( ctmn_237 ) ) ;
AND2X4_RVT ctmi_254 ( .A1 ( phfnn_293 ) , .A2 ( round_robin_select[1] ) , 
    .Y ( ctmn_235 ) ) ;
AND2X4_RVT ctmi_255 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_236 ) ) ;
NOR2X4_RVT ctmi_236 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_233 ) ) ;
NOR2X4_RVT ctmi_237 ( .A1 ( round_robin_select[1] ) , .A2 ( phfnn_293 ) , 
    .Y ( ctmn_234 ) ) ;
endmodule


module arbiter_SLAVE_NUM1_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ ( 
    clk , reset_n , is_full , in_rdy_m , rdy_out_demux_d , 
    \input_if[3].valid , \input_if[3].source , \input_if[3].target , 
    \input_if[3].data , \input_if[2].valid , \input_if[2].source , 
    \input_if[2].target , \input_if[2].data , \input_if[1].valid , 
    \input_if[1].source , \input_if[1].target , \input_if[1].data , 
    \input_if[0].valid , \input_if[0].source , \input_if[0].target , 
    \input_if[0].data , \output_if_s.valid , \output_if_s.source , 
    \output_if_s.target , \output_if_s.data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 , HFSNET_0 , 
    HFSNET_1 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if_s.valid ;
output [3:0] \output_if_s.source ;
output [3:0] \output_if_s.target ;
output [7:0] \output_if_s.data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;
input  HFSNET_0 ;
input  HFSNET_1 ;

wire [1:0] round_robin_select ;
wire [3:0] valid_m ;

Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__1 u_Arbiter_data_path ( 
    .round_robin_select ( round_robin_select ) , .valid ( valid_m ) , 
    .\input_if[3].source ( \input_if[3].source ) , 
    .\input_if[3].target ( \input_if[3].target ) , 
    .\input_if[3].data ( \input_if[3].data ) , 
    .\input_if[2].source ( \input_if[2].source ) , 
    .\input_if[2].target ( \input_if[2].target ) , 
    .\input_if[2].data ( \input_if[2].data ) , 
    .\input_if[1].source ( \input_if[1].source ) , 
    .\input_if[1].target ( \input_if[1].target ) , 
    .\input_if[1].data ( \input_if[1].data ) , 
    .\input_if[0].source ( \input_if[0].source ) , 
    .\input_if[0].target ( \input_if[0].target ) , 
    .\input_if[0].data ( \input_if[0].data ) , 
    .\output_if.valid ( \output_if_s.valid ) , 
    .\output_if.source ( \output_if_s.source ) , 
    .\output_if.target ( \output_if_s.target ) , 
    .\output_if.data ( \output_if_s.data ) ) ;
Arbiter_control_unit_SLAVE_NUM1_AMOUNT_MASTER4_I_input_if_internal_if_slave_ u_Arbiter_control_unit ( 
    .clk ( clk ) , .reset_n ( reset_n ) , .in_rdy_m ( in_rdy_m ) , 
    .round_robin_select ( round_robin_select ) , .valid_m ( valid_m ) , 
    .rdy_out_demux_d ( rdy_out_demux_d ) ,
    .\input_if[3].target ( { SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        \input_if[3].target [1] , SYNOPSYS_UNCONNECTED_3 } ) ,
    .\input_if[2].target ( { SYNOPSYS_UNCONNECTED_4 , SYNOPSYS_UNCONNECTED_5 , 
        \input_if[2].target [1] , SYNOPSYS_UNCONNECTED_6 } ) ,
    .\input_if[1].target ( { SYNOPSYS_UNCONNECTED_7 , SYNOPSYS_UNCONNECTED_8 , 
        \input_if[1].target [1] , SYNOPSYS_UNCONNECTED_9 } ) ,
    .\input_if[0].target ( { SYNOPSYS_UNCONNECTED_10 , 
        SYNOPSYS_UNCONNECTED_11 , \input_if[0].target [1] , 
        SYNOPSYS_UNCONNECTED_12 } ) ,
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) , .HFSNET_1 ( HFSNET_0 ) , 
    .HFSNET_4 ( HFSNET_1 ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_4 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module d_ff_1_0_3 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_2 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_1 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
endmodule


module d_ff_1_0_0 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [0:0] din ;
input  en ;
output [0:0] dout ;

MUX21X1_RVT ctmi_6 ( .A1 ( dout[0] ) , .A2 ( din[0] ) , .S0 ( en ) , 
    .Y ( SEQMAP_NET_3 ) ) ;
SDFFARX1_HVT \dout_reg[0] ( .D ( SEQMAP_NET_3 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
endmodule


module Arbiter_control_unit_SLAVE_NUM0_AMOUNT_MASTER4_I_input_if_internal_if_slave_ ( 
    clk , reset_n , is_full , in_rdy_m , round_robin_select , valid_m , 
    rdy_out_demux_d , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , HFSNET_4 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [1:0] round_robin_select ;
output [3:0] valid_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
input  HFSNET_4 ;

wire [1:0] prev_grant ;

d_ff_1_0_0 \SELECT_RDY[0].u_d_ff ( .clk ( clk ) , .reset_n ( HFSNET_4 ) ,
    .din ( { \_0_net_[0] } ) ,
    .en ( \_1_net_[0] ) , .dout ( rdy_out_demux_d[0] ) ) ;
d_ff_1_0_1 \SELECT_RDY[1].u_d_ff ( .clk ( clk ) , .reset_n ( HFSNET_4 ) ,
    .din ( { \_2_net_[0] } ) ,
    .en ( \_3_net_[0] ) , .dout ( rdy_out_demux_d[1] ) ) ;
d_ff_1_0_2 \SELECT_RDY[2].u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) ,
    .din ( { \_4_net_[0] } ) ,
    .en ( \_5_net_[0] ) , .dout ( rdy_out_demux_d[2] ) ) ;
d_ff_1_0_3 \SELECT_RDY[3].u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) ,
    .din ( { \_6_net_[0] } ) ,
    .en ( \_7_net_[0] ) , .dout ( rdy_out_demux_d[3] ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_4 round_robin_grant ( .clk ( clk ) , 
    .reset_n ( HFSNET_4 ) , .din ( round_robin_select ) , 
    .dout ( prev_grant ) ) ;
NOR3X1_RVT ctmi_99 ( .A1 ( HFSNET_1 ) , .A2 ( in_rdy_m[1] ) , 
    .A3 ( rdy_out_demux_d[1] ) , .Y ( valid_m[1] ) ) ;
NOR3X1_RVT ctmi_102 ( .A1 ( HFSNET_3 ) , .A2 ( in_rdy_m[3] ) , 
    .A3 ( rdy_out_demux_d[3] ) , .Y ( valid_m[3] ) ) ;
OR3X1_RVT ctmi_105 ( .A1 ( in_rdy_m[2] ) , .A2 ( rdy_out_demux_d[2] ) , 
    .A3 ( HFSNET_2 ) , .Y ( ctmn_106 ) ) ;
OA21X2_HVT ctmi_109 ( .A1 ( phfnn_289 ) , .A2 ( ctmn_112 ) , 
    .A3 ( ctmn_120 ) , .Y ( round_robin_select[1] ) ) ;
OA22X1_RVT ctmi_124 ( .A1 ( ctmn_122 ) , .A2 ( phfnn_288 ) , 
    .A3 ( ctmn_111 ) , .A4 ( phfnn_292 ) , .Y ( round_robin_select[0] ) ) ;
AND3X1_RVT ctmi_128 ( .A1 ( ctmn_124 ) , .A2 ( valid_m[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_2_net_[0] ) ) ;
INVX0_HVT HFSINV_7_527 ( .A ( \input_if[1].target [0] ) , .Y ( HFSNET_1 ) ) ;
INVX0_HVT HFSINV_42_530 ( .A ( \input_if[3].target [0] ) , .Y ( HFSNET_3 ) ) ;
INVX0_HVT HFSINV_7_529 ( .A ( \input_if[2].target [0] ) , .Y ( HFSNET_2 ) ) ;
INVX0_HVT HFSINV_52_526 ( .A ( \input_if[0].target [0] ) , .Y ( HFSNET_0 ) ) ;
AO22X1_RVT ctmi_110 ( .A1 ( phfnn_288 ) , .A2 ( phfnn_287 ) , 
    .A3 ( prev_grant[0] ) , .A4 ( prev_grant[1] ) , .Y ( ctmn_109 ) ) ;
OR2X1_RVT ctmi_98 ( .A1 ( in_rdy_m[0] ) , .A2 ( valid_m[0] ) , 
    .Y ( \_1_net_[0] ) ) ;
INVX1_HVT phfnr_buf_476 ( .A ( prev_grant[1] ) , .Y ( phfnn_287 ) ) ;
AND3X1_RVT ctmi_132 ( .A1 ( valid_m[3] ) , .A2 ( round_robin_select[1] ) , 
    .A3 ( round_robin_select[0] ) , .Y ( \_6_net_[0] ) ) ;
INVX1_HVT phfnr_buf_477 ( .A ( prev_grant[0] ) , .Y ( phfnn_288 ) ) ;
INVX0_HVT ctmi_19 ( .A ( ctmn_106 ) , .Y ( valid_m[2] ) ) ;
OR2X1_RVT ctmi_108 ( .A1 ( in_rdy_m[2] ) , .A2 ( valid_m[2] ) , 
    .Y ( \_5_net_[0] ) ) ;
OR2X1_RVT ctmi_104 ( .A1 ( in_rdy_m[3] ) , .A2 ( valid_m[3] ) , 
    .Y ( \_7_net_[0] ) ) ;
OR2X1_RVT ctmi_101 ( .A1 ( in_rdy_m[1] ) , .A2 ( valid_m[1] ) , 
    .Y ( \_3_net_[0] ) ) ;
INVX1_HVT phfnr_buf_478 ( .A ( ctmn_109 ) , .Y ( phfnn_289 ) ) ;
INVX0_HVT phfnr_buf_480 ( .A ( ctmn_116 ) , .Y ( phfnn_291 ) ) ;
INVX0_HVT phfnr_buf_481 ( .A ( ctmn_121 ) , .Y ( phfnn_292 ) ) ;
INVX1_HVT ctmi_23 ( .A ( ctmn_102 ) , .Y ( valid_m[0] ) ) ;
NAND2X0_RVT ctmi_114 ( .A1 ( phfnn_288 ) , .A2 ( ctmn_111 ) , 
    .Y ( ctmn_112 ) ) ;
AO221X1_RVT ctmi_115 ( .A1 ( phfnn_287 ) , .A2 ( valid_m[1] ) , 
    .A3 ( prev_grant[1] ) , .A4 ( valid_m[3] ) , .A5 ( prev_grant[0] ) , 
    .Y ( ctmn_111 ) ) ;
AO22X1_RVT ctmi_116 ( .A1 ( phfnn_288 ) , .A2 ( ctmn_111 ) , 
    .A3 ( ctmn_113 ) , .A4 ( ctmn_119 ) , .Y ( ctmn_120 ) ) ;
OAI221X1_RVT ctmi_117 ( .A1 ( valid_m[0] ) , .A2 ( prev_grant[0] ) , 
    .A3 ( valid_m[0] ) , .A4 ( valid_m[1] ) , .A5 ( prev_grant[1] ) , 
    .Y ( ctmn_113 ) ) ;
OAI221X1_RVT ctmi_118 ( .A1 ( phfnn_291 ) , .A2 ( phfnn_287 ) , 
    .A3 ( ctmn_116 ) , .A4 ( phfnn_289 ) , .A5 ( ctmn_118 ) , 
    .Y ( ctmn_119 ) ) ;
INVX0_HVT ctmi_12 ( .A ( round_robin_select[1] ) , .Y ( ctmn_124 ) ) ;
OA222X1_RVT ctmi_412 ( .A1 ( ctmn_109 ) , .A2 ( ctmn_102 ) , 
    .A3 ( prev_grant[0] ) , .A4 ( phfnn_290 ) , .A5 ( phfnn_289 ) , 
    .A6 ( ctmn_106 ) , .Y ( ctmn_116 ) ) ;
OR3X1_RVT ctmi_95 ( .A1 ( in_rdy_m[0] ) , .A2 ( rdy_out_demux_d[0] ) , 
    .A3 ( HFSNET_0 ) , .Y ( ctmn_102 ) ) ;
NOR2X1_RVT ctmTdsLR_1_556 ( .A1 ( valid_m[1] ) , .A2 ( valid_m[3] ) , 
    .Y ( phfnn_290 ) ) ;
OA221X1_RVT ctmi_122 ( .A1 ( prev_grant[1] ) , .A2 ( ctmn_106 ) , 
    .A3 ( prev_grant[1] ) , .A4 ( ctmn_117 ) , .A5 ( ctmn_113 ) , 
    .Y ( ctmn_118 ) ) ;
NAND2X0_RVT ctmi_123 ( .A1 ( prev_grant[0] ) , .A2 ( valid_m[3] ) , 
    .Y ( ctmn_117 ) ) ;
OA221X1_RVT ctmi_125 ( .A1 ( phfnn_289 ) , .A2 ( ctmn_102 ) , 
    .A3 ( ctmn_109 ) , .A4 ( ctmn_106 ) , .A5 ( ctmn_121 ) , .Y ( ctmn_122 ) ) ;
NAND2X0_RVT ctmi_126 ( .A1 ( ctmn_118 ) , .A2 ( phfnn_291 ) , 
    .Y ( ctmn_121 ) ) ;
NOR3X1_RVT ctmi_274 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .A3 ( ctmn_102 ) , .Y ( \_0_net_[0] ) ) ;
NOR3X1_RVT ctmi_275 ( .A1 ( round_robin_select[0] ) , .A2 ( ctmn_106 ) , 
    .A3 ( ctmn_124 ) , .Y ( \_4_net_[0] ) ) ;
endmodule


module Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__0 ( 
    round_robin_select , valid , \input_if[3].valid , \input_if[3].source , 
    \input_if[3].target , \input_if[3].data , \input_if[2].valid , 
    \input_if[2].source , \input_if[2].target , \input_if[2].data , 
    \input_if[1].valid , \input_if[1].source , \input_if[1].target , 
    \input_if[1].data , \input_if[0].valid , \input_if[0].source , 
    \input_if[0].target , \input_if[0].data , \output_if.valid , 
    \output_if.source , \output_if.target , \output_if.data ) ;
input  [1:0] round_robin_select ;
input  [3:0] valid ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if.valid ;
output [3:0] \output_if.source ;
output [3:0] \output_if.target ;
output [7:0] \output_if.data ;

AO221X1_RVT ctmi_256 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [2] ) , .A5 ( ctmn_238 ) , 
    .Y ( \output_if.target [2] ) ) ;
AO221X1_RVT ctmi_258 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [1] ) , .A5 ( ctmn_239 ) , 
    .Y ( \output_if.target [1] ) ) ;
AO221X1_RVT ctmi_260 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [0] ) , .A5 ( ctmn_240 ) , 
    .Y ( \output_if.target [0] ) ) ;
AO221X1_RVT ctmi_262 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [3] ) , .A5 ( ctmn_241 ) , 
    .Y ( \output_if.source [3] ) ) ;
AO221X1_RVT ctmi_264 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [2] ) , .A5 ( ctmn_242 ) , 
    .Y ( \output_if.source [2] ) ) ;
AO221X1_RVT ctmi_266 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [1] ) , .A5 ( ctmn_243 ) , 
    .Y ( \output_if.source [1] ) ) ;
AO221X1_RVT ctmi_268 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].source [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].source [0] ) , .A5 ( ctmn_244 ) , 
    .Y ( \output_if.source [0] ) ) ;
AO221X1_RVT ctmi_270 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [7] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [7] ) , .A5 ( ctmn_245 ) , 
    .Y ( \output_if.data [7] ) ) ;
AO221X1_RVT ctmi_272 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [6] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [6] ) , .A5 ( ctmn_246 ) , 
    .Y ( \output_if.data [6] ) ) ;
AO221X1_RVT ctmi_274 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [5] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [5] ) , .A5 ( ctmn_247 ) , 
    .Y ( \output_if.data [5] ) ) ;
AO221X1_RVT ctmi_276 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [4] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [4] ) , .A5 ( ctmn_248 ) , 
    .Y ( \output_if.data [4] ) ) ;
AO221X1_RVT ctmi_278 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [3] ) , .A5 ( ctmn_249 ) , 
    .Y ( \output_if.data [3] ) ) ;
AO221X1_RVT ctmi_280 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [2] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [2] ) , .A5 ( ctmn_250 ) , 
    .Y ( \output_if.data [2] ) ) ;
AO221X1_RVT ctmi_282 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [1] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [1] ) , .A5 ( ctmn_251 ) , 
    .Y ( \output_if.data [1] ) ) ;
AO221X1_RVT ctmi_284 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].data [0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].data [0] ) , .A5 ( ctmn_252 ) , 
    .Y ( \output_if.data [0] ) ) ;
AO221X1_RVT ctmi_286 ( .A1 ( ctmn_233 ) , .A2 ( valid[0] ) , 
    .A3 ( ctmn_234 ) , .A4 ( valid[1] ) , .A5 ( ctmn_253 ) , 
    .Y ( \output_if.valid ) ) ;
AO22X1_RVT ctmi_257 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [2] ) , .Y ( ctmn_238 ) ) ;
AO22X1_RVT ctmi_259 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [1] ) , .Y ( ctmn_239 ) ) ;
AO22X1_RVT ctmi_261 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].target [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].target [0] ) , .Y ( ctmn_240 ) ) ;
AO22X1_RVT ctmi_263 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [3] ) , .Y ( ctmn_241 ) ) ;
AO22X1_RVT ctmi_265 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [2] ) , .Y ( ctmn_242 ) ) ;
AO22X1_RVT ctmi_267 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [1] ) , .Y ( ctmn_243 ) ) ;
AO22X1_RVT ctmi_269 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].source [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].source [0] ) , .Y ( ctmn_244 ) ) ;
AO22X1_RVT ctmi_271 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [7] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [7] ) , .Y ( ctmn_245 ) ) ;
AO22X1_RVT ctmi_273 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [6] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [6] ) , .Y ( ctmn_246 ) ) ;
AO22X1_RVT ctmi_275 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [5] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [5] ) , .Y ( ctmn_247 ) ) ;
AO22X1_RVT ctmi_277 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [4] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [4] ) , .Y ( ctmn_248 ) ) ;
AO22X1_RVT ctmi_279 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [3] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [3] ) , .Y ( ctmn_249 ) ) ;
AO22X1_RVT ctmi_281 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [2] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [2] ) , .Y ( ctmn_250 ) ) ;
AO22X1_RVT ctmi_283 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [1] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [1] ) , .Y ( ctmn_251 ) ) ;
AO22X1_RVT ctmi_285 ( .A1 ( ctmn_235 ) , .A2 ( \input_if[2].data [0] ) , 
    .A3 ( ctmn_236 ) , .A4 ( \input_if[3].data [0] ) , .Y ( ctmn_252 ) ) ;
AO22X1_RVT ctmi_287 ( .A1 ( ctmn_235 ) , .A2 ( valid[2] ) , .A3 ( ctmn_236 ) , 
    .A4 ( valid[3] ) , .Y ( ctmn_253 ) ) ;
AO221X1_RVT ctmi_248 ( .A1 ( ctmn_233 ) , .A2 ( \input_if[0].target [3] ) , 
    .A3 ( ctmn_234 ) , .A4 ( \input_if[1].target [3] ) , .A5 ( ctmn_237 ) , 
    .Y ( \output_if.target [3] ) ) ;
INVX0_HVT phfnr_buf_471 ( .A ( round_robin_select[0] ) , .Y ( phfnn_282 ) ) ;
AO22X1_RVT ctmi_253 ( .A1 ( \input_if[2].target [3] ) , .A2 ( ctmn_235 ) , 
    .A3 ( \input_if[3].target [3] ) , .A4 ( ctmn_236 ) , .Y ( ctmn_237 ) ) ;
AND2X4_RVT ctmi_254 ( .A1 ( phfnn_282 ) , .A2 ( round_robin_select[1] ) , 
    .Y ( ctmn_235 ) ) ;
AND2X4_RVT ctmi_255 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_236 ) ) ;
NOR2X4_RVT ctmi_234 ( .A1 ( round_robin_select[0] ) , 
    .A2 ( round_robin_select[1] ) , .Y ( ctmn_233 ) ) ;
NOR2X4_RVT ctmi_235 ( .A1 ( round_robin_select[1] ) , .A2 ( phfnn_282 ) , 
    .Y ( ctmn_234 ) ) ;
endmodule


module arbiter_SLAVE_NUM0_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ ( 
    clk , reset_n , is_full , in_rdy_m , rdy_out_demux_d , 
    \input_if[3].valid , \input_if[3].source , \input_if[3].target , 
    \input_if[3].data , \input_if[2].valid , \input_if[2].source , 
    \input_if[2].target , \input_if[2].data , \input_if[1].valid , 
    \input_if[1].source , \input_if[1].target , \input_if[1].data , 
    \input_if[0].valid , \input_if[0].source , \input_if[0].target , 
    \input_if[0].data , \output_if_s.valid , \output_if_s.source , 
    \output_if_s.target , \output_if_s.data , HFSNET_0 , HFSNET_1 ) ;
input  clk ;
input  reset_n ;
input  is_full ;
input  [3:0] in_rdy_m ;
output [3:0] rdy_out_demux_d ;
input  \input_if[3].valid ;
input  [3:0] \input_if[3].source ;
input  [3:0] \input_if[3].target ;
input  [7:0] \input_if[3].data ;
input  \input_if[2].valid ;
input  [3:0] \input_if[2].source ;
input  [3:0] \input_if[2].target ;
input  [7:0] \input_if[2].data ;
input  \input_if[1].valid ;
input  [3:0] \input_if[1].source ;
input  [3:0] \input_if[1].target ;
input  [7:0] \input_if[1].data ;
input  \input_if[0].valid ;
input  [3:0] \input_if[0].source ;
input  [3:0] \input_if[0].target ;
input  [7:0] \input_if[0].data ;
output \output_if_s.valid ;
output [3:0] \output_if_s.source ;
output [3:0] \output_if_s.target ;
output [7:0] \output_if_s.data ;
input  HFSNET_0 ;
input  HFSNET_1 ;

wire [1:0] round_robin_select ;
wire [3:0] valid_m ;

Arbiter_data_path_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_internal_if_master__0 u_Arbiter_data_path ( 
    .round_robin_select ( round_robin_select ) , .valid ( valid_m ) , 
    .\input_if[3].source ( \input_if[3].source ) , 
    .\input_if[3].target ( \input_if[3].target ) , 
    .\input_if[3].data ( \input_if[3].data ) , 
    .\input_if[2].source ( \input_if[2].source ) , 
    .\input_if[2].target ( \input_if[2].target ) , 
    .\input_if[2].data ( \input_if[2].data ) , 
    .\input_if[1].source ( \input_if[1].source ) , 
    .\input_if[1].target ( \input_if[1].target ) , 
    .\input_if[1].data ( \input_if[1].data ) , 
    .\input_if[0].source ( \input_if[0].source ) , 
    .\input_if[0].target ( \input_if[0].target ) , 
    .\input_if[0].data ( \input_if[0].data ) , 
    .\output_if.valid ( \output_if_s.valid ) , 
    .\output_if.source ( \output_if_s.source ) , 
    .\output_if.target ( \output_if_s.target ) , 
    .\output_if.data ( \output_if_s.data ) ) ;
Arbiter_control_unit_SLAVE_NUM0_AMOUNT_MASTER4_I_input_if_internal_if_slave_ u_Arbiter_control_unit ( 
    .clk ( clk ) , .reset_n ( reset_n ) , .in_rdy_m ( in_rdy_m ) , 
    .round_robin_select ( round_robin_select ) , .valid_m ( valid_m ) , 
    .rdy_out_demux_d ( rdy_out_demux_d ) ,
    .\input_if[3].target ( { SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 , \input_if[3].target [0] } ) ,
    .\input_if[2].target ( { SYNOPSYS_UNCONNECTED_4 , SYNOPSYS_UNCONNECTED_5 , 
        SYNOPSYS_UNCONNECTED_6 , \input_if[2].target [0] } ) ,
    .\input_if[1].target ( { SYNOPSYS_UNCONNECTED_7 , SYNOPSYS_UNCONNECTED_8 , 
        SYNOPSYS_UNCONNECTED_9 , HFSNET_0 } ) ,
    .\input_if[0].target ( { SYNOPSYS_UNCONNECTED_10 , 
        SYNOPSYS_UNCONNECTED_11 , SYNOPSYS_UNCONNECTED_12 , 
        \input_if[0].target [0] } ) ,
    .HFSNET_4 ( HFSNET_1 ) ) ;
endmodule


module Routing_AMOUNT_MASTER4_AMOUNT_SLAVE4_I_input_if_m_internal_if_slave_I_output_if_s_internal_if_master_ ( 
    clk , rst_n , is_full , in_rdy_m ,\sent_mask_m[3][3] , 
        \sent_mask_m[3][2] , \sent_mask_m[3][1] , \sent_mask_m[3][0] , 
        \sent_mask_m[2][3] , \sent_mask_m[2][2] , \sent_mask_m[2][1] , 
        \sent_mask_m[2][0] , \sent_mask_m[1][3] , \sent_mask_m[1][2] , 
        \sent_mask_m[1][1] , \sent_mask_m[1][0] , \sent_mask_m[0][3] , 
        \sent_mask_m[0][2] , \sent_mask_m[0][1] , \sent_mask_m[0][0] , 
    \input_if_m[3].valid , \input_if_m[3].source , \input_if_m[3].target , 
    \input_if_m[3].data , \input_if_m[2].valid , \input_if_m[2].source , 
    \input_if_m[2].target , \input_if_m[2].data , \input_if_m[1].valid , 
    \input_if_m[1].source , \input_if_m[1].target , \input_if_m[1].data , 
    \input_if_m[0].valid , \input_if_m[0].source , \input_if_m[0].target , 
    \input_if_m[0].data , \output_if_s[3].valid , \output_if_s[3].source , 
    \output_if_s[3].target , \output_if_s[3].data , \output_if_s[2].valid , 
    \output_if_s[2].source , \output_if_s[2].target , \output_if_s[2].data , 
    \output_if_s[1].valid , \output_if_s[1].source , \output_if_s[1].target , 
    \output_if_s[1].data , \output_if_s[0].valid , \output_if_s[0].source , 
    \output_if_s[0].target , \output_if_s[0].data , clkgt_enable_net_0 , 
    clkgt_enable_net_1 , clkgt_enable_net_2 , clkgt_enable_net_3 , HFSNET_0 , 
    HFSNET_1 , HFSNET_2 , HFSNET_3 , HFSNET_4 , HFSNET_5 , HFSNET_6 , 
    HFSNET_7 ) ;
input  clk ;
input  rst_n ;
input  [3:0] is_full ;
input  [3:0] in_rdy_m ;
output \sent_mask_m[3][3] ;
output \sent_mask_m[3][2] ;
output \sent_mask_m[3][1] ;
output \sent_mask_m[3][0] ;
output \sent_mask_m[2][3] ;
output \sent_mask_m[2][2] ;
output \sent_mask_m[2][1] ;
output \sent_mask_m[2][0] ;
output \sent_mask_m[1][3] ;
output \sent_mask_m[1][2] ;
output \sent_mask_m[1][1] ;
output \sent_mask_m[1][0] ;
output \sent_mask_m[0][3] ;
output \sent_mask_m[0][2] ;
output \sent_mask_m[0][1] ;
output \sent_mask_m[0][0] ;
input  \input_if_m[3].valid ;
input  [3:0] \input_if_m[3].source ;
input  [3:0] \input_if_m[3].target ;
input  [7:0] \input_if_m[3].data ;
input  \input_if_m[2].valid ;
input  [3:0] \input_if_m[2].source ;
input  [3:0] \input_if_m[2].target ;
input  [7:0] \input_if_m[2].data ;
input  \input_if_m[1].valid ;
input  [3:0] \input_if_m[1].source ;
input  [3:0] \input_if_m[1].target ;
input  [7:0] \input_if_m[1].data ;
input  \input_if_m[0].valid ;
input  [3:0] \input_if_m[0].source ;
input  [3:0] \input_if_m[0].target ;
input  [7:0] \input_if_m[0].data ;
output \output_if_s[3].valid ;
output [3:0] \output_if_s[3].source ;
output [3:0] \output_if_s[3].target ;
output [7:0] \output_if_s[3].data ;
output \output_if_s[2].valid ;
output [3:0] \output_if_s[2].source ;
output [3:0] \output_if_s[2].target ;
output [7:0] \output_if_s[2].data ;
output \output_if_s[1].valid ;
output [3:0] \output_if_s[1].source ;
output [3:0] \output_if_s[1].target ;
output [7:0] \output_if_s[1].data ;
output \output_if_s[0].valid ;
output [3:0] \output_if_s[0].source ;
output [3:0] \output_if_s[0].target ;
output [7:0] \output_if_s[0].data ;
input  clkgt_enable_net_0 ;
input  clkgt_enable_net_1 ;
input  clkgt_enable_net_2 ;
input  clkgt_enable_net_3 ;
input  HFSNET_0 ;
input  HFSNET_1 ;
input  HFSNET_2 ;
input  HFSNET_3 ;
input  HFSNET_4 ;
input  HFSNET_5 ;
input  HFSNET_6 ;
input  HFSNET_7 ;

arbiter_SLAVE_NUM0_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ \SLAVE_SWITCH[0].u_arbiter ( 
    .clk ( clk ) , .reset_n ( rst_n ) , .in_rdy_m ( in_rdy_m ) ,
    .rdy_out_demux_d ( { \sent_mask_m[3][0] , \sent_mask_m[2][0] , 
        \sent_mask_m[1][0] , \sent_mask_m[0][0] } ) ,
    .\input_if[3].source ( \input_if_m[3].source ) , 
    .\input_if[3].target ( \input_if_m[3].target ) , 
    .\input_if[3].data ( \input_if_m[3].data ) , 
    .\input_if[2].source ( \input_if_m[2].source ) , 
    .\input_if[2].target ( \input_if_m[2].target ) , 
    .\input_if[2].data ( \input_if_m[2].data ) , 
    .\input_if[1].source ( \input_if_m[1].source ) , 
    .\input_if[1].target ( \input_if_m[1].target ) , 
    .\input_if[1].data ( \input_if_m[1].data ) , 
    .\input_if[0].source ( \input_if_m[0].source ) , 
    .\input_if[0].target ( \input_if_m[0].target ) , 
    .\input_if[0].data ( \input_if_m[0].data ) , 
    .\output_if_s.valid ( \output_if_s[0].valid ) , 
    .\output_if_s.source ( \output_if_s[0].source ) , 
    .\output_if_s.target ( \output_if_s[0].target ) , 
    .\output_if_s.data ( \output_if_s[0].data ) , .HFSNET_0 ( HFSNET_0 ) , 
    .HFSNET_1 ( HFSNET_7 ) ) ;
arbiter_SLAVE_NUM1_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ \SLAVE_SWITCH[1].u_arbiter ( 
    .clk ( clk ) , .reset_n ( HFSNET_7 ) , .in_rdy_m ( in_rdy_m ) ,
    .rdy_out_demux_d ( { \sent_mask_m[3][1] , \sent_mask_m[2][1] , 
        \sent_mask_m[1][1] , \sent_mask_m[0][1] } ) ,
    .\input_if[3].source ( \input_if_m[3].source ) , 
    .\input_if[3].target ( \input_if_m[3].target ) , 
    .\input_if[3].data ( \input_if_m[3].data ) , 
    .\input_if[2].source ( \input_if_m[2].source ) , 
    .\input_if[2].target ( \input_if_m[2].target ) , 
    .\input_if[2].data ( \input_if_m[2].data ) , 
    .\input_if[1].source ( \input_if_m[1].source ) , 
    .\input_if[1].target ( \input_if_m[1].target ) , 
    .\input_if[1].data ( \input_if_m[1].data ) , 
    .\input_if[0].source ( \input_if_m[0].source ) , 
    .\input_if[0].target ( \input_if_m[0].target ) , 
    .\input_if[0].data ( \input_if_m[0].data ) , 
    .\output_if_s.valid ( \output_if_s[1].valid ) , 
    .\output_if_s.source ( \output_if_s[1].source ) , 
    .\output_if_s.target ( \output_if_s[1].target ) , 
    .\output_if_s.data ( \output_if_s[1].data ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) , .HFSNET_0 ( HFSNET_1 ) , 
    .HFSNET_1 ( HFSNET_4 ) ) ;
arbiter_SLAVE_NUM2_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ \SLAVE_SWITCH[2].u_arbiter ( 
    .clk ( clk ) , .reset_n ( rst_n ) , .in_rdy_m ( in_rdy_m ) ,
    .rdy_out_demux_d ( { \sent_mask_m[3][2] , \sent_mask_m[2][2] , 
        \sent_mask_m[1][2] , \sent_mask_m[0][2] } ) ,
    .\input_if[3].source ( \input_if_m[3].source ) , 
    .\input_if[3].target ( \input_if_m[3].target ) , 
    .\input_if[3].data ( \input_if_m[3].data ) , 
    .\input_if[2].source ( \input_if_m[2].source ) , 
    .\input_if[2].target ( \input_if_m[2].target ) , 
    .\input_if[2].data ( \input_if_m[2].data ) , 
    .\input_if[1].source ( \input_if_m[1].source ) , 
    .\input_if[1].target ( \input_if_m[1].target ) , 
    .\input_if[1].data ( \input_if_m[1].data ) , 
    .\input_if[0].source ( \input_if_m[0].source ) , 
    .\input_if[0].target ( \input_if_m[0].target ) , 
    .\input_if[0].data ( \input_if_m[0].data ) , 
    .\output_if_s.valid ( \output_if_s[2].valid ) , 
    .\output_if_s.source ( \output_if_s[2].source ) , 
    .\output_if_s.target ( \output_if_s[2].target ) , 
    .\output_if_s.data ( \output_if_s[2].data ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) ) ;
arbiter_SLAVE_NUM3_AMOUNT_MASTER4_I_input_if_internal_if_slave_I_output_if_s_internal_if_master_ \SLAVE_SWITCH[3].u_arbiter ( 
    .clk ( clk ) , .reset_n ( rst_n ) , .in_rdy_m ( in_rdy_m ) ,
    .rdy_out_demux_d ( { \sent_mask_m[3][3] , \sent_mask_m[2][3] , 
        \sent_mask_m[1][3] , \sent_mask_m[0][3] } ) ,
    .\input_if[3].source ( \input_if_m[3].source ) , 
    .\input_if[3].target ( \input_if_m[3].target ) , 
    .\input_if[3].data ( \input_if_m[3].data ) , 
    .\input_if[2].source ( \input_if_m[2].source ) , 
    .\input_if[2].target ( \input_if_m[2].target ) , 
    .\input_if[2].data ( \input_if_m[2].data ) , 
    .\input_if[1].source ( \input_if_m[1].source ) , 
    .\input_if[1].target ( \input_if_m[1].target ) , 
    .\input_if[1].data ( \input_if_m[1].data ) , 
    .\input_if[0].source ( \input_if_m[0].source ) , 
    .\input_if[0].target ( \input_if_m[0].target ) , 
    .\input_if[0].data ( \input_if_m[0].data ) , 
    .\output_if_s.valid ( \output_if_s[3].valid ) , 
    .\output_if_s.source ( \output_if_s[3].source ) , 
    .\output_if_s.target ( \output_if_s[3].target ) , 
    .\output_if_s.data ( \output_if_s[3].data ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) , .HFSNET_0 ( HFSNET_2 ) , 
    .HFSNET_1 ( HFSNET_3 ) , .HFSNET_2 ( HFSNET_5 ) , .HFSNET_3 ( HFSNET_6 ) ) ;
endmodule


module FIFO_DEPTH4 ( rst_n , clk , wr_en , rd_en ,\data_in[valid] , 
        \data_in[source][3] , \data_in[source][2] , \data_in[source][1] , 
        \data_in[source][0] , \data_in[target][3] , \data_in[target][2] , 
        \data_in[target][1] , \data_in[target][0] , \data_in[data][7] , 
        \data_in[data][6] , \data_in[data][5] , \data_in[data][4] , 
        \data_in[data][3] , \data_in[data][2] , \data_in[data][1] , 
        \data_in[data][0] , full , empty ,\data_out[valid] , 
        \data_out[source][3] , \data_out[source][2] , \data_out[source][1] , 
        \data_out[source][0] , \data_out[target][3] , \data_out[target][2] , 
        \data_out[target][1] , \data_out[target][0] , \data_out[data][7] , 
        \data_out[data][6] , \data_out[data][5] , \data_out[data][4] , 
        \data_out[data][3] , \data_out[data][2] , \data_out[data][1] , 
        \data_out[data][0] ) ;
input  rst_n ;
input  clk ;
input  wr_en ;
input  rd_en ;
input  \data_in[valid] ;
input  \data_in[source][3] ;
input  \data_in[source][2] ;
input  \data_in[source][1] ;
input  \data_in[source][0] ;
input  \data_in[target][3] ;
input  \data_in[target][2] ;
input  \data_in[target][1] ;
input  \data_in[target][0] ;
input  \data_in[data][7] ;
input  \data_in[data][6] ;
input  \data_in[data][5] ;
input  \data_in[data][4] ;
input  \data_in[data][3] ;
input  \data_in[data][2] ;
input  \data_in[data][1] ;
input  \data_in[data][0] ;
output full ;
output empty ;
output \data_out[valid] ;
output \data_out[source][3] ;
output \data_out[source][2] ;
output \data_out[source][1] ;
output \data_out[source][0] ;
output \data_out[target][3] ;
output \data_out[target][2] ;
output \data_out[target][1] ;
output \data_out[target][0] ;
output \data_out[data][7] ;
output \data_out[data][6] ;
output \data_out[data][5] ;
output \data_out[data][4] ;
output \data_out[data][3] ;
output \data_out[data][2] ;
output \data_out[data][1] ;
output \data_out[data][0] ;

wire [1:0] wr_ptr ;
wire [1:0] rd_ptr ;

AND4X1_RVT ctmi_440 ( .A1 ( wr_ptr[0] ) , .A2 ( wr_ptr[1] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_280 ) , .Y ( N0 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][3] ) ) ;
SDFFX1_RVT \wr_ptr_reg[0] ( .D ( SEQMAP_NET_37 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[0] ) , .QN ( ctmn_314 ) ) ;
SDFFX1_RVT \fifo_reg[2][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( clk ) , .EN ( N7 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_data_out_reg ) ) ;
SDFFX1_RVT \fifo_reg[1][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg ( .CLK ( clk ) , .EN ( N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_fifo_reg ) ) ;
SDFFX1_RVT \fifo_reg[0][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][0] ) ) ;
AND2X1_RVT ctmi_232 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_319 ) , .Y ( ctmn_326 ) ) ;
AO221X1_RVT ctmi_460 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][2] ) , 
    .A3 ( \fifo[2][source][2] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_332 ) , 
    .Y ( N10 ) ) ;
SDFFX1_RVT \rd_ptr_reg[1] ( .D ( SEQMAP_NET_41 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[1] ) , .QN ( ctmn_311 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_1 ( .CLK ( clk ) , .EN ( N2 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_1 ) ) ;
SDFFX1_RVT \data_out_reg[source][2] ( .D ( N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][2] ) ) ;
SDFFX1_RVT \data_out_reg[source][1] ( .D ( N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][1] ) ) ;
SDFFX1_RVT \data_out_reg[source][0] ( .D ( N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][0] ) ) ;
SDFFX1_RVT \data_out_reg[target][3] ( .D ( N13 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][3] ) ) ;
SDFFX2_RVT \data_out_reg[target][2] ( .D ( N14 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][2] ) ) ;
SDFFX1_RVT \data_out_reg[target][1] ( .D ( N15 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][1] ) ) ;
SDFFX2_RVT \data_out_reg[target][0] ( .D ( N16 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][0] ) ) ;
SDFFX1_RVT \data_out_reg[data][7] ( .D ( N17 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][7] ) ) ;
SDFFX1_RVT \data_out_reg[data][6] ( .D ( N18 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][6] ) ) ;
SDFFX1_RVT \data_out_reg[data][5] ( .D ( N19 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][5] ) ) ;
SDFFX1_RVT \data_out_reg[data][4] ( .D ( N20 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][4] ) ) ;
SDFFX1_RVT \data_out_reg[data][3] ( .D ( N21 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][3] ) ) ;
SDFFX1_RVT \data_out_reg[data][2] ( .D ( N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][2] ) ) ;
NAND2X0_RVT ctmi_441 ( .A1 ( wr_en ) , .A2 ( ctmn_320 ) , .Y ( ctmn_321 ) ) ;
SDFFX1_RVT \data_out_reg[data][0] ( .D ( N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][0] ) ) ;
SDFFX1_RVT \rd_ptr_reg[0] ( .D ( SEQMAP_NET_45 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[0] ) , .QN ( ctmn_316 ) ) ;
SDFFX1_RVT \data_out_reg[source][3] ( .D ( N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][3] ) ) ;
AO221X1_RVT ctmi_454 ( .A1 ( \fifo[3][source][3] ) , .A2 ( ctmn_327 ) , 
    .A3 ( \fifo[2][source][3] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_331 ) , 
    .Y ( N9 ) ) ;
SDFFX1_RVT \data_out_reg[data][1] ( .D ( N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][1] ) ) ;
MUX21X1_RVT ctmi_438 ( .A1 ( ctmn_317 ) , .A2 ( ctmn_315 ) , 
    .S0 ( ctmn_313 ) , .Y ( ctmn_320 ) ) ;
SDFFX1_RVT \wr_ptr_reg[1] ( .D ( SEQMAP_NET_33 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[1] ) , .QN ( ctmn_312 ) ) ;
AO22X1_RVT ctmi_461 ( .A1 ( \fifo[1][source][2] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][2] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_332 ) ) ;
AO221X1_RVT ctmi_462 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][1] ) , .A5 ( ctmn_333 ) , 
    .Y ( N11 ) ) ;
AO22X1_RVT ctmi_463 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][1] ) , .Y ( ctmn_333 ) ) ;
AO221X1_RVT ctmi_464 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][0] ) , .A5 ( ctmn_334 ) , 
    .Y ( N12 ) ) ;
AO22X1_RVT ctmi_465 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][0] ) , .Y ( ctmn_334 ) ) ;
AO221X1_RVT ctmi_466 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][3] ) , .A5 ( ctmn_335 ) , 
    .Y ( N13 ) ) ;
AO22X1_RVT ctmi_467 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][3] ) , .Y ( ctmn_335 ) ) ;
AO221X1_RVT ctmi_468 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][2] ) , .A5 ( ctmn_336 ) , 
    .Y ( N14 ) ) ;
AO22X1_RVT ctmi_469 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][2] ) , .Y ( ctmn_336 ) ) ;
AO221X1_RVT ctmi_470 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][1] ) , .A5 ( ctmn_337 ) , 
    .Y ( N15 ) ) ;
AO22X1_RVT ctmi_471 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][1] ) , .Y ( ctmn_337 ) ) ;
AO221X1_RVT ctmi_472 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][0] ) , .A5 ( ctmn_338 ) , 
    .Y ( N16 ) ) ;
AO22X1_RVT ctmi_473 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][0] ) , .Y ( ctmn_338 ) ) ;
AO221X1_RVT ctmi_474 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][7] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][7] ) , .A5 ( ctmn_339 ) , 
    .Y ( N17 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_2 ( .CLK ( clk ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_2 ) ) ;
AO22X1_RVT ctmi_475 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][7] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][7] ) , .Y ( ctmn_339 ) ) ;
AO221X1_RVT ctmi_476 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][6] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][6] ) , .A5 ( ctmn_340 ) , 
    .Y ( N18 ) ) ;
AO22X1_RVT ctmi_477 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][6] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][6] ) , .Y ( ctmn_340 ) ) ;
AO221X1_RVT ctmi_478 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][5] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][5] ) , .A5 ( ctmn_341 ) , 
    .Y ( N19 ) ) ;
AO22X1_RVT ctmi_479 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][5] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][5] ) , .Y ( ctmn_341 ) ) ;
AO221X1_RVT ctmi_480 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][4] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][4] ) , .A5 ( ctmn_342 ) , 
    .Y ( N20 ) ) ;
AO22X1_RVT ctmi_481 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][4] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][4] ) , .Y ( ctmn_342 ) ) ;
AO221X1_RVT ctmi_482 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][3] ) , .A5 ( ctmn_343 ) , 
    .Y ( N21 ) ) ;
AO22X1_RVT ctmi_483 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][3] ) , .Y ( ctmn_343 ) ) ;
AO221X1_RVT ctmi_484 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][2] ) , .A5 ( ctmn_344 ) , 
    .Y ( N22 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_3 ( .CLK ( clk ) , .EN ( N0 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_3 ) ) ;
AO22X1_RVT ctmi_485 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][2] ) , .Y ( ctmn_344 ) ) ;
AO221X1_RVT ctmi_486 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][1] ) , .A5 ( ctmn_345 ) , 
    .Y ( N23 ) ) ;
AO22X1_RVT ctmi_487 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][1] ) , .Y ( ctmn_345 ) ) ;
AO221X1_RVT ctmi_488 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][0] ) , .A5 ( ctmn_346 ) , 
    .Y ( N24 ) ) ;
AO22X1_RVT ctmi_489 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][0] ) , .Y ( ctmn_346 ) ) ;
OA221X1_RVT ctmi_450 ( .A1 ( ctmn_311 ) , .A2 ( phfnn_281 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( ctmn_326 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_41 ) ) ;
INVX0_HVT phfnr_buf_470 ( .A ( ctmn_326 ) , .Y ( phfnn_281 ) ) ;
AND2X1_RVT ctmi_443 ( .A1 ( wr_ptr[1] ) , .A2 ( ctmn_323 ) , .Y ( N1 ) ) ;
INVX0_HVT ctmi_5 ( .A ( ctmn_318 ) , .Y ( empty ) ) ;
AND4X1_RVT ctmi_445 ( .A1 ( ctmn_312 ) , .A2 ( wr_ptr[0] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_280 ) , .Y ( N2 ) ) ;
AND2X1_RVT ctmi_446 ( .A1 ( ctmn_312 ) , .A2 ( ctmn_323 ) , .Y ( N3 ) ) ;
INVX1_HVT phfnr_buf_469 ( .A ( ctmn_321 ) , .Y ( phfnn_280 ) ) ;
OA221X1_RVT ctmi_392 ( .A1 ( N2 ) , .A2 ( ctmn_324 ) , .A3 ( N2 ) , 
    .A4 ( wr_ptr[1] ) , .A5 ( rst_n ) , .Y ( SEQMAP_NET_33 ) ) ;
AND2X2_RVT ctmi_455 ( .A1 ( rd_ptr[0] ) , .A2 ( rd_ptr[1] ) , 
    .Y ( ctmn_327 ) ) ;
AND2X2_RVT ctmi_456 ( .A1 ( ctmn_316 ) , .A2 ( rd_ptr[1] ) , .Y ( ctmn_328 ) ) ;
AO22X1_RVT ctmi_457 ( .A1 ( \fifo[1][source][3] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][3] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_331 ) ) ;
AND2X2_RVT ctmi_458 ( .A1 ( ctmn_311 ) , .A2 ( rd_ptr[0] ) , .Y ( ctmn_329 ) ) ;
AND2X4_RVT ctmi_459 ( .A1 ( ctmn_316 ) , .A2 ( ctmn_311 ) , .Y ( ctmn_330 ) ) ;
AND2X1_RVT ctmi_436 ( .A1 ( rst_n ) , .A2 ( ctmn_319 ) , .Y ( N7 ) ) ;
NAND2X0_RVT ctmi_448 ( .A1 ( wr_ptr[0] ) , .A2 ( phfnn_280 ) , 
    .Y ( ctmn_324 ) ) ;
OA221X1_RVT ctmi_390 ( .A1 ( ctmn_323 ) , .A2 ( wr_ptr[0] ) , 
    .A3 ( ctmn_323 ) , .A4 ( ctmn_321 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_37 ) ) ;
AND3X1_RVT ctmi_444 ( .A1 ( ctmn_314 ) , .A2 ( rst_n ) , .A3 ( phfnn_280 ) , 
    .Y ( ctmn_323 ) ) ;
AND2X1_RVT ctmi_437 ( .A1 ( ctmn_318 ) , .A2 ( rd_en ) , .Y ( ctmn_319 ) ) ;
OA221X1_RVT ctmi_518 ( .A1 ( rst_n ) , .A2 ( rst_n ) , .A3 ( ctmn_319 ) , 
    .A4 ( rd_ptr[0] ) , .A5 ( phfnn_281 ) , .Y ( SEQMAP_NET_45 ) ) ;
NAND3X0_RVT ctmi_427 ( .A1 ( ctmn_313 ) , .A2 ( ctmn_315 ) , 
    .A3 ( ctmn_317 ) , .Y ( ctmn_318 ) ) ;
AO22X1_RVT ctmi_428 ( .A1 ( ctmn_311 ) , .A2 ( ctmn_312 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( wr_ptr[1] ) , .Y ( ctmn_313 ) ) ;
NAND2X0_RVT ctmi_431 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_314 ) , 
    .Y ( ctmn_315 ) ) ;
NAND2X0_RVT ctmi_433 ( .A1 ( wr_ptr[0] ) , .A2 ( ctmn_316 ) , 
    .Y ( ctmn_317 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][3] ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_3 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module Master_Control_unit_AMOUNT_SLAVE4 ( clk , reset_n , in_vld , 
    sent_vector , target_vector , in_rdy , \current_state[0] ) ;
input  clk ;
input  reset_n ;
input  in_vld ;
input  [3:0] sent_vector ;
input  [3:0] target_vector ;
output in_rdy ;
output \current_state[0] ;

wire [1:1] current_state ;
wire [1:0] next_state ;

AND2X1_RVT ctmi_55 ( .A1 ( in_vld ) , .A2 ( in_rdy ) , .Y ( next_state[0] ) ) ;
AOI21X1_RVT ctmi_56 ( .A1 ( \current_state[0] ) , .A2 ( current_state[1] ) , 
    .A3 ( in_rdy ) , .Y ( next_state[1] ) ) ;
AOI21X2_RVT ctmi_49 ( .A1 ( ctmn_49 ) , .A2 ( current_state[1] ) , 
    .A3 ( \current_state[0] ) , .Y ( in_rdy ) ) ;
NAND4X0_RVT ctmi_50 ( .A1 ( ctmn_45 ) , .A2 ( ctmn_46 ) , .A3 ( ctmn_47 ) , 
    .A4 ( ctmn_48 ) , .Y ( ctmn_49 ) ) ;
XNOR2X1_RVT ctmi_51 ( .A1 ( sent_vector[0] ) , .A2 ( target_vector[0] ) , 
    .Y ( ctmn_45 ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_3 u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) , 
    .din ( next_state ) ,
    .dout ( { current_state[1] , \current_state[0] } ) ) ;
XNOR2X1_RVT ctmi_52 ( .A1 ( sent_vector[1] ) , .A2 ( target_vector[1] ) , 
    .Y ( ctmn_46 ) ) ;
XNOR2X1_RVT ctmi_53 ( .A1 ( sent_vector[2] ) , .A2 ( target_vector[2] ) , 
    .Y ( ctmn_47 ) ) ;
XNOR2X1_RVT ctmi_54 ( .A1 ( sent_vector[3] ) , .A2 ( target_vector[3] ) , 
    .Y ( ctmn_48 ) ) ;
endmodule


module switch_port_AMOUNT_SLAVE4_MASTER_NUM3 ( clk , rst_n , valid_in , 
    source_in , target_in , data_in , sent_mask_m , valid_out , source_out , 
    target_out , data_out , in_rdy_m , clkgt_enable_net_0 , HFSNET_1 , 
    HFSNET_3 ) ;
input  clk ;
input  rst_n ;
input  valid_in ;
input  [3:0] source_in ;
input  [3:0] target_in ;
input  [7:0] data_in ;
input  [3:0] sent_mask_m ;
output valid_out ;
output [3:0] source_out ;
output [3:0] target_out ;
output [7:0] data_out ;
output in_rdy_m ;
output clkgt_enable_net_0 ;
output HFSNET_1 ;
output HFSNET_3 ;

Master_Control_unit_AMOUNT_SLAVE4 u_Master_Control_unit ( .clk ( clk ) , 
    .reset_n ( rst_n ) , .in_vld ( _0_net_ ) , .sent_vector ( sent_mask_m ) , 
    .target_vector ( target_out ) , .in_rdy ( in_rdy_m ) , 
    .\current_state[0] ( clkgt_enable_net_0 ) ) ;
FIFO_DEPTH4 u_FIFO ( .rst_n ( rst_n ) , .clk ( clk ) , .wr_en ( _1_net_ ) , 
    .rd_en ( in_rdy_m ) , .\data_in[source][3] ( source_in[3] ) , 
    .\data_in[source][2] ( source_in[2] ) , 
    .\data_in[source][1] ( source_in[1] ) , 
    .\data_in[source][0] ( source_in[0] ) , 
    .\data_in[target][3] ( target_in[3] ) , 
    .\data_in[target][2] ( target_in[2] ) , 
    .\data_in[target][1] ( target_in[1] ) , 
    .\data_in[target][0] ( target_in[0] ) , 
    .\data_in[data][7] ( data_in[7] ) , .\data_in[data][6] ( data_in[6] ) , 
    .\data_in[data][5] ( data_in[5] ) , .\data_in[data][4] ( data_in[4] ) , 
    .\data_in[data][3] ( data_in[3] ) , .\data_in[data][2] ( data_in[2] ) , 
    .\data_in[data][1] ( data_in[1] ) , .\data_in[data][0] ( data_in[0] ) , 
    .empty ( empty ) , .\data_out[source][3] ( source_out[3] ) , 
    .\data_out[source][2] ( source_out[2] ) , 
    .\data_out[source][1] ( source_out[1] ) , 
    .\data_out[source][0] ( source_out[0] ) , 
    .\data_out[target][3] ( HFSNET_3 ) , 
    .\data_out[target][2] ( target_out[2] ) , 
    .\data_out[target][1] ( HFSNET_1 ) , 
    .\data_out[target][0] ( target_out[0] ) , 
    .\data_out[data][7] ( data_out[7] ) , 
    .\data_out[data][6] ( data_out[6] ) , 
    .\data_out[data][5] ( data_out[5] ) , 
    .\data_out[data][4] ( data_out[4] ) , 
    .\data_out[data][3] ( data_out[3] ) , 
    .\data_out[data][2] ( data_out[2] ) , 
    .\data_out[data][1] ( data_out[1] ) , 
    .\data_out[data][0] ( data_out[0] ) ) ;
INVX0_HVT ctmi_1 ( .A ( empty ) , .Y ( _0_net_ ) ) ;
AOI221X1_RVT ctmi_519 ( .A1 ( ctmn_82 ) , .A2 ( ctmn_82 ) , 
    .A3 ( source_in[0] ) , .A4 ( ctmn_83 ) , .A5 ( ctmn_86 ) , 
    .Y ( _1_net_ ) ) ;
AO221X1_RVT ctmi_64 ( .A1 ( source_in[3] ) , .A2 ( ctmn_79 ) , 
    .A3 ( ctmn_80 ) , .A4 ( target_in[3] ) , .A5 ( ctmn_81 ) , 
    .Y ( ctmn_82 ) ) ;
OR3X1_RVT ctmi_65 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .Y ( ctmn_79 ) ) ;
NAND3X0_RVT ctmi_66 ( .A1 ( target_in[2] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[1] ) , .Y ( ctmn_80 ) ) ;
NOR4X1_RVT ctmi_67 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .A4 ( source_in[3] ) , .Y ( ctmn_81 ) ) ;
OR2X1_RVT ctmi_68 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_83 ) ) ;
NAND3X0_RVT ctmi_69 ( .A1 ( valid_in ) , .A2 ( ctmn_84 ) , .A3 ( ctmn_85 ) , 
    .Y ( ctmn_86 ) ) ;
NAND2X0_RVT ctmi_70 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_84 ) ) ;
OR3X1_RVT ctmi_71 ( .A1 ( target_in[2] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[1] ) , .Y ( ctmn_85 ) ) ;
NBUFFX2_RVT HFSBUF_444_532 ( .A ( HFSNET_1 ) , .Y ( target_out[1] ) ) ;
NBUFFX2_RVT HFSBUF_458_535 ( .A ( HFSNET_3 ) , .Y ( target_out[3] ) ) ;
endmodule


module FIFO_DEPTH4_2 ( rst_n , clk , wr_en , rd_en ,\data_in[valid] , 
        \data_in[source][3] , \data_in[source][2] , \data_in[source][1] , 
        \data_in[source][0] , \data_in[target][3] , \data_in[target][2] , 
        \data_in[target][1] , \data_in[target][0] , \data_in[data][7] , 
        \data_in[data][6] , \data_in[data][5] , \data_in[data][4] , 
        \data_in[data][3] , \data_in[data][2] , \data_in[data][1] , 
        \data_in[data][0] , full , empty ,\data_out[valid] , 
        \data_out[source][3] , \data_out[source][2] , \data_out[source][1] , 
        \data_out[source][0] , \data_out[target][3] , \data_out[target][2] , 
        \data_out[target][1] , \data_out[target][0] , \data_out[data][7] , 
        \data_out[data][6] , \data_out[data][5] , \data_out[data][4] , 
        \data_out[data][3] , \data_out[data][2] , \data_out[data][1] , 
        \data_out[data][0] ) ;
input  rst_n ;
input  clk ;
input  wr_en ;
input  rd_en ;
input  \data_in[valid] ;
input  \data_in[source][3] ;
input  \data_in[source][2] ;
input  \data_in[source][1] ;
input  \data_in[source][0] ;
input  \data_in[target][3] ;
input  \data_in[target][2] ;
input  \data_in[target][1] ;
input  \data_in[target][0] ;
input  \data_in[data][7] ;
input  \data_in[data][6] ;
input  \data_in[data][5] ;
input  \data_in[data][4] ;
input  \data_in[data][3] ;
input  \data_in[data][2] ;
input  \data_in[data][1] ;
input  \data_in[data][0] ;
output full ;
output empty ;
output \data_out[valid] ;
output \data_out[source][3] ;
output \data_out[source][2] ;
output \data_out[source][1] ;
output \data_out[source][0] ;
output \data_out[target][3] ;
output \data_out[target][2] ;
output \data_out[target][1] ;
output \data_out[target][0] ;
output \data_out[data][7] ;
output \data_out[data][6] ;
output \data_out[data][5] ;
output \data_out[data][4] ;
output \data_out[data][3] ;
output \data_out[data][2] ;
output \data_out[data][1] ;
output \data_out[data][0] ;

wire [1:0] wr_ptr ;
wire [1:0] rd_ptr ;

AND4X1_RVT ctmi_440 ( .A1 ( wr_ptr[0] ) , .A2 ( wr_ptr[1] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_278 ) , .Y ( N0 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][3] ) ) ;
SDFFX1_RVT \wr_ptr_reg[0] ( .D ( SEQMAP_NET_37 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[0] ) , .QN ( ctmn_314 ) ) ;
SDFFX1_RVT \fifo_reg[2][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( clk ) , .EN ( N7 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_data_out_reg ) ) ;
SDFFX1_RVT \fifo_reg[1][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg ( .CLK ( clk ) , .EN ( N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_fifo_reg ) ) ;
SDFFX1_RVT \fifo_reg[0][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][0] ) ) ;
AND2X1_RVT ctmi_226 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_319 ) , .Y ( ctmn_326 ) ) ;
AO221X1_RVT ctmi_460 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][2] ) , 
    .A3 ( \fifo[2][source][2] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_332 ) , 
    .Y ( N10 ) ) ;
SDFFX1_RVT \rd_ptr_reg[1] ( .D ( SEQMAP_NET_41 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[1] ) , .QN ( ctmn_311 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_1 ( .CLK ( clk ) , .EN ( N2 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_1 ) ) ;
SDFFX1_RVT \data_out_reg[source][2] ( .D ( N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][2] ) ) ;
SDFFX1_RVT \data_out_reg[source][1] ( .D ( N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][1] ) ) ;
SDFFX1_RVT \data_out_reg[source][0] ( .D ( N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][0] ) ) ;
SDFFX1_RVT \data_out_reg[target][3] ( .D ( N13 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][3] ) ) ;
SDFFX2_RVT \data_out_reg[target][2] ( .D ( N14 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][2] ) ) ;
SDFFX2_RVT \data_out_reg[target][1] ( .D ( N15 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][1] ) ) ;
SDFFX2_RVT \data_out_reg[target][0] ( .D ( N16 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][0] ) ) ;
SDFFX1_RVT \data_out_reg[data][7] ( .D ( N17 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][7] ) ) ;
SDFFX1_RVT \data_out_reg[data][6] ( .D ( N18 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][6] ) ) ;
SDFFX1_RVT \data_out_reg[data][5] ( .D ( N19 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][5] ) ) ;
SDFFX1_RVT \data_out_reg[data][4] ( .D ( N20 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][4] ) ) ;
SDFFX1_RVT \data_out_reg[data][3] ( .D ( N21 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][3] ) ) ;
SDFFX1_RVT \data_out_reg[data][2] ( .D ( N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][2] ) ) ;
NAND2X0_RVT ctmi_441 ( .A1 ( wr_en ) , .A2 ( ctmn_320 ) , .Y ( ctmn_321 ) ) ;
SDFFX1_RVT \data_out_reg[data][0] ( .D ( N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][0] ) ) ;
SDFFX1_RVT \rd_ptr_reg[0] ( .D ( SEQMAP_NET_45 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[0] ) , .QN ( ctmn_316 ) ) ;
SDFFX1_RVT \data_out_reg[source][3] ( .D ( N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][3] ) ) ;
AO221X1_RVT ctmi_454 ( .A1 ( \fifo[3][source][3] ) , .A2 ( ctmn_327 ) , 
    .A3 ( \fifo[2][source][3] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_331 ) , 
    .Y ( N9 ) ) ;
SDFFX1_RVT \data_out_reg[data][1] ( .D ( N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][1] ) ) ;
MUX21X1_RVT ctmi_438 ( .A1 ( ctmn_317 ) , .A2 ( ctmn_315 ) , 
    .S0 ( ctmn_313 ) , .Y ( ctmn_320 ) ) ;
SDFFX1_RVT \wr_ptr_reg[1] ( .D ( SEQMAP_NET_33 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[1] ) , .QN ( ctmn_312 ) ) ;
AO22X1_RVT ctmi_461 ( .A1 ( \fifo[1][source][2] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][2] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_332 ) ) ;
AO221X1_RVT ctmi_462 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][1] ) , .A5 ( ctmn_333 ) , 
    .Y ( N11 ) ) ;
AO22X1_RVT ctmi_463 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][1] ) , .Y ( ctmn_333 ) ) ;
AO221X1_RVT ctmi_464 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][0] ) , .A5 ( ctmn_334 ) , 
    .Y ( N12 ) ) ;
AO22X1_RVT ctmi_465 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][0] ) , .Y ( ctmn_334 ) ) ;
AO221X1_RVT ctmi_466 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][3] ) , .A5 ( ctmn_335 ) , 
    .Y ( N13 ) ) ;
AO22X1_RVT ctmi_467 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][3] ) , .Y ( ctmn_335 ) ) ;
AO221X1_RVT ctmi_468 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][2] ) , .A5 ( ctmn_336 ) , 
    .Y ( N14 ) ) ;
AO22X1_RVT ctmi_469 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][2] ) , .Y ( ctmn_336 ) ) ;
AO221X1_RVT ctmi_470 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][1] ) , .A5 ( ctmn_337 ) , 
    .Y ( N15 ) ) ;
AO22X1_RVT ctmi_471 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][1] ) , .Y ( ctmn_337 ) ) ;
AO221X1_RVT ctmi_472 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][0] ) , .A5 ( ctmn_338 ) , 
    .Y ( N16 ) ) ;
AO22X1_RVT ctmi_473 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][0] ) , .Y ( ctmn_338 ) ) ;
AO221X1_RVT ctmi_474 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][7] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][7] ) , .A5 ( ctmn_339 ) , 
    .Y ( N17 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_2 ( .CLK ( clk ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_2 ) ) ;
AO22X1_RVT ctmi_475 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][7] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][7] ) , .Y ( ctmn_339 ) ) ;
AO221X1_RVT ctmi_476 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][6] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][6] ) , .A5 ( ctmn_340 ) , 
    .Y ( N18 ) ) ;
AO22X1_RVT ctmi_477 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][6] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][6] ) , .Y ( ctmn_340 ) ) ;
AO221X1_RVT ctmi_478 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][5] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][5] ) , .A5 ( ctmn_341 ) , 
    .Y ( N19 ) ) ;
AO22X1_RVT ctmi_479 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][5] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][5] ) , .Y ( ctmn_341 ) ) ;
AO221X1_RVT ctmi_480 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][4] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][4] ) , .A5 ( ctmn_342 ) , 
    .Y ( N20 ) ) ;
AO22X1_RVT ctmi_481 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][4] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][4] ) , .Y ( ctmn_342 ) ) ;
AO221X1_RVT ctmi_482 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][3] ) , .A5 ( ctmn_343 ) , 
    .Y ( N21 ) ) ;
AO22X1_RVT ctmi_483 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][3] ) , .Y ( ctmn_343 ) ) ;
AO221X1_RVT ctmi_484 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][2] ) , .A5 ( ctmn_344 ) , 
    .Y ( N22 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_3 ( .CLK ( clk ) , .EN ( N0 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_3 ) ) ;
AO22X1_RVT ctmi_485 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][2] ) , .Y ( ctmn_344 ) ) ;
AO221X1_RVT ctmi_486 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][1] ) , .A5 ( ctmn_345 ) , 
    .Y ( N23 ) ) ;
AO22X1_RVT ctmi_487 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][1] ) , .Y ( ctmn_345 ) ) ;
AO221X1_RVT ctmi_488 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][0] ) , .A5 ( ctmn_346 ) , 
    .Y ( N24 ) ) ;
AO22X1_RVT ctmi_489 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][0] ) , .Y ( ctmn_346 ) ) ;
OA221X1_RVT ctmi_450 ( .A1 ( ctmn_311 ) , .A2 ( phfnn_279 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( ctmn_326 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_41 ) ) ;
INVX0_HVT phfnr_buf_468 ( .A ( ctmn_326 ) , .Y ( phfnn_279 ) ) ;
AND2X1_RVT ctmi_443 ( .A1 ( wr_ptr[1] ) , .A2 ( ctmn_323 ) , .Y ( N1 ) ) ;
INVX0_HVT ctmi_5 ( .A ( ctmn_318 ) , .Y ( empty ) ) ;
AND4X1_RVT ctmi_445 ( .A1 ( ctmn_312 ) , .A2 ( wr_ptr[0] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_278 ) , .Y ( N2 ) ) ;
AND2X1_RVT ctmi_446 ( .A1 ( ctmn_312 ) , .A2 ( ctmn_323 ) , .Y ( N3 ) ) ;
INVX1_HVT phfnr_buf_467 ( .A ( ctmn_321 ) , .Y ( phfnn_278 ) ) ;
OA221X1_RVT ctmi_388 ( .A1 ( N2 ) , .A2 ( ctmn_324 ) , .A3 ( N2 ) , 
    .A4 ( wr_ptr[1] ) , .A5 ( rst_n ) , .Y ( SEQMAP_NET_33 ) ) ;
AND2X4_RVT ctmi_455 ( .A1 ( rd_ptr[0] ) , .A2 ( rd_ptr[1] ) , 
    .Y ( ctmn_327 ) ) ;
AND2X4_RVT ctmi_456 ( .A1 ( ctmn_316 ) , .A2 ( rd_ptr[1] ) , .Y ( ctmn_328 ) ) ;
AO22X1_RVT ctmi_457 ( .A1 ( \fifo[1][source][3] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][3] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_331 ) ) ;
AND2X4_RVT ctmi_458 ( .A1 ( ctmn_311 ) , .A2 ( rd_ptr[0] ) , .Y ( ctmn_329 ) ) ;
AND2X4_RVT ctmi_459 ( .A1 ( ctmn_316 ) , .A2 ( ctmn_311 ) , .Y ( ctmn_330 ) ) ;
AND2X1_RVT ctmi_436 ( .A1 ( rst_n ) , .A2 ( ctmn_319 ) , .Y ( N7 ) ) ;
NAND2X0_RVT ctmi_448 ( .A1 ( wr_ptr[0] ) , .A2 ( phfnn_278 ) , 
    .Y ( ctmn_324 ) ) ;
OA221X1_RVT ctmi_386 ( .A1 ( ctmn_323 ) , .A2 ( wr_ptr[0] ) , 
    .A3 ( ctmn_323 ) , .A4 ( ctmn_321 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_37 ) ) ;
AND3X1_RVT ctmi_444 ( .A1 ( ctmn_314 ) , .A2 ( rst_n ) , .A3 ( phfnn_278 ) , 
    .Y ( ctmn_323 ) ) ;
AND2X1_RVT ctmi_437 ( .A1 ( ctmn_318 ) , .A2 ( rd_en ) , .Y ( ctmn_319 ) ) ;
OA221X1_RVT ctmi_516 ( .A1 ( rst_n ) , .A2 ( rst_n ) , .A3 ( ctmn_319 ) , 
    .A4 ( rd_ptr[0] ) , .A5 ( phfnn_279 ) , .Y ( SEQMAP_NET_45 ) ) ;
NAND3X0_RVT ctmi_427 ( .A1 ( ctmn_313 ) , .A2 ( ctmn_315 ) , 
    .A3 ( ctmn_317 ) , .Y ( ctmn_318 ) ) ;
AO22X1_RVT ctmi_428 ( .A1 ( ctmn_311 ) , .A2 ( ctmn_312 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( wr_ptr[1] ) , .Y ( ctmn_313 ) ) ;
NAND2X0_RVT ctmi_431 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_314 ) , 
    .Y ( ctmn_315 ) ) ;
NAND2X0_RVT ctmi_433 ( .A1 ( wr_ptr[0] ) , .A2 ( ctmn_316 ) , 
    .Y ( ctmn_317 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][3] ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_2 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module Master_Control_unit_AMOUNT_SLAVE4_2 ( clk , reset_n , in_vld , 
    sent_vector , target_vector , in_rdy , \current_state[0] ) ;
input  clk ;
input  reset_n ;
input  in_vld ;
input  [3:0] sent_vector ;
input  [3:0] target_vector ;
output in_rdy ;
output \current_state[0] ;

wire [1:1] current_state ;
wire [1:0] next_state ;

AND2X1_RVT ctmi_55 ( .A1 ( in_vld ) , .A2 ( in_rdy ) , .Y ( next_state[0] ) ) ;
AOI21X1_RVT ctmi_56 ( .A1 ( \current_state[0] ) , .A2 ( current_state[1] ) , 
    .A3 ( in_rdy ) , .Y ( next_state[1] ) ) ;
AOI21X2_RVT ctmi_49 ( .A1 ( ctmn_49 ) , .A2 ( current_state[1] ) , 
    .A3 ( \current_state[0] ) , .Y ( in_rdy ) ) ;
NAND4X0_RVT ctmi_50 ( .A1 ( ctmn_45 ) , .A2 ( ctmn_46 ) , .A3 ( ctmn_47 ) , 
    .A4 ( ctmn_48 ) , .Y ( ctmn_49 ) ) ;
XNOR2X1_RVT ctmi_51 ( .A1 ( sent_vector[0] ) , .A2 ( target_vector[0] ) , 
    .Y ( ctmn_45 ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_2 u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) , 
    .din ( next_state ) ,
    .dout ( { current_state[1] , \current_state[0] } ) ) ;
XNOR2X1_RVT ctmi_52 ( .A1 ( sent_vector[1] ) , .A2 ( target_vector[1] ) , 
    .Y ( ctmn_46 ) ) ;
XNOR2X1_RVT ctmi_53 ( .A1 ( sent_vector[2] ) , .A2 ( target_vector[2] ) , 
    .Y ( ctmn_47 ) ) ;
XNOR2X1_RVT ctmi_54 ( .A1 ( sent_vector[3] ) , .A2 ( target_vector[3] ) , 
    .Y ( ctmn_48 ) ) ;
endmodule


module switch_port_AMOUNT_SLAVE4_MASTER_NUM2 ( clk , rst_n , valid_in , 
    source_in , target_in , data_in , sent_mask_m , valid_out , source_out , 
    target_out , data_out , in_rdy_m , clkgt_enable_net_0 , HFSNET_1 ) ;
input  clk ;
input  rst_n ;
input  valid_in ;
input  [3:0] source_in ;
input  [3:0] target_in ;
input  [7:0] data_in ;
input  [3:0] sent_mask_m ;
output valid_out ;
output [3:0] source_out ;
output [3:0] target_out ;
output [7:0] data_out ;
output in_rdy_m ;
output clkgt_enable_net_0 ;
output HFSNET_1 ;

Master_Control_unit_AMOUNT_SLAVE4_2 u_Master_Control_unit ( .clk ( clk ) , 
    .reset_n ( rst_n ) , .in_vld ( _0_net_ ) , .sent_vector ( sent_mask_m ) , 
    .target_vector ( target_out ) , .in_rdy ( in_rdy_m ) , 
    .\current_state[0] ( clkgt_enable_net_0 ) ) ;
FIFO_DEPTH4_2 u_FIFO ( .rst_n ( rst_n ) , .clk ( clk ) , .wr_en ( _1_net_ ) , 
    .rd_en ( in_rdy_m ) , .\data_in[source][3] ( source_in[3] ) , 
    .\data_in[source][2] ( source_in[2] ) , 
    .\data_in[source][1] ( source_in[1] ) , 
    .\data_in[source][0] ( source_in[0] ) , 
    .\data_in[target][3] ( target_in[3] ) , 
    .\data_in[target][2] ( target_in[2] ) , 
    .\data_in[target][1] ( target_in[1] ) , 
    .\data_in[target][0] ( target_in[0] ) , 
    .\data_in[data][7] ( data_in[7] ) , .\data_in[data][6] ( data_in[6] ) , 
    .\data_in[data][5] ( data_in[5] ) , .\data_in[data][4] ( data_in[4] ) , 
    .\data_in[data][3] ( data_in[3] ) , .\data_in[data][2] ( data_in[2] ) , 
    .\data_in[data][1] ( data_in[1] ) , .\data_in[data][0] ( data_in[0] ) , 
    .empty ( empty ) , .\data_out[source][3] ( source_out[3] ) , 
    .\data_out[source][2] ( source_out[2] ) , 
    .\data_out[source][1] ( source_out[1] ) , 
    .\data_out[source][0] ( source_out[0] ) , 
    .\data_out[target][3] ( HFSNET_1 ) , 
    .\data_out[target][2] ( target_out[2] ) , 
    .\data_out[target][1] ( target_out[1] ) , 
    .\data_out[target][0] ( target_out[0] ) , 
    .\data_out[data][7] ( data_out[7] ) , 
    .\data_out[data][6] ( data_out[6] ) , 
    .\data_out[data][5] ( data_out[5] ) , 
    .\data_out[data][4] ( data_out[4] ) , 
    .\data_out[data][3] ( data_out[3] ) , 
    .\data_out[data][2] ( data_out[2] ) , 
    .\data_out[data][1] ( data_out[1] ) , 
    .\data_out[data][0] ( data_out[0] ) ) ;
INVX0_HVT ctmi_1 ( .A ( empty ) , .Y ( _0_net_ ) ) ;
AOI221X1_RVT ctmi_517 ( .A1 ( ctmn_82 ) , .A2 ( ctmn_82 ) , 
    .A3 ( source_in[0] ) , .A4 ( ctmn_83 ) , .A5 ( ctmn_86 ) , 
    .Y ( _1_net_ ) ) ;
AO221X1_RVT ctmi_64 ( .A1 ( source_in[3] ) , .A2 ( ctmn_79 ) , 
    .A3 ( ctmn_80 ) , .A4 ( target_in[2] ) , .A5 ( ctmn_81 ) , 
    .Y ( ctmn_82 ) ) ;
OR3X1_RVT ctmi_65 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .Y ( ctmn_79 ) ) ;
NAND3X0_RVT ctmi_66 ( .A1 ( target_in[3] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[1] ) , .Y ( ctmn_80 ) ) ;
NOR4X1_RVT ctmi_67 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .A4 ( source_in[3] ) , .Y ( ctmn_81 ) ) ;
OR2X1_RVT ctmi_68 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_83 ) ) ;
NAND3X0_RVT ctmi_69 ( .A1 ( valid_in ) , .A2 ( ctmn_84 ) , .A3 ( ctmn_85 ) , 
    .Y ( ctmn_86 ) ) ;
NAND2X0_RVT ctmi_70 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_84 ) ) ;
OR3X1_RVT ctmi_71 ( .A1 ( target_in[3] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[1] ) , .Y ( ctmn_85 ) ) ;
NBUFFX2_RVT HFSBUF_548_548 ( .A ( HFSNET_1 ) , .Y ( target_out[3] ) ) ;
endmodule


module FIFO_DEPTH4_1 ( rst_n , clk , wr_en , rd_en ,\data_in[valid] , 
        \data_in[source][3] , \data_in[source][2] , \data_in[source][1] , 
        \data_in[source][0] , \data_in[target][3] , \data_in[target][2] , 
        \data_in[target][1] , \data_in[target][0] , \data_in[data][7] , 
        \data_in[data][6] , \data_in[data][5] , \data_in[data][4] , 
        \data_in[data][3] , \data_in[data][2] , \data_in[data][1] , 
        \data_in[data][0] , full , empty ,\data_out[valid] , 
        \data_out[source][3] , \data_out[source][2] , \data_out[source][1] , 
        \data_out[source][0] , \data_out[target][3] , \data_out[target][2] , 
        \data_out[target][1] , \data_out[target][0] , \data_out[data][7] , 
        \data_out[data][6] , \data_out[data][5] , \data_out[data][4] , 
        \data_out[data][3] , \data_out[data][2] , \data_out[data][1] , 
        \data_out[data][0] ) ;
input  rst_n ;
input  clk ;
input  wr_en ;
input  rd_en ;
input  \data_in[valid] ;
input  \data_in[source][3] ;
input  \data_in[source][2] ;
input  \data_in[source][1] ;
input  \data_in[source][0] ;
input  \data_in[target][3] ;
input  \data_in[target][2] ;
input  \data_in[target][1] ;
input  \data_in[target][0] ;
input  \data_in[data][7] ;
input  \data_in[data][6] ;
input  \data_in[data][5] ;
input  \data_in[data][4] ;
input  \data_in[data][3] ;
input  \data_in[data][2] ;
input  \data_in[data][1] ;
input  \data_in[data][0] ;
output full ;
output empty ;
output \data_out[valid] ;
output \data_out[source][3] ;
output \data_out[source][2] ;
output \data_out[source][1] ;
output \data_out[source][0] ;
output \data_out[target][3] ;
output \data_out[target][2] ;
output \data_out[target][1] ;
output \data_out[target][0] ;
output \data_out[data][7] ;
output \data_out[data][6] ;
output \data_out[data][5] ;
output \data_out[data][4] ;
output \data_out[data][3] ;
output \data_out[data][2] ;
output \data_out[data][1] ;
output \data_out[data][0] ;

wire [1:0] wr_ptr ;
wire [1:0] rd_ptr ;

AND4X1_RVT ctmi_440 ( .A1 ( wr_ptr[0] ) , .A2 ( wr_ptr[1] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_276 ) , .Y ( N0 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][3] ) ) ;
SDFFX1_RVT \wr_ptr_reg[0] ( .D ( SEQMAP_NET_37 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[0] ) , .QN ( ctmn_314 ) ) ;
SDFFX1_RVT \fifo_reg[2][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( clk ) , .EN ( N7 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_data_out_reg ) ) ;
SDFFX1_RVT \fifo_reg[1][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg ( .CLK ( clk ) , .EN ( N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_fifo_reg ) ) ;
SDFFX1_RVT \fifo_reg[0][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][0] ) ) ;
AND2X1_RVT ctmi_228 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_319 ) , .Y ( ctmn_326 ) ) ;
AO221X1_RVT ctmi_460 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][2] ) , 
    .A3 ( \fifo[2][source][2] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_332 ) , 
    .Y ( N10 ) ) ;
SDFFX1_RVT \rd_ptr_reg[1] ( .D ( SEQMAP_NET_41 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[1] ) , .QN ( ctmn_311 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_1 ( .CLK ( clk ) , .EN ( N2 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_1 ) ) ;
SDFFX1_RVT \data_out_reg[source][2] ( .D ( N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][2] ) ) ;
SDFFX1_RVT \data_out_reg[source][1] ( .D ( N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][1] ) ) ;
SDFFX1_RVT \data_out_reg[source][0] ( .D ( N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][0] ) ) ;
SDFFX1_RVT \data_out_reg[target][3] ( .D ( N13 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][3] ) ) ;
SDFFX2_RVT \data_out_reg[target][2] ( .D ( N14 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][2] ) ) ;
SDFFX1_RVT \data_out_reg[target][1] ( .D ( N15 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][1] ) ) ;
SDFFX1_RVT \data_out_reg[target][0] ( .D ( N16 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][0] ) ) ;
SDFFX1_RVT \data_out_reg[data][7] ( .D ( N17 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][7] ) ) ;
SDFFX1_RVT \data_out_reg[data][6] ( .D ( N18 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][6] ) ) ;
SDFFX1_RVT \data_out_reg[data][5] ( .D ( N19 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][5] ) ) ;
SDFFX1_RVT \data_out_reg[data][4] ( .D ( N20 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][4] ) ) ;
SDFFX1_RVT \data_out_reg[data][3] ( .D ( N21 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][3] ) ) ;
SDFFX1_RVT \data_out_reg[data][2] ( .D ( N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][2] ) ) ;
NAND2X0_RVT ctmi_441 ( .A1 ( wr_en ) , .A2 ( ctmn_320 ) , .Y ( ctmn_321 ) ) ;
SDFFX1_RVT \data_out_reg[data][0] ( .D ( N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][0] ) ) ;
SDFFX1_RVT \rd_ptr_reg[0] ( .D ( SEQMAP_NET_45 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[0] ) , .QN ( ctmn_316 ) ) ;
SDFFX1_RVT \data_out_reg[source][3] ( .D ( N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][3] ) ) ;
AO221X1_RVT ctmi_454 ( .A1 ( \fifo[3][source][3] ) , .A2 ( ctmn_327 ) , 
    .A3 ( \fifo[2][source][3] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_331 ) , 
    .Y ( N9 ) ) ;
SDFFX1_RVT \data_out_reg[data][1] ( .D ( N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][1] ) ) ;
MUX21X1_RVT ctmi_438 ( .A1 ( ctmn_317 ) , .A2 ( ctmn_315 ) , 
    .S0 ( ctmn_313 ) , .Y ( ctmn_320 ) ) ;
SDFFX1_RVT \wr_ptr_reg[1] ( .D ( SEQMAP_NET_33 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[1] ) , .QN ( ctmn_312 ) ) ;
AO22X1_RVT ctmi_461 ( .A1 ( \fifo[1][source][2] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][2] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_332 ) ) ;
AO221X1_RVT ctmi_462 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][1] ) , .A5 ( ctmn_333 ) , 
    .Y ( N11 ) ) ;
AO22X1_RVT ctmi_463 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][1] ) , .Y ( ctmn_333 ) ) ;
AO221X1_RVT ctmi_464 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][0] ) , .A5 ( ctmn_334 ) , 
    .Y ( N12 ) ) ;
AO22X1_RVT ctmi_465 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][0] ) , .Y ( ctmn_334 ) ) ;
AO221X1_RVT ctmi_466 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][3] ) , .A5 ( ctmn_335 ) , 
    .Y ( N13 ) ) ;
AO22X1_RVT ctmi_467 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][3] ) , .Y ( ctmn_335 ) ) ;
AO221X1_RVT ctmi_468 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][2] ) , .A5 ( ctmn_336 ) , 
    .Y ( N14 ) ) ;
AO22X1_RVT ctmi_469 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][2] ) , .Y ( ctmn_336 ) ) ;
AO221X1_RVT ctmi_470 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][1] ) , .A5 ( ctmn_337 ) , 
    .Y ( N15 ) ) ;
AO22X1_RVT ctmi_471 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][1] ) , .Y ( ctmn_337 ) ) ;
AO221X1_RVT ctmi_472 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][0] ) , .A5 ( ctmn_338 ) , 
    .Y ( N16 ) ) ;
AO22X1_RVT ctmi_473 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][0] ) , .Y ( ctmn_338 ) ) ;
AO221X1_RVT ctmi_474 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][7] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][7] ) , .A5 ( ctmn_339 ) , 
    .Y ( N17 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_2 ( .CLK ( clk ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_2 ) ) ;
AO22X1_RVT ctmi_475 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][7] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][7] ) , .Y ( ctmn_339 ) ) ;
AO221X1_RVT ctmi_476 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][6] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][6] ) , .A5 ( ctmn_340 ) , 
    .Y ( N18 ) ) ;
AO22X1_RVT ctmi_477 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][6] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][6] ) , .Y ( ctmn_340 ) ) ;
AO221X1_RVT ctmi_478 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][5] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][5] ) , .A5 ( ctmn_341 ) , 
    .Y ( N19 ) ) ;
AO22X1_RVT ctmi_479 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][5] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][5] ) , .Y ( ctmn_341 ) ) ;
AO221X1_RVT ctmi_480 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][4] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][4] ) , .A5 ( ctmn_342 ) , 
    .Y ( N20 ) ) ;
AO22X1_RVT ctmi_481 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][4] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][4] ) , .Y ( ctmn_342 ) ) ;
AO221X1_RVT ctmi_482 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][3] ) , .A5 ( ctmn_343 ) , 
    .Y ( N21 ) ) ;
AO22X1_RVT ctmi_483 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][3] ) , .Y ( ctmn_343 ) ) ;
AO221X1_RVT ctmi_484 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][2] ) , .A5 ( ctmn_344 ) , 
    .Y ( N22 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_3 ( .CLK ( clk ) , .EN ( N0 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_3 ) ) ;
AO22X1_RVT ctmi_485 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][2] ) , .Y ( ctmn_344 ) ) ;
AO221X1_RVT ctmi_486 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][1] ) , .A5 ( ctmn_345 ) , 
    .Y ( N23 ) ) ;
AO22X1_RVT ctmi_487 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][1] ) , .Y ( ctmn_345 ) ) ;
AO221X1_RVT ctmi_488 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][0] ) , .A5 ( ctmn_346 ) , 
    .Y ( N24 ) ) ;
AO22X1_RVT ctmi_489 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][0] ) , .Y ( ctmn_346 ) ) ;
OA221X1_RVT ctmi_450 ( .A1 ( ctmn_311 ) , .A2 ( phfnn_277 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( ctmn_326 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_41 ) ) ;
INVX0_HVT phfnr_buf_466 ( .A ( ctmn_326 ) , .Y ( phfnn_277 ) ) ;
AND2X1_RVT ctmi_443 ( .A1 ( wr_ptr[1] ) , .A2 ( ctmn_323 ) , .Y ( N1 ) ) ;
INVX0_HVT ctmi_5 ( .A ( ctmn_318 ) , .Y ( empty ) ) ;
AND4X1_RVT ctmi_445 ( .A1 ( ctmn_312 ) , .A2 ( wr_ptr[0] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_276 ) , .Y ( N2 ) ) ;
AND2X1_RVT ctmi_446 ( .A1 ( ctmn_312 ) , .A2 ( ctmn_323 ) , .Y ( N3 ) ) ;
INVX1_HVT phfnr_buf_465 ( .A ( ctmn_321 ) , .Y ( phfnn_276 ) ) ;
OA221X1_RVT ctmi_384 ( .A1 ( N2 ) , .A2 ( ctmn_324 ) , .A3 ( N2 ) , 
    .A4 ( wr_ptr[1] ) , .A5 ( rst_n ) , .Y ( SEQMAP_NET_33 ) ) ;
AND2X2_RVT ctmi_455 ( .A1 ( rd_ptr[0] ) , .A2 ( rd_ptr[1] ) , 
    .Y ( ctmn_327 ) ) ;
AND2X2_RVT ctmi_456 ( .A1 ( ctmn_316 ) , .A2 ( rd_ptr[1] ) , .Y ( ctmn_328 ) ) ;
AO22X1_RVT ctmi_457 ( .A1 ( \fifo[1][source][3] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][3] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_331 ) ) ;
AND2X4_RVT ctmi_458 ( .A1 ( ctmn_311 ) , .A2 ( rd_ptr[0] ) , .Y ( ctmn_329 ) ) ;
AND2X4_RVT ctmi_459 ( .A1 ( ctmn_316 ) , .A2 ( ctmn_311 ) , .Y ( ctmn_330 ) ) ;
AND2X1_RVT ctmi_436 ( .A1 ( rst_n ) , .A2 ( ctmn_319 ) , .Y ( N7 ) ) ;
NAND2X0_RVT ctmi_448 ( .A1 ( wr_ptr[0] ) , .A2 ( phfnn_276 ) , 
    .Y ( ctmn_324 ) ) ;
OA221X1_RVT ctmi_382 ( .A1 ( ctmn_323 ) , .A2 ( wr_ptr[0] ) , 
    .A3 ( ctmn_323 ) , .A4 ( ctmn_321 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_37 ) ) ;
AND3X1_RVT ctmi_444 ( .A1 ( ctmn_314 ) , .A2 ( rst_n ) , .A3 ( phfnn_276 ) , 
    .Y ( ctmn_323 ) ) ;
AND2X1_RVT ctmi_437 ( .A1 ( ctmn_318 ) , .A2 ( rd_en ) , .Y ( ctmn_319 ) ) ;
OA221X1_RVT ctmi_514 ( .A1 ( rst_n ) , .A2 ( rst_n ) , .A3 ( ctmn_319 ) , 
    .A4 ( rd_ptr[0] ) , .A5 ( phfnn_277 ) , .Y ( SEQMAP_NET_45 ) ) ;
NAND3X0_RVT ctmi_427 ( .A1 ( ctmn_313 ) , .A2 ( ctmn_315 ) , 
    .A3 ( ctmn_317 ) , .Y ( ctmn_318 ) ) ;
AO22X1_RVT ctmi_428 ( .A1 ( ctmn_311 ) , .A2 ( ctmn_312 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( wr_ptr[1] ) , .Y ( ctmn_313 ) ) ;
NAND2X0_RVT ctmi_431 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_314 ) , 
    .Y ( ctmn_315 ) ) ;
NAND2X0_RVT ctmi_433 ( .A1 ( wr_ptr[0] ) , .A2 ( ctmn_316 ) , 
    .Y ( ctmn_317 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][3] ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_1 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module Master_Control_unit_AMOUNT_SLAVE4_1 ( clk , reset_n , in_vld , 
    sent_vector , target_vector , in_rdy , \current_state[0] ) ;
input  clk ;
input  reset_n ;
input  in_vld ;
input  [3:0] sent_vector ;
input  [3:0] target_vector ;
output in_rdy ;
output \current_state[0] ;

wire [1:1] current_state ;
wire [1:0] next_state ;

AND2X1_RVT ctmi_55 ( .A1 ( in_vld ) , .A2 ( in_rdy ) , .Y ( next_state[0] ) ) ;
AOI21X1_RVT ctmi_56 ( .A1 ( \current_state[0] ) , .A2 ( current_state[1] ) , 
    .A3 ( in_rdy ) , .Y ( next_state[1] ) ) ;
AOI21X2_RVT ctmi_49 ( .A1 ( ctmn_49 ) , .A2 ( current_state[1] ) , 
    .A3 ( \current_state[0] ) , .Y ( in_rdy ) ) ;
NAND4X0_RVT ctmi_50 ( .A1 ( ctmn_45 ) , .A2 ( ctmn_46 ) , .A3 ( ctmn_47 ) , 
    .A4 ( ctmn_48 ) , .Y ( ctmn_49 ) ) ;
XNOR2X1_RVT ctmi_51 ( .A1 ( sent_vector[0] ) , .A2 ( target_vector[0] ) , 
    .Y ( ctmn_45 ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_1 u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) , 
    .din ( next_state ) ,
    .dout ( { current_state[1] , \current_state[0] } ) ) ;
XNOR2X1_RVT ctmi_52 ( .A1 ( sent_vector[1] ) , .A2 ( target_vector[1] ) , 
    .Y ( ctmn_46 ) ) ;
XNOR2X1_RVT ctmi_53 ( .A1 ( sent_vector[2] ) , .A2 ( target_vector[2] ) , 
    .Y ( ctmn_47 ) ) ;
XNOR2X1_RVT ctmi_54 ( .A1 ( sent_vector[3] ) , .A2 ( target_vector[3] ) , 
    .Y ( ctmn_48 ) ) ;
endmodule


module switch_port_AMOUNT_SLAVE4_MASTER_NUM1 ( clk , rst_n , valid_in , 
    source_in , target_in , data_in , sent_mask_m , valid_out , source_out , 
    target_out , data_out , in_rdy_m , clkgt_enable_net_0 , HFSNET_1 , 
    HFSNET_3 , HFSNET_5 , HFSNET_6 ) ;
input  clk ;
input  rst_n ;
input  valid_in ;
input  [3:0] source_in ;
input  [3:0] target_in ;
input  [7:0] data_in ;
input  [3:0] sent_mask_m ;
output valid_out ;
output [3:0] source_out ;
output [3:0] target_out ;
output [7:0] data_out ;
output in_rdy_m ;
output clkgt_enable_net_0 ;
output HFSNET_1 ;
output HFSNET_3 ;
output HFSNET_5 ;
input  HFSNET_6 ;

Master_Control_unit_AMOUNT_SLAVE4_1 u_Master_Control_unit ( .clk ( clk ) , 
    .reset_n ( rst_n ) , .in_vld ( _0_net_ ) , .sent_vector ( sent_mask_m ) , 
    .target_vector ( target_out ) , .in_rdy ( in_rdy_m ) , 
    .\current_state[0] ( clkgt_enable_net_0 ) ) ;
FIFO_DEPTH4_1 u_FIFO ( .rst_n ( HFSNET_6 ) , .clk ( clk ) , 
    .wr_en ( _1_net_ ) , .rd_en ( in_rdy_m ) , 
    .\data_in[source][3] ( source_in[3] ) , 
    .\data_in[source][2] ( source_in[2] ) , 
    .\data_in[source][1] ( source_in[1] ) , 
    .\data_in[source][0] ( source_in[0] ) , 
    .\data_in[target][3] ( target_in[3] ) , 
    .\data_in[target][2] ( target_in[2] ) , 
    .\data_in[target][1] ( target_in[1] ) , 
    .\data_in[target][0] ( target_in[0] ) , 
    .\data_in[data][7] ( data_in[7] ) , .\data_in[data][6] ( data_in[6] ) , 
    .\data_in[data][5] ( data_in[5] ) , .\data_in[data][4] ( data_in[4] ) , 
    .\data_in[data][3] ( data_in[3] ) , .\data_in[data][2] ( data_in[2] ) , 
    .\data_in[data][1] ( data_in[1] ) , .\data_in[data][0] ( data_in[0] ) , 
    .empty ( empty ) , .\data_out[source][3] ( source_out[3] ) , 
    .\data_out[source][2] ( source_out[2] ) , 
    .\data_out[source][1] ( source_out[1] ) , 
    .\data_out[source][0] ( source_out[0] ) , 
    .\data_out[target][3] ( HFSNET_5 ) , 
    .\data_out[target][2] ( target_out[2] ) , 
    .\data_out[target][1] ( HFSNET_3 ) , .\data_out[target][0] ( HFSNET_1 ) , 
    .\data_out[data][7] ( data_out[7] ) , 
    .\data_out[data][6] ( data_out[6] ) , 
    .\data_out[data][5] ( data_out[5] ) , 
    .\data_out[data][4] ( data_out[4] ) , 
    .\data_out[data][3] ( data_out[3] ) , 
    .\data_out[data][2] ( data_out[2] ) , 
    .\data_out[data][1] ( data_out[1] ) , 
    .\data_out[data][0] ( data_out[0] ) ) ;
INVX0_HVT ctmi_1 ( .A ( empty ) , .Y ( _0_net_ ) ) ;
AOI221X1_RVT ctmi_515 ( .A1 ( ctmn_82 ) , .A2 ( ctmn_82 ) , 
    .A3 ( source_in[0] ) , .A4 ( ctmn_83 ) , .A5 ( ctmn_86 ) , 
    .Y ( _1_net_ ) ) ;
AO221X1_RVT ctmi_64 ( .A1 ( source_in[3] ) , .A2 ( ctmn_79 ) , 
    .A3 ( ctmn_80 ) , .A4 ( target_in[1] ) , .A5 ( ctmn_81 ) , 
    .Y ( ctmn_82 ) ) ;
OR3X1_RVT ctmi_65 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .Y ( ctmn_79 ) ) ;
NAND3X0_RVT ctmi_66 ( .A1 ( target_in[2] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[3] ) , .Y ( ctmn_80 ) ) ;
NOR4X1_RVT ctmi_67 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .A4 ( source_in[3] ) , .Y ( ctmn_81 ) ) ;
OR2X1_RVT ctmi_68 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_83 ) ) ;
NAND3X0_RVT ctmi_69 ( .A1 ( valid_in ) , .A2 ( ctmn_84 ) , .A3 ( ctmn_85 ) , 
    .Y ( ctmn_86 ) ) ;
NAND2X0_RVT ctmi_70 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_84 ) ) ;
OR3X1_RVT ctmi_71 ( .A1 ( target_in[2] ) , .A2 ( target_in[0] ) , 
    .A3 ( target_in[3] ) , .Y ( ctmn_85 ) ) ;
NBUFFX2_RVT HFSBUF_270_528 ( .A ( HFSNET_1 ) , .Y ( target_out[0] ) ) ;
NBUFFX2_RVT HFSBUF_339_541 ( .A ( HFSNET_3 ) , .Y ( target_out[1] ) ) ;
NBUFFX2_RVT HFSBUF_394_544 ( .A ( HFSNET_5 ) , .Y ( target_out[3] ) ) ;
endmodule


module FIFO_DEPTH4_0 ( rst_n , clk , wr_en , rd_en ,\data_in[valid] , 
        \data_in[source][3] , \data_in[source][2] , \data_in[source][1] , 
        \data_in[source][0] , \data_in[target][3] , \data_in[target][2] , 
        \data_in[target][1] , \data_in[target][0] , \data_in[data][7] , 
        \data_in[data][6] , \data_in[data][5] , \data_in[data][4] , 
        \data_in[data][3] , \data_in[data][2] , \data_in[data][1] , 
        \data_in[data][0] , full , empty ,\data_out[valid] , 
        \data_out[source][3] , \data_out[source][2] , \data_out[source][1] , 
        \data_out[source][0] , \data_out[target][3] , \data_out[target][2] , 
        \data_out[target][1] , \data_out[target][0] , \data_out[data][7] , 
        \data_out[data][6] , \data_out[data][5] , \data_out[data][4] , 
        \data_out[data][3] , \data_out[data][2] , \data_out[data][1] , 
        \data_out[data][0] ) ;
input  rst_n ;
input  clk ;
input  wr_en ;
input  rd_en ;
input  \data_in[valid] ;
input  \data_in[source][3] ;
input  \data_in[source][2] ;
input  \data_in[source][1] ;
input  \data_in[source][0] ;
input  \data_in[target][3] ;
input  \data_in[target][2] ;
input  \data_in[target][1] ;
input  \data_in[target][0] ;
input  \data_in[data][7] ;
input  \data_in[data][6] ;
input  \data_in[data][5] ;
input  \data_in[data][4] ;
input  \data_in[data][3] ;
input  \data_in[data][2] ;
input  \data_in[data][1] ;
input  \data_in[data][0] ;
output full ;
output empty ;
output \data_out[valid] ;
output \data_out[source][3] ;
output \data_out[source][2] ;
output \data_out[source][1] ;
output \data_out[source][0] ;
output \data_out[target][3] ;
output \data_out[target][2] ;
output \data_out[target][1] ;
output \data_out[target][0] ;
output \data_out[data][7] ;
output \data_out[data][6] ;
output \data_out[data][5] ;
output \data_out[data][4] ;
output \data_out[data][3] ;
output \data_out[data][2] ;
output \data_out[data][1] ;
output \data_out[data][0] ;

wire [1:0] wr_ptr ;
wire [1:0] rd_ptr ;

AND4X1_RVT ctmi_440 ( .A1 ( wr_ptr[0] ) , .A2 ( wr_ptr[1] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_274 ) , .Y ( N0 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[3][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][3] ) ) ;
SDFFX1_RVT \wr_ptr_reg[0] ( .D ( SEQMAP_NET_37 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[0] ) , .QN ( ctmn_314 ) ) ;
SDFFX1_RVT \fifo_reg[2][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[2][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_2 ) , 
    .Q ( \fifo[2][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( clk ) , .EN ( N7 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_data_out_reg ) ) ;
SDFFX1_RVT \fifo_reg[1][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[1][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_1 ) , 
    .Q ( \fifo[1][data][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][3] ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg ( .CLK ( clk ) , .EN ( N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_fifo_reg ) ) ;
SDFFX1_RVT \fifo_reg[0][source][2] ( .D ( \data_in[source][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][1] ( .D ( \data_in[source][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][source][0] ( .D ( \data_in[source][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][source][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][3] ( .D ( \data_in[target][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][2] ( .D ( \data_in[target][2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][1] ( .D ( \data_in[target][1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][target][0] ( .D ( \data_in[target][0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][target][0] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][7] ( .D ( \data_in[data][7] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][7] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][6] ( .D ( \data_in[data][6] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][6] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][5] ( .D ( \data_in[data][5] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][5] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][4] ( .D ( \data_in[data][4] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][4] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][3] ( .D ( \data_in[data][3] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][3] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][2] ( .D ( \data_in[data][2] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][2] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][1] ( .D ( \data_in[data][1] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][1] ) ) ;
SDFFX1_RVT \fifo_reg[0][data][0] ( .D ( \data_in[data][0] ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg ) , 
    .Q ( \fifo[0][data][0] ) ) ;
AND2X1_RVT ctmi_230 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_319 ) , .Y ( ctmn_326 ) ) ;
AO221X1_RVT ctmi_460 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][2] ) , 
    .A3 ( \fifo[2][source][2] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_332 ) , 
    .Y ( N10 ) ) ;
SDFFX1_RVT \rd_ptr_reg[1] ( .D ( SEQMAP_NET_41 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[1] ) , .QN ( ctmn_311 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_1 ( .CLK ( clk ) , .EN ( N2 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_1 ) ) ;
SDFFX1_RVT \data_out_reg[source][2] ( .D ( N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][2] ) ) ;
SDFFX1_RVT \data_out_reg[source][1] ( .D ( N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][1] ) ) ;
SDFFX1_RVT \data_out_reg[source][0] ( .D ( N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][0] ) ) ;
SDFFX1_RVT \data_out_reg[target][3] ( .D ( N13 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][3] ) ) ;
SDFFX2_RVT \data_out_reg[target][2] ( .D ( N14 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][2] ) ) ;
SDFFX2_RVT \data_out_reg[target][1] ( .D ( N15 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][1] ) ) ;
SDFFX1_RVT \data_out_reg[target][0] ( .D ( N16 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[target][0] ) ) ;
SDFFX1_RVT \data_out_reg[data][7] ( .D ( N17 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][7] ) ) ;
SDFFX1_RVT \data_out_reg[data][6] ( .D ( N18 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][6] ) ) ;
SDFFX1_RVT \data_out_reg[data][5] ( .D ( N19 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][5] ) ) ;
SDFFX1_RVT \data_out_reg[data][4] ( .D ( N20 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][4] ) ) ;
SDFFX1_RVT \data_out_reg[data][3] ( .D ( N21 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][3] ) ) ;
SDFFX1_RVT \data_out_reg[data][2] ( .D ( N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][2] ) ) ;
NAND2X0_RVT ctmi_441 ( .A1 ( wr_en ) , .A2 ( ctmn_320 ) , .Y ( ctmn_321 ) ) ;
SDFFX1_RVT \data_out_reg[data][0] ( .D ( N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][0] ) ) ;
SDFFX1_RVT \rd_ptr_reg[0] ( .D ( SEQMAP_NET_45 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( rd_ptr[0] ) , .QN ( ctmn_316 ) ) ;
SDFFX1_RVT \data_out_reg[source][3] ( .D ( N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk_clock_gate_data_out_reg ) , 
    .Q ( \data_out[source][3] ) ) ;
AO221X1_RVT ctmi_454 ( .A1 ( \fifo[3][source][3] ) , .A2 ( ctmn_327 ) , 
    .A3 ( \fifo[2][source][3] ) , .A4 ( ctmn_328 ) , .A5 ( ctmn_331 ) , 
    .Y ( N9 ) ) ;
SDFFX1_RVT \data_out_reg[data][1] ( .D ( N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_data_out_reg ) , .Q ( \data_out[data][1] ) ) ;
MUX21X1_RVT ctmi_438 ( .A1 ( ctmn_317 ) , .A2 ( ctmn_315 ) , 
    .S0 ( ctmn_313 ) , .Y ( ctmn_320 ) ) ;
SDFFX1_RVT \wr_ptr_reg[1] ( .D ( SEQMAP_NET_33 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .Q ( wr_ptr[1] ) , .QN ( ctmn_312 ) ) ;
AO22X1_RVT ctmi_461 ( .A1 ( \fifo[1][source][2] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][2] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_332 ) ) ;
AO221X1_RVT ctmi_462 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][1] ) , .A5 ( ctmn_333 ) , 
    .Y ( N11 ) ) ;
AO22X1_RVT ctmi_463 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][1] ) , .Y ( ctmn_333 ) ) ;
AO221X1_RVT ctmi_464 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][source][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][source][0] ) , .A5 ( ctmn_334 ) , 
    .Y ( N12 ) ) ;
AO22X1_RVT ctmi_465 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][source][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][source][0] ) , .Y ( ctmn_334 ) ) ;
AO221X1_RVT ctmi_466 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][3] ) , .A5 ( ctmn_335 ) , 
    .Y ( N13 ) ) ;
AO22X1_RVT ctmi_467 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][3] ) , .Y ( ctmn_335 ) ) ;
AO221X1_RVT ctmi_468 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][2] ) , .A5 ( ctmn_336 ) , 
    .Y ( N14 ) ) ;
AO22X1_RVT ctmi_469 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][2] ) , .Y ( ctmn_336 ) ) ;
AO221X1_RVT ctmi_470 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][1] ) , .A5 ( ctmn_337 ) , 
    .Y ( N15 ) ) ;
AO22X1_RVT ctmi_471 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][1] ) , .Y ( ctmn_337 ) ) ;
AO221X1_RVT ctmi_472 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][target][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][target][0] ) , .A5 ( ctmn_338 ) , 
    .Y ( N16 ) ) ;
AO22X1_RVT ctmi_473 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][target][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][target][0] ) , .Y ( ctmn_338 ) ) ;
AO221X1_RVT ctmi_474 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][7] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][7] ) , .A5 ( ctmn_339 ) , 
    .Y ( N17 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_2 ( .CLK ( clk ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_2 ) ) ;
AO22X1_RVT ctmi_475 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][7] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][7] ) , .Y ( ctmn_339 ) ) ;
AO221X1_RVT ctmi_476 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][6] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][6] ) , .A5 ( ctmn_340 ) , 
    .Y ( N18 ) ) ;
AO22X1_RVT ctmi_477 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][6] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][6] ) , .Y ( ctmn_340 ) ) ;
AO221X1_RVT ctmi_478 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][5] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][5] ) , .A5 ( ctmn_341 ) , 
    .Y ( N19 ) ) ;
AO22X1_RVT ctmi_479 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][5] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][5] ) , .Y ( ctmn_341 ) ) ;
AO221X1_RVT ctmi_480 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][4] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][4] ) , .A5 ( ctmn_342 ) , 
    .Y ( N20 ) ) ;
AO22X1_RVT ctmi_481 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][4] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][4] ) , .Y ( ctmn_342 ) ) ;
AO221X1_RVT ctmi_482 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][3] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][3] ) , .A5 ( ctmn_343 ) , 
    .Y ( N21 ) ) ;
AO22X1_RVT ctmi_483 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][3] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][3] ) , .Y ( ctmn_343 ) ) ;
AO221X1_RVT ctmi_484 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][2] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][2] ) , .A5 ( ctmn_344 ) , 
    .Y ( N22 ) ) ;
CGLPPRX2_HVT clock_gate_fifo_reg_3 ( .CLK ( clk ) , .EN ( N0 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_fifo_reg_3 ) ) ;
AO22X1_RVT ctmi_485 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][2] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][2] ) , .Y ( ctmn_344 ) ) ;
AO221X1_RVT ctmi_486 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][1] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][1] ) , .A5 ( ctmn_345 ) , 
    .Y ( N23 ) ) ;
AO22X1_RVT ctmi_487 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][1] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][1] ) , .Y ( ctmn_345 ) ) ;
AO221X1_RVT ctmi_488 ( .A1 ( ctmn_327 ) , .A2 ( \fifo[3][data][0] ) , 
    .A3 ( ctmn_328 ) , .A4 ( \fifo[2][data][0] ) , .A5 ( ctmn_346 ) , 
    .Y ( N24 ) ) ;
AO22X1_RVT ctmi_489 ( .A1 ( ctmn_329 ) , .A2 ( \fifo[1][data][0] ) , 
    .A3 ( ctmn_330 ) , .A4 ( \fifo[0][data][0] ) , .Y ( ctmn_346 ) ) ;
OA221X1_RVT ctmi_450 ( .A1 ( ctmn_311 ) , .A2 ( phfnn_275 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( ctmn_326 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_41 ) ) ;
INVX0_HVT phfnr_buf_464 ( .A ( ctmn_326 ) , .Y ( phfnn_275 ) ) ;
AND2X1_RVT ctmi_443 ( .A1 ( wr_ptr[1] ) , .A2 ( ctmn_323 ) , .Y ( N1 ) ) ;
INVX0_HVT ctmi_5 ( .A ( ctmn_318 ) , .Y ( empty ) ) ;
AND4X1_RVT ctmi_445 ( .A1 ( ctmn_312 ) , .A2 ( wr_ptr[0] ) , .A3 ( rst_n ) , 
    .A4 ( phfnn_274 ) , .Y ( N2 ) ) ;
AND2X1_RVT ctmi_446 ( .A1 ( ctmn_312 ) , .A2 ( ctmn_323 ) , .Y ( N3 ) ) ;
INVX1_HVT phfnr_buf_463 ( .A ( ctmn_321 ) , .Y ( phfnn_274 ) ) ;
OA221X1_RVT ctmi_380 ( .A1 ( N2 ) , .A2 ( ctmn_324 ) , .A3 ( N2 ) , 
    .A4 ( wr_ptr[1] ) , .A5 ( rst_n ) , .Y ( SEQMAP_NET_33 ) ) ;
AND2X4_RVT ctmi_455 ( .A1 ( rd_ptr[0] ) , .A2 ( rd_ptr[1] ) , 
    .Y ( ctmn_327 ) ) ;
AND2X4_RVT ctmi_456 ( .A1 ( ctmn_316 ) , .A2 ( rd_ptr[1] ) , .Y ( ctmn_328 ) ) ;
AO22X1_RVT ctmi_457 ( .A1 ( \fifo[1][source][3] ) , .A2 ( ctmn_329 ) , 
    .A3 ( \fifo[0][source][3] ) , .A4 ( ctmn_330 ) , .Y ( ctmn_331 ) ) ;
AND2X4_RVT ctmi_458 ( .A1 ( ctmn_311 ) , .A2 ( rd_ptr[0] ) , .Y ( ctmn_329 ) ) ;
AND2X4_RVT ctmi_459 ( .A1 ( ctmn_316 ) , .A2 ( ctmn_311 ) , .Y ( ctmn_330 ) ) ;
AND2X1_RVT ctmi_436 ( .A1 ( rst_n ) , .A2 ( ctmn_319 ) , .Y ( N7 ) ) ;
NAND2X0_RVT ctmi_448 ( .A1 ( wr_ptr[0] ) , .A2 ( phfnn_274 ) , 
    .Y ( ctmn_324 ) ) ;
OA221X1_RVT ctmi_378 ( .A1 ( ctmn_323 ) , .A2 ( wr_ptr[0] ) , 
    .A3 ( ctmn_323 ) , .A4 ( ctmn_321 ) , .A5 ( rst_n ) , 
    .Y ( SEQMAP_NET_37 ) ) ;
AND3X1_RVT ctmi_444 ( .A1 ( ctmn_314 ) , .A2 ( rst_n ) , .A3 ( phfnn_274 ) , 
    .Y ( ctmn_323 ) ) ;
AND2X1_RVT ctmi_437 ( .A1 ( ctmn_318 ) , .A2 ( rd_en ) , .Y ( ctmn_319 ) ) ;
OA221X1_RVT ctmi_512 ( .A1 ( rst_n ) , .A2 ( rst_n ) , .A3 ( ctmn_319 ) , 
    .A4 ( rd_ptr[0] ) , .A5 ( phfnn_275 ) , .Y ( SEQMAP_NET_45 ) ) ;
NAND3X0_RVT ctmi_427 ( .A1 ( ctmn_313 ) , .A2 ( ctmn_315 ) , 
    .A3 ( ctmn_317 ) , .Y ( ctmn_318 ) ) ;
AO22X1_RVT ctmi_428 ( .A1 ( ctmn_311 ) , .A2 ( ctmn_312 ) , 
    .A3 ( rd_ptr[1] ) , .A4 ( wr_ptr[1] ) , .Y ( ctmn_313 ) ) ;
NAND2X0_RVT ctmi_431 ( .A1 ( rd_ptr[0] ) , .A2 ( ctmn_314 ) , 
    .Y ( ctmn_315 ) ) ;
NAND2X0_RVT ctmi_433 ( .A1 ( wr_ptr[0] ) , .A2 ( ctmn_316 ) , 
    .Y ( ctmn_317 ) ) ;
SDFFX1_RVT \fifo_reg[3][source][3] ( .D ( \data_in[source][3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk_clock_gate_fifo_reg_3 ) , 
    .Q ( \fifo[3][source][3] ) ) ;
endmodule


module d_ff_DATA_WIDTH2_INITIAL_VAL0_0 ( clk , reset_n , din , en , dout ) ;
input  clk ;
input  reset_n ;
input  [1:0] din ;
input  en ;
output [1:0] dout ;

SDFFARX1_HVT \dout_reg[0] ( .D ( din[0] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[0] ) ) ;
SDFFARX1_HVT \dout_reg[1] ( .D ( din[1] ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( dout[1] ) ) ;
endmodule


module Master_Control_unit_AMOUNT_SLAVE4_0 ( clk , reset_n , in_vld , 
    sent_vector , target_vector , in_rdy , \current_state[0] ) ;
input  clk ;
input  reset_n ;
input  in_vld ;
input  [3:0] sent_vector ;
input  [3:0] target_vector ;
output in_rdy ;
output \current_state[0] ;

wire [1:1] current_state ;
wire [1:0] next_state ;

AND2X1_RVT ctmi_55 ( .A1 ( in_vld ) , .A2 ( in_rdy ) , .Y ( next_state[0] ) ) ;
AOI21X1_RVT ctmi_56 ( .A1 ( \current_state[0] ) , .A2 ( current_state[1] ) , 
    .A3 ( in_rdy ) , .Y ( next_state[1] ) ) ;
AOI21X2_RVT ctmi_49 ( .A1 ( ctmn_49 ) , .A2 ( current_state[1] ) , 
    .A3 ( \current_state[0] ) , .Y ( in_rdy ) ) ;
NAND4X0_RVT ctmi_50 ( .A1 ( ctmn_45 ) , .A2 ( ctmn_46 ) , .A3 ( ctmn_47 ) , 
    .A4 ( ctmn_48 ) , .Y ( ctmn_49 ) ) ;
XNOR2X1_RVT ctmi_51 ( .A1 ( sent_vector[0] ) , .A2 ( target_vector[0] ) , 
    .Y ( ctmn_45 ) ) ;
d_ff_DATA_WIDTH2_INITIAL_VAL0_0 u_d_ff ( .clk ( clk ) , .reset_n ( reset_n ) , 
    .din ( next_state ) ,
    .dout ( { current_state[1] , \current_state[0] } ) ) ;
XNOR2X1_RVT ctmi_52 ( .A1 ( sent_vector[1] ) , .A2 ( target_vector[1] ) , 
    .Y ( ctmn_46 ) ) ;
XNOR2X1_RVT ctmi_53 ( .A1 ( sent_vector[2] ) , .A2 ( target_vector[2] ) , 
    .Y ( ctmn_47 ) ) ;
XNOR2X1_RVT ctmi_54 ( .A1 ( sent_vector[3] ) , .A2 ( target_vector[3] ) , 
    .Y ( ctmn_48 ) ) ;
endmodule


module switch_port_AMOUNT_SLAVE4_MASTER_NUM0 ( clk , rst_n , valid_in , 
    source_in , target_in , data_in , sent_mask_m , valid_out , source_out , 
    target_out , data_out , in_rdy_m , clkgt_enable_net_0 , HFSNET_1 , 
    HFSNET_2 ) ;
input  clk ;
input  rst_n ;
input  valid_in ;
input  [3:0] source_in ;
input  [3:0] target_in ;
input  [7:0] data_in ;
input  [3:0] sent_mask_m ;
output valid_out ;
output [3:0] source_out ;
output [3:0] target_out ;
output [7:0] data_out ;
output in_rdy_m ;
output clkgt_enable_net_0 ;
output HFSNET_1 ;
input  HFSNET_2 ;

Master_Control_unit_AMOUNT_SLAVE4_0 u_Master_Control_unit ( .clk ( clk ) , 
    .reset_n ( rst_n ) , .in_vld ( _0_net_ ) , .sent_vector ( sent_mask_m ) , 
    .target_vector ( target_out ) , .in_rdy ( in_rdy_m ) , 
    .\current_state[0] ( clkgt_enable_net_0 ) ) ;
FIFO_DEPTH4_0 u_FIFO ( .rst_n ( HFSNET_2 ) , .clk ( clk ) , 
    .wr_en ( _1_net_ ) , .rd_en ( in_rdy_m ) , 
    .\data_in[source][3] ( source_in[3] ) , 
    .\data_in[source][2] ( source_in[2] ) , 
    .\data_in[source][1] ( source_in[1] ) , 
    .\data_in[source][0] ( source_in[0] ) , 
    .\data_in[target][3] ( target_in[3] ) , 
    .\data_in[target][2] ( target_in[2] ) , 
    .\data_in[target][1] ( target_in[1] ) , 
    .\data_in[target][0] ( target_in[0] ) , 
    .\data_in[data][7] ( data_in[7] ) , .\data_in[data][6] ( data_in[6] ) , 
    .\data_in[data][5] ( data_in[5] ) , .\data_in[data][4] ( data_in[4] ) , 
    .\data_in[data][3] ( data_in[3] ) , .\data_in[data][2] ( data_in[2] ) , 
    .\data_in[data][1] ( data_in[1] ) , .\data_in[data][0] ( data_in[0] ) , 
    .empty ( empty ) , .\data_out[source][3] ( source_out[3] ) , 
    .\data_out[source][2] ( source_out[2] ) , 
    .\data_out[source][1] ( source_out[1] ) , 
    .\data_out[source][0] ( source_out[0] ) , 
    .\data_out[target][3] ( HFSNET_1 ) , 
    .\data_out[target][2] ( target_out[2] ) , 
    .\data_out[target][1] ( target_out[1] ) , 
    .\data_out[target][0] ( target_out[0] ) , 
    .\data_out[data][7] ( data_out[7] ) , 
    .\data_out[data][6] ( data_out[6] ) , 
    .\data_out[data][5] ( data_out[5] ) , 
    .\data_out[data][4] ( data_out[4] ) , 
    .\data_out[data][3] ( data_out[3] ) , 
    .\data_out[data][2] ( data_out[2] ) , 
    .\data_out[data][1] ( data_out[1] ) , 
    .\data_out[data][0] ( data_out[0] ) ) ;
INVX0_HVT ctmi_1 ( .A ( empty ) , .Y ( _0_net_ ) ) ;
AOI221X1_RVT ctmi_513 ( .A1 ( ctmn_82 ) , .A2 ( ctmn_82 ) , 
    .A3 ( source_in[0] ) , .A4 ( ctmn_83 ) , .A5 ( ctmn_86 ) , 
    .Y ( _1_net_ ) ) ;
AO221X1_RVT ctmi_64 ( .A1 ( source_in[3] ) , .A2 ( ctmn_79 ) , 
    .A3 ( ctmn_80 ) , .A4 ( target_in[0] ) , .A5 ( ctmn_81 ) , 
    .Y ( ctmn_82 ) ) ;
OR3X1_RVT ctmi_65 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .Y ( ctmn_79 ) ) ;
NAND3X0_RVT ctmi_66 ( .A1 ( target_in[2] ) , .A2 ( target_in[1] ) , 
    .A3 ( target_in[3] ) , .Y ( ctmn_80 ) ) ;
NOR4X1_RVT ctmi_67 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .A3 ( source_in[0] ) , .A4 ( source_in[3] ) , .Y ( ctmn_81 ) ) ;
OR2X1_RVT ctmi_68 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_83 ) ) ;
NAND3X0_RVT ctmi_69 ( .A1 ( valid_in ) , .A2 ( ctmn_84 ) , .A3 ( ctmn_85 ) , 
    .Y ( ctmn_86 ) ) ;
NAND2X0_RVT ctmi_70 ( .A1 ( source_in[2] ) , .A2 ( source_in[1] ) , 
    .Y ( ctmn_84 ) ) ;
OR3X1_RVT ctmi_71 ( .A1 ( target_in[2] ) , .A2 ( target_in[1] ) , 
    .A3 ( target_in[3] ) , .Y ( ctmn_85 ) ) ;
NBUFFX2_RVT HFSBUF_349_539 ( .A ( HFSNET_1 ) , .Y ( target_out[3] ) ) ;
endmodule


module switch_4port ( clk , rst_n , \ports[3].clk , \ports[3].rst_n , 
    \ports[3].valid_in , \ports[3].source_in , \ports[3].target_in , 
    \ports[3].data_in , \ports[3].valid_out , \ports[3].source_out , 
    \ports[3].target_out , \ports[3].data_out , \ports[2].clk , 
    \ports[2].rst_n , \ports[2].valid_in , \ports[2].source_in , 
    \ports[2].target_in , \ports[2].data_in , \ports[2].valid_out , 
    \ports[2].source_out , \ports[2].target_out , \ports[2].data_out , 
    \ports[1].clk , \ports[1].rst_n , \ports[1].valid_in , 
    \ports[1].source_in , \ports[1].target_in , \ports[1].data_in , 
    \ports[1].valid_out , \ports[1].source_out , \ports[1].target_out , 
    \ports[1].data_out , \ports[0].clk , \ports[0].rst_n , 
    \ports[0].valid_in , \ports[0].source_in , \ports[0].target_in , 
    \ports[0].data_in , \ports[0].valid_out , \ports[0].source_out , 
    \ports[0].target_out , \ports[0].data_out ) ;
input  clk ;
input  rst_n ;
input  \ports[3].clk ;
input  \ports[3].rst_n ;
inout  \ports[3].valid_in ;
inout  [3:0] \ports[3].source_in ;
inout  [3:0] \ports[3].target_in ;
inout  [7:0] \ports[3].data_in ;
inout  \ports[3].valid_out ;
inout  [3:0] \ports[3].source_out ;
inout  [3:0] \ports[3].target_out ;
inout  [7:0] \ports[3].data_out ;
input  \ports[2].clk ;
input  \ports[2].rst_n ;
inout  \ports[2].valid_in ;
inout  [3:0] \ports[2].source_in ;
inout  [3:0] \ports[2].target_in ;
inout  [7:0] \ports[2].data_in ;
inout  \ports[2].valid_out ;
inout  [3:0] \ports[2].source_out ;
inout  [3:0] \ports[2].target_out ;
inout  [7:0] \ports[2].data_out ;
input  \ports[1].clk ;
input  \ports[1].rst_n ;
inout  \ports[1].valid_in ;
inout  [3:0] \ports[1].source_in ;
inout  [3:0] \ports[1].target_in ;
inout  [7:0] \ports[1].data_in ;
inout  \ports[1].valid_out ;
inout  [3:0] \ports[1].source_out ;
inout  [3:0] \ports[1].target_out ;
inout  [7:0] \ports[1].data_out ;
input  \ports[0].clk ;
input  \ports[0].rst_n ;
inout  \ports[0].valid_in ;
inout  [3:0] \ports[0].source_in ;
inout  [3:0] \ports[0].target_in ;
inout  [7:0] \ports[0].data_in ;
inout  \ports[0].valid_out ;
inout  [3:0] \ports[0].source_out ;
inout  [3:0] \ports[0].target_out ;
inout  [7:0] \ports[0].data_out ;

wire [3:0] \input_if_m[0].source ;
wire [3:0] \input_if_m[0].target ;
wire [7:0] \input_if_m[0].data ;
wire [3:0] \sent_mask_m[0] ;
wire [3:0] in_rdy_m ;
wire [3:0] \input_if_m[1].source ;
wire [3:0] \input_if_m[1].target ;
wire [7:0] \input_if_m[1].data ;
wire [3:0] \sent_mask_m[1] ;
wire [3:0] \input_if_m[2].source ;
wire [3:0] \input_if_m[2].target ;
wire [7:0] \input_if_m[2].data ;
wire [3:0] \sent_mask_m[2] ;
wire [3:0] \input_if_m[3].source ;
wire [3:0] \input_if_m[3].target ;
wire [7:0] \input_if_m[3].data ;
wire [3:0] \sent_mask_m[3] ;

switch_port_AMOUNT_SLAVE4_MASTER_NUM0 \SWITCH_UNIT_MASTER_CONTROL[0].u_switch_port ( 
    .clk ( clk ) , .rst_n ( HFSNET_7 ) , .valid_in ( \ports[0].valid_in ) , 
    .source_in ( \ports[0].source_in ) , .target_in ( \ports[0].target_in ) , 
    .data_in ( \ports[0].data_in ) , .sent_mask_m ( \sent_mask_m[0] ) , 
    .source_out ( \input_if_m[0].source ) , 
    .target_out ( \input_if_m[0].target ) , 
    .data_out ( \input_if_m[0].data ) , .in_rdy_m ( in_rdy_m[0] ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , .HFSNET_1 ( HFSNET_3 ) , 
    .HFSNET_2 ( rst_n ) ) ;
switch_port_AMOUNT_SLAVE4_MASTER_NUM1 \SWITCH_UNIT_MASTER_CONTROL[1].u_switch_port ( 
    .clk ( clk ) , .rst_n ( HFSNET_7 ) , .valid_in ( \ports[1].valid_in ) , 
    .source_in ( \ports[1].source_in ) , .target_in ( \ports[1].target_in ) , 
    .data_in ( \ports[1].data_in ) , .sent_mask_m ( \sent_mask_m[1] ) , 
    .source_out ( \input_if_m[1].source ) , 
    .target_out ( \input_if_m[1].target ) , 
    .data_out ( \input_if_m[1].data ) , .in_rdy_m ( in_rdy_m[1] ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_1 ) , .HFSNET_1 ( HFSNET_0 ) , 
    .HFSNET_3 ( HFSNET_4 ) , .HFSNET_5 ( HFSNET_5 ) , .HFSNET_6 ( rst_n ) ) ;
switch_port_AMOUNT_SLAVE4_MASTER_NUM2 \SWITCH_UNIT_MASTER_CONTROL[2].u_switch_port ( 
    .clk ( clk ) , .rst_n ( HFSNET_7 ) , .valid_in ( \ports[2].valid_in ) , 
    .source_in ( \ports[2].source_in ) , .target_in ( \ports[2].target_in ) , 
    .data_in ( \ports[2].data_in ) , .sent_mask_m ( \sent_mask_m[2] ) , 
    .source_out ( \input_if_m[2].source ) , 
    .target_out ( \input_if_m[2].target ) , 
    .data_out ( \input_if_m[2].data ) , .in_rdy_m ( in_rdy_m[2] ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_2 ) , .HFSNET_1 ( HFSNET_6 ) ) ;
switch_port_AMOUNT_SLAVE4_MASTER_NUM3 \SWITCH_UNIT_MASTER_CONTROL[3].u_switch_port ( 
    .clk ( clk ) , .rst_n ( HFSNET_7 ) , .valid_in ( \ports[3].valid_in ) , 
    .source_in ( \ports[3].source_in ) , .target_in ( \ports[3].target_in ) , 
    .data_in ( \ports[3].data_in ) , .sent_mask_m ( \sent_mask_m[3] ) , 
    .source_out ( \input_if_m[3].source ) , 
    .target_out ( \input_if_m[3].target ) , 
    .data_out ( \input_if_m[3].data ) , .in_rdy_m ( in_rdy_m[3] ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_3 ) , .HFSNET_1 ( HFSNET_1 ) , 
    .HFSNET_3 ( HFSNET_2 ) ) ;
Routing_AMOUNT_MASTER4_AMOUNT_SLAVE4_I_input_if_m_internal_if_slave_I_output_if_s_internal_if_master_ u_Routing ( 
    .clk ( clk ) , .rst_n ( HFSNET_7 ) , .in_rdy_m ( in_rdy_m ) , 
    .\sent_mask_m[3][3] ( \sent_mask_m[3] [3] ) , 
    .\sent_mask_m[3][2] ( \sent_mask_m[3] [2] ) , 
    .\sent_mask_m[3][1] ( \sent_mask_m[3] [1] ) , 
    .\sent_mask_m[3][0] ( \sent_mask_m[3] [0] ) , 
    .\sent_mask_m[2][3] ( \sent_mask_m[2] [3] ) , 
    .\sent_mask_m[2][2] ( \sent_mask_m[2] [2] ) , 
    .\sent_mask_m[2][1] ( \sent_mask_m[2] [1] ) , 
    .\sent_mask_m[2][0] ( \sent_mask_m[2] [0] ) , 
    .\sent_mask_m[1][3] ( \sent_mask_m[1] [3] ) , 
    .\sent_mask_m[1][2] ( \sent_mask_m[1] [2] ) , 
    .\sent_mask_m[1][1] ( \sent_mask_m[1] [1] ) , 
    .\sent_mask_m[1][0] ( \sent_mask_m[1] [0] ) , 
    .\sent_mask_m[0][3] ( \sent_mask_m[0] [3] ) , 
    .\sent_mask_m[0][2] ( \sent_mask_m[0] [2] ) , 
    .\sent_mask_m[0][1] ( \sent_mask_m[0] [1] ) , 
    .\sent_mask_m[0][0] ( \sent_mask_m[0] [0] ) , 
    .\input_if_m[3].source ( \input_if_m[3].source ) , 
    .\input_if_m[3].target ( \input_if_m[3].target ) , 
    .\input_if_m[3].data ( \input_if_m[3].data ) , 
    .\input_if_m[2].source ( \input_if_m[2].source ) , 
    .\input_if_m[2].target ( \input_if_m[2].target ) , 
    .\input_if_m[2].data ( \input_if_m[2].data ) , 
    .\input_if_m[1].source ( \input_if_m[1].source ) , 
    .\input_if_m[1].target ( \input_if_m[1].target ) , 
    .\input_if_m[1].data ( \input_if_m[1].data ) , 
    .\input_if_m[0].source ( \input_if_m[0].source ) , 
    .\input_if_m[0].target ( \input_if_m[0].target ) , 
    .\input_if_m[0].data ( \input_if_m[0].data ) , 
    .\output_if_s[3].valid ( \ports[3].valid_out ) , 
    .\output_if_s[3].source ( \ports[3].source_out ) , 
    .\output_if_s[3].target ( \ports[3].target_out ) , 
    .\output_if_s[3].data ( \ports[3].data_out ) , 
    .\output_if_s[2].valid ( \ports[2].valid_out ) , 
    .\output_if_s[2].source ( \ports[2].source_out ) , 
    .\output_if_s[2].target ( \ports[2].target_out ) , 
    .\output_if_s[2].data ( \ports[2].data_out ) , 
    .\output_if_s[1].valid ( \ports[1].valid_out ) , 
    .\output_if_s[1].source ( \ports[1].source_out ) , 
    .\output_if_s[1].target ( \ports[1].target_out ) , 
    .\output_if_s[1].data ( \ports[1].data_out ) , 
    .\output_if_s[0].valid ( \ports[0].valid_out ) , 
    .\output_if_s[0].source ( \ports[0].source_out ) , 
    .\output_if_s[0].target ( \ports[0].target_out ) , 
    .\output_if_s[0].data ( \ports[0].data_out ) , 
    .clkgt_enable_net_0 ( clkgt_enable_net_0 ) , 
    .clkgt_enable_net_1 ( clkgt_enable_net_1 ) , 
    .clkgt_enable_net_2 ( clkgt_enable_net_2 ) , 
    .clkgt_enable_net_3 ( clkgt_enable_net_3 ) , .HFSNET_0 ( HFSNET_0 ) , 
    .HFSNET_1 ( HFSNET_1 ) , .HFSNET_2 ( HFSNET_2 ) , .HFSNET_3 ( HFSNET_3 ) , 
    .HFSNET_4 ( HFSNET_4 ) , .HFSNET_5 ( HFSNET_5 ) , .HFSNET_6 ( HFSNET_6 ) , 
    .HFSNET_7 ( rst_n ) ) ;
NBUFFX8_HVT HFSBUF_177_555 ( .A ( rst_n ) , .Y ( HFSNET_7 ) ) ;
endmodule


