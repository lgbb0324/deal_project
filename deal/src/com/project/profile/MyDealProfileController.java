package com.project.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("myDealProfileController")
public class MyDealProfileController {
	 
	@RequestMapping(value="/profile/myDealProfile",method=RequestMethod.GET)
	public ModelAndView method() {
		ModelAndView mav = new ModelAndView("/profile/myDealProfile");
		return mav;
	}
}
