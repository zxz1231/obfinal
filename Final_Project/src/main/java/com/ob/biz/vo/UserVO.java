package com.ob.biz.vo;
/*
CREATE TABLE USERS (
	ID VARCHAR2(8) PRIMARY KEY,
	PASSWORD VARCHAR2(8),
	NAME VARCHAR2(20),
	ROLE VARCHAR2(5)
);
 */
public class UserVO {
	private String id;
	private String password;
	private String name;
	private String role;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", role=" + role + "]";
	}
	
	
}
