package com.project.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("mainController")
@RequestMapping(value="/main")
public class MainController {
	 
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView method() {
		ModelAndView mav = new ModelAndView("/main/main");
		System.out.println("±‚ª›æ∆ æ»≥Á");
		System.out.println("±Ë¿ÁºÆ");
		return mav;
	}
}
