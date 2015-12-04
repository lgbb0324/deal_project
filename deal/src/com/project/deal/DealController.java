package com.project.deal;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

@Controller("deal.Controller")
public class DealController {
	
	@Autowired
	private DealService service;
	 
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
	
	@RequestMapping(value="/deal/created", method=RequestMethod.POST)
	public ModelAndView createdSubmit(
			HttpSession session,
			Deal dto,
			@RequestParam(value="start_date", defaultValue="1") String start_date,
			@RequestParam(value="end_date", defaultValue="1") String end_date
			) throws Exception {
		
		System.out.println(start_date);
		System.out.println(end_date);
		
		
		dto.setStart_date(start_date.substring(0, 10));
		dto.setEnd_date(end_date.substring(0, 10));
		
		System.out.println(dto.getSubject());
		System.out.println(dto.getDiscountRate());
		System.out.println(dto.getInstantPrice());
		System.out.println(dto.getPeople());
		System.out.println(dto.getApproveCheck());
		System.out.println(dto.getCategory1());
		System.out.println(dto.getCategory2());
		System.out.println(dto.getStart_date());
		System.out.println(dto.getEnd_date());
		System.out.println(dto.getContent());
		System.out.println(dto.getRegion1());
		System.out.println(dto.getRegion2());
		System.out.println(dto.getTag1());
		System.out.println(dto.getTag2());
		
		
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("redirect:/member/login");
		}
		
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"bbs";
		
		dto.setUserId(info.getUserId());
		dto.setUserName(info.getUserName());

		service.insertDeal(dto, path);
		
		return new ModelAndView("redirect:/main.do");
	}
	
	
	
	
	
	
}
