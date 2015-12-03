package com.project.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.MainService;
import com.project.common.FileManager;
import com.project.common.MyUtil;
import com.project.deal.Deal;



@Controller("mainController")
@RequestMapping(value="/main")
public class MainController {
	
	@Autowired
	private MainService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;
	 
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView method(
			HttpServletRequest req
			) {
		 String cp = req.getContextPath();
		 Map<String, Object> map = new HashMap<String, Object>();
		 
		 List<Deal> list = service.listDeal(map);
		 
		 
		ModelAndView mav = new ModelAndView(".mainLayout");
	
		return mav;
	}
	
	
	
}
