package com.project.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("qnaController")
public class QnaController {

	@RequestMapping(value="/qna/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("/qna/list");
		return mav;
	}
	
	@RequestMapping(value="/qna/created", method=RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mav = new ModelAndView("/qna/created");
		return mav;
	}
	
	@RequestMapping(value="/qna/article", method=RequestMethod.GET)
	public ModelAndView article() {
		ModelAndView mav = new ModelAndView("/qna/article");
		return mav;
	}

}