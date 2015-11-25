package com.project.qna;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

@Controller("qnaController")
public class QnaController {
	
	/*@Autowired
	private QnaService service;

	@RequestMapping(value="/qna/created", method=RequestMethod.GET)
	public ModelAndView qnaForm() throws Exception{
		
		ModelAndView mav = new ModelAndView(".qna.created");
		mav.addObject("mode", "created");
		return mav;
	}
	
	@RequestMapping(value="/qna/created", method=RequestMethod.POST)
	public ModelAndView qnaSubmit(HttpSession session,Qna qna) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null)
			return new ModelAndView("redirect:/member/login");
		
		qna.setUserId(info.getUserId());
		service.insertQna(qna);
		
		return new ModelAndView("redirect:/qna/list");
	}*/
	
	@RequestMapping(value="/qna/list", method=RequestMethod.GET)
	public ModelAndView list() throws Exception{
		
		ModelAndView mav = new ModelAndView(".qna.list");
		mav.addObject("mode", "created");
		return mav;
	}

}