package com.trip.demo.dto;

public class LoginDto {
	
	private String id;
	private String pw1;
	private boolean useCookie;
	
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	public String getpw1() {
		return pw1;
	}
	public void setpw1(String pw1) {
		this.pw1 = pw1;
	}
	public boolean getuseCookie() {
		return useCookie;
	}
	public void setuseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	public String toString() {
		return "LoginDto [id=" +id + ", pw1="+pw1+"]";
	}
	

}
