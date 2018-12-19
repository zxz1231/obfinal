package com.ob.biz.vo;

import java.sql.Date;

public class ReservationVO {
	private int r_id, u_id, nu_id, sch_id, seat_row, seat_col;
	private Date r_date;

	//사용 편의를 위한 변수 선언
	//세션에 모든 정보를 다 담아서 쓰면 서버가 과부하 될 수 있으므로
	//그때그때 필요한 정보들을 VO에 담아서 쓰는 형태로 쓸 수 있게함
	
	private String title, runningtime;	//영화제목,상영시간(러닝타임)	- movie
	private String t_name, t_phone, t_address;	//극장정보	- theater
	private String scr_name, etc;	//상영관 이름, 층 정보	- screen
	private String time, price;	//영화시작시간, 가격	- schedule
	private String id, name;	//예약자 아이디, 성명	- users
	private String nu_phone, nu_name;	//예약자(비회원) 핸드폰번호, 성명	- no_users
	
	
	
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getNu_id() {
		return nu_id;
	}
	public void setNu_id(int nu_id) {
		this.nu_id = nu_id;
	}
	public int getSch_id() {
		return sch_id;
	}
	public void setSch_id(int sch_id) {
		this.sch_id = sch_id;
	}
	public int getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(int seat_row) {
		this.seat_row = seat_row;
	}
	public int getSeat_col() {
		return seat_col;
	}
	public void setSeat_col(int seat_col) {
		this.seat_col = seat_col;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	
}
