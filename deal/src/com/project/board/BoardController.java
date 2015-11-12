package com.project.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("boardController")
public class BoardController {

	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("/board/list");
		return mav;
	}
	
	@RequestMapping(value="/board/created", method=RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mav = new ModelAndView("/board/created");
		return mav;
	}
	
	@RequestMapping(value="/board/article", method=RequestMethod.GET)
	public ModelAndView article() {
		ModelAndView mav = new ModelAndView("/board/article");
		return mav;
	}
}