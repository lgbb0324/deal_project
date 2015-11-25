package com.project.member;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller("memberController")
public class MemberController {

	@Autowired
	private MemberService service;

	
	@RequestMapping(value="/member/member", method=RequestMethod.GET)
	public ModelAndView memberForm() throws	Exception{
		
		ModelAndView mav = new ModelAndView(".member.member");

		return mav;
	}

	
	
	@RequestMapping(value="/member/member",method=RequestMethod.POST)
	public ModelAndView memberSubmit(
			Member dto
			) throws Exception{
		int result = service.insertMember(dto);
		
		if(result==0){
			ModelAndView mav = new ModelAndView(".member.member");
			mav.addObject("mode", "created");
			mav.addObject("title", "가입");
			mav.addObject("message","아이디 중복으로 회원가입이 실패 했습니다.");
			
			return mav;
		}
		
		ModelAndView mav = new ModelAndView(".member.member");
		mav.addObject("message", "회원가입이 정상 처리 되었습니다.<br>메인 화면으로 이동하여 로그인 하시기 바랍니다.");
		return mav;
		
	
	}
	
	@RequestMapping(value="/member/login",method=RequestMethod.POST)
	public ModelAndView loginSubmit(
			HttpSession session,
			@RequestParam String userId,
			@RequestParam String userPwd
			) throws Exception{
		
		Member dto = service.readMember(userId);
		if(dto == null){
			String msg = "아이디 또는 패스워드가 일치하지 않습니다.";
			ModelAndView mav = new ModelAndView(".member.member");
			mav.addObject("message",msg);
			return mav;
		}
		
		SessionInfo info = new SessionInfo();
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());

		//세션에 로그인 정보 저장
		session.setAttribute("member", info);
		
		
		return new ModelAndView("redirect:/");
	}
}
