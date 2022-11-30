package com.trip.demo.service;

import java.util.List;

import javax.swing.JOptionPane;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trip.demo.dao.MemberMapper;
import com.trip.demo.dto.MemberDto;
import org.springframework.ui.Model;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	public MemberMapper mMapper;
	
    @Override
    public MemberDto memberLogin(MemberDto member) throws Exception {
        
        return mMapper.memberLogin(member);
    }
    
	@Override
	public void updateMember(MemberDto member) {
		mMapper.updateMember(member);
	}
	
	@Override
	public void deleteMember(MemberDto member) {
		mMapper.deleteMember(member);
	}
 
	
    @Override
    public List<MemberDto> selectAllUser(MemberDto member) {
        return mMapper.selectAllUser(member);
    }
	
	/*@Override
	public boolean login (String id,String pw) {
		MemberDto user=mMapper.selectOneUser(id); //id를통해 userDto가져와서 null이아니면 db에 존재하는 아이디 이겠죠?
		if(user!=null) {
			if(user.getpw1().equals(pw)) 
				return true;
		}
		return false;
	}*/
	
	@Override
	public boolean join (Model model, MemberDto member)/*회원가입*/ {
		if(mMapper.selectOneUser(member.getid())==null)//아이디중복여부체크
		{
			model.addAttribute("check", 2);
			mMapper.insertMember(member);
			return true;
		}
		else
			return false;
	}
	

		
	
	/*@Override
	public void withdraw(Model model, String userId,String userPw)/ {
		
		uMapper.deleteUser(userId);
		//JOptionPane.showMessageDialog(null, "회원탈퇴가 완료되었습니다.");
		
	}
	
	
	@Override
	public UserDto getUser(String userId) {
		return uMapper.selectOneUser(userId);
	}
	
	@Override
	public List<UserDto> getUserList(){
		return uMapper.selectAllUser();
	}*/
}
