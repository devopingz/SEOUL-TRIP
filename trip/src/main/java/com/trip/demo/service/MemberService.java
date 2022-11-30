package com.trip.demo.service;

import java.util.List;
import com.trip.demo.dto.MemberDto;

import org.springframework.ui.Model;

public interface MemberService {
	//public boolean login (String id, String pw);
	public boolean join (Model model, MemberDto member);
	/*public void withdraw(Model model, String userId, String userPw);
	public UserDto getUser(String userId);
	public List<UserDto> getUserList();*/
	public List<MemberDto> selectAllUser(MemberDto member);
    public MemberDto memberLogin(MemberDto member) throws Exception;  //로그인
    public void updateMember(MemberDto member);  //회원정보수정
    public void deleteMember(MemberDto member);  //회원탈퇴
}
