package com.ob.biz.vo;

public class ScheduleVO {
	private int sch_id, m_id, t_id, scr_id;
	private String time, price;
	
	//사용 편의를 위한 변수 선언
	//세션에 모든 정보를 다 담아서 쓰면 서버가 과부하 될 수 있으므로
	//그때그때 필요한 정보들을 VO에 담아서 쓰는 형태로 쓸 수 있게함
	
	private String title, runningtime;	//영화제목,상영시간(러닝타임)	- movie
	private String t_name, t_phone, t_address;	//극장정보	- theater
	private String scr_name, etc;	//상영관 이름, 층 정보	- screen
	
	
	public int getSch_id() {
		return sch_id;
	}
	public void setSch_id(int sch_id) {
		this.sch_id = sch_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public int getScr_id() {
		return scr_id;
	}
	public void setScr_id(int scr_id) {
		this.scr_id = scr_id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
