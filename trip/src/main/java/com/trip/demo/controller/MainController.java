package com.trip.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trip.demo.dto.MemberDto;
import com.trip.demo.dto.BoardDto;
import com.trip.demo.service.BoardService;
import com.trip.demo.service.MemberService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

	public BoardService bService;
	public MemberService mService;
	
	public MainController(BoardService b, MemberService m) {
		this.bService = b;
		this.mService = m;
	}
	
	@RequestMapping("/")
    public String main(BoardDto board, Model model) throws Exception{
    	
    	model.addAttribute("boardList",bService.selectMain(board));
        return "main";
    }
	
}
