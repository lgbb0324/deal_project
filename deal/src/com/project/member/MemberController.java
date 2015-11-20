package com.project.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("memberController")
public class MemberController {

	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("/member/login");
		return mav;
	}
	
	@RequestMapping(value="/member/memberch", method=RequestMethod.GET)
	public ModelAndView memberchForm() throws	Exception{
		
		ModelAndView mav = new ModelAndView(".member.memberch");

		return mav;
	}
	
	@RequestMapping(value="/member/member", method=RequestMethod.GET)
	public ModelAndView memberForm() throws	Exception{
		
		ModelAndView mav = new ModelAndView(".member.member");

		return mav;
	}
	
	
	@RequestMapping(value="/member/mypage", method=RequestMethod.GET)
	public ModelAndView mypageForm() throws Exception{
		
		ModelAndView mav = new ModelAndView(".member.mypage");
		
		return mav;
	}
}
