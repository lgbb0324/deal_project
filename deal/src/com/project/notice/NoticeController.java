package com.project.notice;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
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

import com.project.board.Board;
import com.project.common.MyUtil;
import com.project.member.SessionInfo;

@Controller("notice.noticeController")
public class NoticeController {
	@Autowired
	private NoticeService service;
	@Autowired
	private MyUtil myUtil;

	@RequestMapping(value="/notice/list")
	public ModelAndView list(HttpServletRequest req, 
			@RequestParam(value = "pageNum", defaultValue = "1") int current_page,
			@RequestParam(value = "searchKey", defaultValue = "subject") String searchKey,
			@RequestParam(value = "searchValue", defaultValue = "") String searchValue) throws Exception {
		
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
		
		List<Notice> noticeList = null;
		if(current_page==1){
			noticeList = service.listNoticeTop();
		}
		
		int start = (current_page - 1) * numPerPage;
		map.put("start", start);
		
		
		
		List<Notice> list = service.listNotice(map);
		
		//글번호만들기
		int listNum, n = 0;
	
		Iterator<Notice>it = list.iterator();
		while (it.hasNext()) {
			Notice data = it.next();
			listNum = dataCount - (start + n - 1);
			data.setListNum(listNum);

			data.setCreated(data.getCreated().substring(0, 10));
			n++;
		}

		String params = "";
		String urlList = cp + "/notice/list.do";
		String urlArticle = cp + "/notice/article.do?pageNum=" + current_page;

		if (searchValue.length() != 0) {
			params = "searchKey=" + searchKey
					+ "&searchValue="
					+ URLEncoder.encode(searchValue, "UTF-8");
		}

		if (params.length() != 0) {
			urlList += "?" + params;
			urlArticle += "&" + params;
		}

		ModelAndView mav=new ModelAndView(".notice.list");
		mav.addObject("noticeList", noticeList);
		mav.addObject("list", list);
		mav.addObject("dataCount", dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));

		return mav;
	
	
	
	
	}
	
	
	
	

	
	
	@RequestMapping(value="/notice/created", method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session, Notice dto)throws Exception {
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView(".member.login");
		}
		if(!info.getUserId().equals("admin")){
			return new ModelAndView("redirect:/notice/list");
		}
		
		ModelAndView mav = new ModelAndView(".notice.created");
		mav.addObject("mode", "created");

		return mav;
	}
	
	@RequestMapping(value = "/notice/created", method=RequestMethod.POST)
	public String createdSubmit(HttpSession session, Notice dto) throws Exception{
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		if(info==null){
			return "redirect:/member/login.do";
		}
		if(!info.getUserId().equals("admin")){
			return "redirect:/notice/list";
		}
		
		
		dto.setUserId(info.getUserId());
		service.insertNotice(dto, "created");
		return "redirect:/notice/list.do";
	}
	
	
	
	

	
	
	
	
	@RequestMapping(value="/notice/article", method=RequestMethod.GET)
	public ModelAndView article(HttpSession session,
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam(defaultValue="subject") String searchKey,
			@RequestParam(defaultValue="") String searchValue)throws Exception {
		
		SessionInfo info=
				(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView(".member.login");
		}
		
		service.updateHitCount(num);
		
		Notice dto = service.readNotice(num);
		if(dto==null) {
			new ModelAndView("redirect:/notice/list.do?pageNum="+pageNum);
		}
		
		dto.setContent(
				dto.getContent().replaceAll("\n", "<br>"));
		//이전글, 다음글
		searchValue=URLDecoder.decode(searchValue, "UTF-8");
		
		
		Map<String, Object> map=new HashMap<>();
		
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		
		//Notice nextReadDto = service.nextReadBoard(map);
		
		String params="pageNum="+pageNum;
		if(searchValue.length()!=0) {
			params+="&searchKey="+searchKey;
			params+="&searchValue="+
			    URLEncoder.encode(searchValue, "utf-8");
		}
		
		
		ModelAndView mav = new ModelAndView(".notice.article");
		mav.addObject("dto", dto);
		/*mav.addObject("nextReadDto", nextReadDto);*/
		mav.addObject("pageNum", pageNum);
		mav.addObject("params", params);
		
		
		return mav;
		
	}
	
	
	
	
	
	@RequestMapping(value="/notice/delete")
	public String delete(
			HttpSession session,
			@RequestParam int num,
			@RequestParam String pageNum)throws Exception{
		
		SessionInfo info=
				(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login.do";
		}
		
		if(info.getUserId().equals("admin"))
				service.deleteNotice(num);

		return "redirect:/notice/list.do?pageNum="+pageNum;
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/notice/update", method=RequestMethod.GET)
	public ModelAndView updateForm(HttpSession session,
			@RequestParam int num,
			@RequestParam String pageNum) throws Exception{
		
		
		SessionInfo info=
				(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView(
					"redirect:/member/login.do");
		}
		
		Notice dto = service.readNotice(num);
		if(dto==null || ! dto.getUserId().equals(info.getUserId())) {
			return new ModelAndView(
					"redirect:/notice/list.do?pageNum="+pageNum);
		}
		
		ModelAndView mav=
				new ModelAndView(".notice.created");
		mav.addObject("mode", "update");
		mav.addObject("dto", dto);
		mav.addObject("pageNum", pageNum);
		return mav;

	}
	
	
	@RequestMapping(value="/notice/update",
			method=RequestMethod.POST)
	public String updateSubmit(
			HttpSession session,
			Notice dto,
			@RequestParam String pageNum
			) throws Exception {
		
		SessionInfo info=
				(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login.do";
		}
		
		service.updateNotice(dto);
		
		// return "redirect:/board/list.do?pageNum="+pageNum;
		return "redirect:/notice/article.do?num="
		         +dto.getNum()+"&pageNum="+pageNum;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}