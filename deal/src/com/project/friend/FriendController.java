package com.project.friend;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

@Controller("friendController")
public class FriendController {
	@Autowired
	private FriendService service;
		 
	@RequestMapping(value="/friend/list")
	public ModelAndView list(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		List<Friend> list=service.friendList(info.getUserId());

		ModelAndView mav = new ModelAndView(".friend.list");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/friend/followList")
	public ModelAndView followList(HttpSession session, Friend dto, @RequestParam(value="userId") String userId) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		service.followFriend(userId, dto);
			 
		return new ModelAndView("redirect:friend/list");
	}
	
}
