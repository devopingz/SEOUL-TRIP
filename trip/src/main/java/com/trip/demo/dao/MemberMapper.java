package com.trip.demo.dao;

import java.util.List;

import com.trip.demo.dto.MemberDto;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.trip.demo.dto.MemberDto;
import com.trip.demo.dto.LoginDto;

@Mapper
public interface MemberMapper {
	
	public void insertMember(MemberDto member);	
	public MemberDto selectOneUser (String id);	
	public List<MemberDto> selectAllUser(MemberDto member);
    public MemberDto memberLogin(MemberDto member); //로그인 
    public void updateMember(MemberDto member); //회원정보수정
    public void deleteMember(MemberDto member);  //회원정보삭제
	
}
