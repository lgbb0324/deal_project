package com.project.note;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("noteController")
public class NoteController {
	 
	@RequestMapping(value="/note/list",method=RequestMethod.GET)
	public ModelAndView method() {
		ModelAndView mav = new ModelAndView(".note.list");
		return mav;
	}
}
