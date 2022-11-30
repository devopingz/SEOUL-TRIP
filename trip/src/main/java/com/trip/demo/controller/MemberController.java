package com.trip.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trip.demo.dto.BoardDto;
import com.trip.demo.dto.MemberDto;
import com.trip.demo.service.MemberService;
import com.trip.demo.service.BoardService;

@Controller
public class MemberController {
		
		public MemberService mService;
		public BoardService bService;
	
		public MemberController(MemberService m, BoardService b) {
		this.mService = m;
		this.bService = b;
		}
	
		@RequestMapping("/mypageD")
	    public String mypageDetail() throws Exception{
	        return "mypage/mypageDetail";
	    }
	    
	    @RequestMapping("/updateMember")
	    public String updateMember(MemberDto member, RedirectAttributes rttr, HttpSession session) throws Exception{
	    	
	    	mService.updateMember(member);
	    	rttr.addFlashAttribute("result", "modifyok");
	    	session.invalidate();
	        return "redirect:/";	
	    }
	    
	    @RequestMapping("/deleteMember")
	    public String deleteMember(MemberDto member, HttpSession session, RedirectAttributes rttr) throws Exception{
	    	
	    	mService.deleteMember(member);
	    	rttr.addFlashAttribute("result", "deleteok");
	    	session.invalidate();
	        return "member/memberDelete";
	    }
	    
	    @RequestMapping("/memberList")
	    public String memberList(MemberDto member, Model model) throws Exception{
	    	
	    	model.addAttribute("memberList",mService.selectAllUser(member));
	        return "member/memberList";
	    }	    
}
