package com.project.cash;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("myCashController")
public class MyCashController {
	 
	@RequestMapping(value="/cash/myCash",method=RequestMethod.GET)
	public ModelAndView method() {
		ModelAndView mav = new ModelAndView(".cash.myCash");
		return mav;
	}
}
