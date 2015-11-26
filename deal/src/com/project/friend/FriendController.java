package com.project.friend;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.common.MyUtil;
import com.project.member.SessionInfo;

@Controller("friendController")
public class FriendController {
	@Autowired
	private FriendService service;
	
	@Autowired
	private MyUtil myUtil;
		 
	@RequestMapping(value="/friend/list")
	public ModelAndView list(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		List<Friend> list=service.friendList(info.getUserId());

		ModelAndView mav = new ModelAndView(".friend.list");
		mav.addObject("list", list);
		return mav;
	}
}
