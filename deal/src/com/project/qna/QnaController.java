package com.project.qna;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.common.MyUtil;
import com.project.member.SessionInfo;

@Controller("qna.qnaController")
public class QnaController {
	
	@Autowired
	private QnaService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value="/qna/list")
	public ModelAndView list(HttpServletRequest req,
			@RequestParam(value = "pageNum", defaultValue = "1") int current_page,
			@RequestParam(value = "searchKey", defaultValue = "subject") String searchKey,
			@RequestParam(value = "searchValue", defaultValue = "") String searchValue) throws Exception{
		
		String cp = req.getContextPath();

		int numPerPage = 10;
		int total_page;
		int dataCount;
		
		if (req.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		
		dataCount = service.dataCount(map);
		total_page = myUtil.getPageCount(numPerPage, dataCount);
		
		if (total_page < current_page)
			current_page = total_page;
		
		int start = (current_page - 1) * numPerPage;
		
		map.put("start", start);
		
		List<Qna> list=service.listQna(map);
		String params = "";
		String urlList = cp + "/board/list";
		
		if (searchValue.length() != 0) {
			params = "searchKey=" + searchKey + "&searchValue="
					+ URLEncoder.encode(searchValue, "UTF-8");
		}

		if (params.length() != 0) {
			urlList += "?" + params;
		}
		
		ModelAndView mav=new ModelAndView(".qna.list");
		mav.addObject("list", list);
		mav.addObject("dataCount", dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("pageIndexList",myUtil.pageIndexList(current_page, total_page, urlList));

		return mav;
	}
	@RequestMapping(value="/qna/created", method=RequestMethod.GET)
	public ModelAndView qnaForm(HttpSession session) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null)
			return new ModelAndView("redirect:/main.do");
		
		ModelAndView mav = new ModelAndView(".qna.created");
		mav.addObject("mode", "created");
		return mav;
	}
	
	@RequestMapping(value="/qna/created", method=RequestMethod.POST)
	public ModelAndView qnaSubmit(HttpSession session,Qna qna) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null)
			return new ModelAndView("redirect:/main.do");
		
		qna.setUserId(info.getUserId());
		service.insertQna(qna);
		
		return new ModelAndView("redirect:/qna/list.do");
	}
	

}