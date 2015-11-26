package com.project.member;

import java.io.File;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;
import com.project.member.Photo;





@Controller("memberController")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private PhotoService pservice;

	
	@RequestMapping(value="/member/member", method=RequestMethod.GET)
	public ModelAndView memberForm() throws	Exception{
		
		ModelAndView mav = new ModelAndView(".member.member");

		return mav;
	}

	
	
	@RequestMapping(value="/member/member",method=RequestMethod.POST)
	public ModelAndView memberSubmit(
			HttpSession session,
			Photo pdto,
			Member dto
			) throws Exception{
		SessionInfo info = new SessionInfo();
		session.setAttribute("member", info);
		
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"photo";
	
	
		int result = service.insertMember(dto);

		pdto.setUserId(dto.getUserId());
	
		pservice.insertPhoto(pdto, path);
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
	
		Photo pdto = pservice.readPhoto(dto.getUserId());

		//���ǿ� �α��� ���� ����
		session.setAttribute("member", info);
		session.setAttribute("pdto", pdto);
		
		return new ModelAndView("redirect:/");
	}
	
	
	@RequestMapping(value="/member/logout")
	public String logout(HttpSession session) 
			throws Exception{
		//���ǿ� ����� ���� �����
		session.removeAttribute("member");
		//���� �ʱ�ȭ
		session.invalidate();
		
		return "redirect:/";
	}
}
