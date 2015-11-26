package com.project.letter;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.SessionInfo;

import net.sf.json.JSONObject;

@Controller("letter.letterController")
public class LetterController {

	@Autowired
	private LetterService service;
	
	
	//페이징처리시 사용할 것
	/*@Autowired
	private MyUtil myUtil;*/
	
	
	//쪽지 보내기폼은 모달창으로 인식함--바로 post로 보냄????--질문
	@RequestMapping(value="/letter/send", method=RequestMethod.POST)
	public void sendSubmit(HttpServletResponse resp, HttpSession session, Letter dto) throws Exception{
	
		// 쪽지 보내기
		SessionInfo info=(SessionInfo)session.getAttribute("member");
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
	
				dto.setSendUserId(info.getUserId());
				dto.setReceiveUserId(info.getUserId());
			
				service.insertLetter(dto);
			
			state="true";
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		JSONObject job = new JSONObject();
		job.put("isLogin", "true");
		job.put("state", state);
		
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(job.toString());
	}
	
	// 받은 쪽지 리스트/ 보낸쪽지 리스트 -- 동시에 가져오기
	@RequestMapping(value="/letter/list")
	public ModelAndView list(HttpServletResponse resp, HttpSession session,
			Letter dto
		
			) throws Exception{
		
		//보낸쪽지리스트
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		

		ModelAndView mav=new  ModelAndView(".note.list");

	
			
			List<Letter> list = null;
			List<Letter> list2 = null;
			
		list=service.listSend(info.getUserId());
		list2=service.listReceive(info.getUserId());

			mav.addObject("list", list);
			mav.addObject("list", list2);

		
			return  mav;
	
	}
}
