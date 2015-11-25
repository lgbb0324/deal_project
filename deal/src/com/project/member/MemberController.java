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
			mav.addObject("title", "����");
			mav.addObject("message","���̵� �ߺ����� ȸ�������� ���� �߽��ϴ�.");
			
			return mav;
		}
		
		ModelAndView mav = new ModelAndView(".member.member");
		mav.addObject("message", "ȸ�������� ���� ó�� �Ǿ����ϴ�.<br>���� ȭ������ �̵��Ͽ� �α��� �Ͻñ� �ٶ��ϴ�.");
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
			String msg = "���̵� �Ǵ� �н����尡 ��ġ���� �ʽ��ϴ�.";
			ModelAndView mav = new ModelAndView(".member.member");
			mav.addObject("message",msg);
			return mav;
		}
		
		SessionInfo info = new SessionInfo();
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());

		//���ǿ� �α��� ���� ����
		session.setAttribute("member", info);
		
		
		return new ModelAndView("redirect:/");
	}
}
