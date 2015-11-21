package com.project.category;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("categoryController")
public class CategoryController {
	 
	@RequestMapping(value="/deal/manCloth",method=RequestMethod.GET)
	public ModelAndView manClothForm() throws Exception {
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		
		return mav;
	}
	
}
