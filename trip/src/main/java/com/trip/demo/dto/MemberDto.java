package com.trip.demo.dto;

public class MemberDto {
	
	private String id;
	private String pw1;
	private String pw2;
	private String name;
	private String nickname;
	private String birth;
	private String gender;
	private String email;
	private String phone;
	
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
	public String getpw2() {
		return pw2;
	}
	public void setpw2(String pw2) {
		this.pw2 = pw2;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getnickname() {
		return nickname;
	}
	public void setnickname(String nickname) {
		this.nickname = nickname;
	}
	public String getbirth() {
		return birth;
	}
	public void setbirth(String birth) {
		this.birth = birth;
	}
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone = phone;
	}
	public String toString() {
		return "MemberDto [id=" +id + ", pw1="+pw1+" pw2="+pw2+" name="+name+" nickname="+nickname+" birth="+birth+" gender ="+gender+" email="+email+" phone="+phone+"]";
	}

}
