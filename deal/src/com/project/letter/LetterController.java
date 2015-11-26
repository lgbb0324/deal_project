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
	
	
	//����¡ó���� ����� ��
	/*@Autowired
	private MyUtil myUtil;*/
	
	
	//���� ���������� ���â���� �ν���--�ٷ� post�� ����????--����
	@RequestMapping(value="/letter/send", method=RequestMethod.POST)
	public void sendSubmit(HttpServletResponse resp, HttpSession session, Letter dto) throws Exception{
	
		// ���� ������
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			JSONObject job=new JSONObject();
			job.put("isLogin", "false");
			
			// �α����� ���� ���� ���¸� json���� ����
			
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
	
	// ���� ���� ����Ʈ/ �������� ����Ʈ -- ���ÿ� ��������
	@RequestMapping(value="/letter/list")
	public ModelAndView list(HttpServletResponse resp, HttpSession session,
			Letter dto
		
			) throws Exception{
		
		//������������Ʈ
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