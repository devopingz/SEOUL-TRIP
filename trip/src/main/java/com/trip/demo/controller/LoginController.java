package com.trip.demo.controller;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import com.trip.demo.dto.MemberDto;
import com.trip.demo.service.MemberService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.trip.demo.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.trip.demo.dto.MemberDto;
import com.trip.demo.service.MemberServiceImpl;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {

	public MemberService mService;
	
	public LoginController(MemberService m) {
		this.mService = m;
	}
	
    @RequestMapping("/memberL")
    public String memberLogin() throws Exception{
        return "/member/memberLogin";
    }

    @RequestMapping("/memberJ")
    public String memberJoin() throws Exception{
        return "/member/memberJoin";
    }
    
    @PostMapping(value="/memberJoinResult")
	public String memberJoinResult(Model model, MemberDto member) {
		model.addAttribute("check", 2);
		if(mService.join(model, member))
			model.addAttribute("msg","회원가입이 완료되었습니다.");
		else
		{model.addAttribute("msg","중복된 아이디가 존재합니다");}
			return "/member/memberJoinResult";
	}
    
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberDto member, RedirectAttributes rttr) throws Exception{
        
        HttpSession session = request.getSession();
        MemberDto dto = mService.memberLogin(member);  
        if(dto == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우         
            
            rttr.addFlashAttribute("result", "loginx");
            return "redirect:/memberL";
        }
 
        session.setAttribute("member", dto);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        return "redirect:/";
    }
    
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session, RedirectAttributes rttr) {
        session.invalidate();
        rttr.addFlashAttribute("result", "logout");
        ModelAndView mv = new ModelAndView("redirect:/");
        return mv;
    }

}
