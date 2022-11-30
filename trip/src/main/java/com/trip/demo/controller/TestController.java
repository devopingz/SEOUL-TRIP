package com.trip.demo.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.trip.demo.dto.BoardDto;
import com.trip.demo.dto.MemberDto;
import com.trip.demo.service.BoardService;
 

@Controller
public class TestController {
	
	
	@RequestMapping("/test")
    public String test() throws Exception{
        return "test";
    }
	
}
