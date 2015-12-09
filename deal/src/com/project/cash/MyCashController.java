package com.project.cash;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

import net.sf.json.JSONObject;
import sun.print.resources.serviceui;

@Controller("myCashController")
public class MyCashController {
	 
	@Autowired
	private CashService service;
	
	@RequestMapping(value="/cash/myCash",method=RequestMethod.GET)
	public ModelAndView method() {
		ModelAndView mav = new ModelAndView(".cash.myCash");
		return mav;
	}
	

	@RequestMapping(value="/cash/insertCash", method=RequestMethod.POST)
public void insertCash(HttpServletResponse resp, HttpSession session, Cash dto) throws Exception{
	
	// 캐시 넣기

	SessionInfo info = (SessionInfo)session.getAttribute("member");
	if(info==null) {
		JSONObject job=new JSONObject();
		job.put("isLogin", "false");
		
		// 로기인이 되지 않은 상태를 json으로 전송
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(job.toString());
		return;
}
	
		String state = "false";
		try {
			dto.setUserId(info.getUserId());
			System.out.println(dto.getCash());
			
			service.insertCash(dto);
			state="true";
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		JSONObject job = new JSONObject();
		job.put("jsLogin", "true");
		job.put("state", state);

		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(job.toString());
}
}
