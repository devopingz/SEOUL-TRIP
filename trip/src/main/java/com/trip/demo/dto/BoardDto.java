package com.trip.demo.dto;
import java.util.Date;

public class BoardDto {
	
 private int num;
 private String title;
 private String content;
 private String id;
 private String nickname;
 private Date date;
 private String email;
 private String searchValue;
 private String searchKey;
 private String password;
 
public int getnum() {
	return num;
}
public void setnum(int num) {
	this.num = num;
}
public String gettitle() {
	return title;
}
public void settitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getid() {
	return id;
}
public void setid(String id) {
	this.id = id;
}
public String getnickname() {
	return nickname;
}
public void setnickname(String nickname) {
	this.nickname = nickname;
}
public String getemail() {
	return email;
}
public void setemail(String email) {
	this.email = email;
}
public Date getdate() {
	return date;
}
public void setdate(Date date) {
	this.date = date;
}
public String getsearchValue() {
	return searchValue;
}
public void setsearchValue(String searchValue) {
	this.searchValue = searchValue;
}
public String getSearchKey() {
	return searchKey;
}
public void setSearchKey(String searchKey) {
	this.searchKey = searchKey;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String toString() {
    return "BoardDto [title=" + title + ", content=" + content + ", id=" + id
            + ", nickname=" + nickname + ", email=" + email+", num=" + num+ ", date=" + date+"]";
}

}
