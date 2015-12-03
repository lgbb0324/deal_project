package com.project.notice;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

@Controller("notice.noticeController")
public class NoticeController {

	private NoticeService service;

	@RequestMapping(value="/notice/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView(".notice.list");
		return mav;
	}
	

	
	
	
	@RequestMapping(value="/notice/created", method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session)throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView(".member.login");
		}
		
		ModelAndView mav = new ModelAndView(".notice.created");
		mav.addObject("mode", "created");
		return mav;
	}
	
	@RequestMapping(value = "/notice/created", method=RequestMethod.POST)
	public String createdSubmit(HttpSession session, Notice dto) throws Exception{
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		if(info==null){
			return "redirect:/member/login.do";
		}
		
		dto.setUserId(info.getUserId());
		service.insertNotice(dto, "created");
		return "redirect:/notice/list.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/notice/article", method=RequestMethod.GET)
	public ModelAndView article() {
		ModelAndView mav = new ModelAndView(".notice.article");
		return mav;
	}
}