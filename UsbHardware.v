// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Sun Jun 25 21:10:20 2017"

module UsbHardware(
	ext_clk,
	reset_n,
	phy_ulpi_clk,
	phy_ulpi_dir,
	phy_ulpi_nxt,
	buf_in_commit,
	buf_out_arm,
	buf_in_addr,
	buf_in_commit_len,
	buf_in_data,
	buf_out_addr,
	phy_reset,
	phy_ulpi_stp,
	stat_connected,
	stat_fs,
	stat_hs,
	stat_configured,
	buf_in_ready,
	buf_in_commit_ack,
	buf_out_hasdata,
	buf_out_arm_ack,
	vend_req_act,
	err_crc_pid,
	err_crc_tok,
	err_crc_pkt,
	err_pid_out_of_seq,
	err_setup_pkt,
	buf_out_len,
	buf_out_q,
	dbg_frame_num,
	dbg_linestate,
	phy_ulpi_d,
	vend_req_request,
	vend_req_val
);


input wire	ext_clk;
input wire	reset_n;
input wire	phy_ulpi_clk;
input wire	phy_ulpi_dir;
input wire	phy_ulpi_nxt;
input wire	buf_in_commit;
input wire	buf_out_arm;
input wire	[8:0] buf_in_addr;
input wire	[9:0] buf_in_commit_len;
input wire	[7:0] buf_in_data;
input wire	[8:0] buf_out_addr;
output wire	phy_reset;
output wire	phy_ulpi_stp;
output wire	stat_connected;
output wire	stat_fs;
output wire	stat_hs;
output wire	stat_configured;
output wire	buf_in_ready;
output wire	buf_in_commit_ack;
output wire	buf_out_hasdata;
output wire	buf_out_arm_ack;
output wire	vend_req_act;
output wire	err_crc_pid;
output wire	err_crc_tok;
output wire	err_crc_pkt;
output wire	err_pid_out_of_seq;
output wire	err_setup_pkt;
output wire	[9:0] buf_out_len;
output wire	[7:0] buf_out_q;
output wire	[10:0] dbg_frame_num;
output wire	[1:0] dbg_linestate;
inout wire	[7:0] phy_ulpi_d;
output wire	[7:0] vend_req_request;
output wire	[15:0] vend_req_val;

wire reset_n_out;
assign phy_reset = ~reset_n_out;


usb2_top	b2v_inst(
	.ext_clk(ext_clk),
	.reset_n(reset_n),
	.phy_ulpi_clk(phy_ulpi_clk),
	.phy_ulpi_dir(phy_ulpi_dir),
	.phy_ulpi_nxt(phy_ulpi_nxt),
	.opt_disable_all(0),
	.opt_enable_hs(1),
	.opt_ignore_vbus(1),
	.buf_in_wren(0),
	.buf_in_commit(buf_in_commit),
	.buf_out_arm(buf_out_arm),
	.buf_in_addr(buf_in_addr),
	.buf_in_commit_len(buf_in_commit_len),
	.buf_in_data(buf_in_data),
	.buf_out_addr(buf_out_addr),
	.phy_ulpi_d(phy_ulpi_d),
	.reset_n_out(reset_n_out),
	.phy_ulpi_stp(phy_ulpi_stp),
	.stat_connected(stat_connected),
	.stat_fs(stat_fs),
	.stat_hs(stat_hs),
	.stat_configured(stat_configured),
	.buf_in_ready(buf_in_ready),
	.buf_in_commit_ack(buf_in_commit_ack),
	.buf_out_hasdata(buf_out_hasdata),
	.buf_out_arm_ack(buf_out_arm_ack),
	.vend_req_act(vend_req_act),
	.err_crc_pid(err_crc_pid),
	.err_crc_tok(err_crc_tok),
	.err_crc_pkt(err_crc_pkt),
	.err_pid_out_of_seq(err_pid_out_of_seq),
	.err_setup_pkt(err_setup_pkt),
	.buf_out_len(buf_out_len),
	.buf_out_q(buf_out_q),
	.dbg_frame_num(dbg_frame_num),
	.dbg_linestate(dbg_linestate),
	
	.vend_req_request(vend_req_request),
	.vend_req_val(vend_req_val));



endmodule
