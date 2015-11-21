package com.project.deal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("dealControllaer")
public class DealController {
	 
	@RequestMapping(value="/deal/article",method=RequestMethod.GET)
	public ModelAndView articleInform() throws Exception {
		ModelAndView mav=new ModelAndView(".deal.article");
		
		return mav;
	}
	
	
	@RequestMapping(value="/deal/created",method=RequestMethod.GET)
	public ModelAndView articleCreated() throws Exception {
		ModelAndView mav=new ModelAndView(".deal.created");
		
		return mav;
	}
	
}
