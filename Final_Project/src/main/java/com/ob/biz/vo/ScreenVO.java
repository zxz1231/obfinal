package com.ob.biz.vo;

public class ScreenVO {
	private int scr_id, t_id;
	private String scr_name, scr_seat_row, scr_seat_col, etc;
	
	
	public int getScr_id() {
		return scr_id;
	}
	public void setScr_id(int scr_id) {
		this.scr_id = scr_id;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getScr_name() {
		return scr_name;
	}
	public void setScr_name(String scr_name) {
		this.scr_name = scr_name;
	}
	public String getScr_seat_row() {
		return scr_seat_row;
	}
	public void setScr_seat_row(String scr_seat_row) {
		this.scr_seat_row = scr_seat_row;
	}
	public String getScr_seat_col() {
		return scr_seat_col;
	}
	public void setScr_seat_col(String scr_seat_col) {
		this.scr_seat_col = scr_seat_col;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
}
