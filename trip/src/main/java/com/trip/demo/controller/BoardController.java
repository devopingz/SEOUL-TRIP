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
public class BoardController {

	public BoardService bService;
	public MemberService mService;
	
	public BoardController(BoardService b, MemberService m) {
		this.bService = b;
		this.mService = m;
	}
	
	@RequestMapping("/board")
    public String boardList(BoardDto board, Model model) throws Exception{
    	
		//bService.update(board);
    	model.addAttribute("boardList",bService.selectBoard(board));
        return "/board/board";
    }	    
	
	@RequestMapping("/boardwrite")
    public String boardwrite() throws Exception{
        return "/board/boardwrite";
    }
	
	@RequestMapping("/boardread")
    public String boardread(BoardDto board, Model model) throws Exception{

		List<BoardDto> lists = bService.selectBoardcon(board);
		model.addAttribute("boardList",lists);
        return "/board/boardread";
    }

	@RequestMapping("/boardwriteok")
    public String boardwriteok(BoardDto board, RedirectAttributes rttr) throws Exception{
    	
    	bService.insert(board);
    	bService.update(board);
    	rttr.addFlashAttribute("board", "boardok");
        return "redirect:/board";	
    }
	
	@RequestMapping("/boarddelete")
    public String boarddelete(BoardDto board, RedirectAttributes rttr) throws Exception{
    	
    	bService.delete(board);
    	bService.update(board);
    	rttr.addFlashAttribute("board", "boarddelok");
        return "redirect:/board";
    }
	
	@RequestMapping("/boardsearch")
    public String boardsearch(BoardDto board, Model model) throws Exception{
    	
    	model.addAttribute("boardList",bService.selectBoardIf(board));
        return "/board/board";
    }
	
	@RequestMapping("/boardMy")
    public String boardMy(BoardDto board, Model model) throws Exception{
    	
    	model.addAttribute("boardList",bService.selectBoardMy(board));
        return "/board/board";
    }
	

}
