package com.project.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("noticeController")
public class NoticeController {

	@RequestMapping(value="/notice/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView(".notice.list");
		return mav;
	}
	
	@RequestMapping(value="/notice/created", method=RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mav = new ModelAndView(".notice.created");
		return mav;
	}
	
	@RequestMapping(value="/notice/article", method=RequestMethod.GET)
	public ModelAndView article() {
		ModelAndView mav = new ModelAndView(".notice.article");
		return mav;
	}
}