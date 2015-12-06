package com.project.deal;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.project.member.SessionInfo;


import net.sf.json.JSONObject;

@Controller("deal.Controller")
public class DealController {
	
	@Autowired
	private DealService service;
	 
	@RequestMapping(value="/deal/article",method=RequestMethod.GET)
	public ModelAndView articleInform(
			HttpSession session,
			@RequestParam(value="num") int num
			
			) throws Exception {
		ModelAndView mav=new ModelAndView(".deal.article");
		Deal dto = service.readDeal(num);
		
		String[] image = new String[11];
		int imageCount=0;
		int imageStart=0;
		int imageEnd=0;
		
		String content=dto.getContent();
		char[] charContent = content.toCharArray();
		String[] stringContent = new String[dto.getContent().length()];

		for(int i= 0;i<dto.getContent().length();i++){
		stringContent[i]=String.valueOf(charContent[i]);
		}
		
		System.out.println();
		for(int i= 0;i<dto.getContent().length();i++){
		
		if(stringContent[i].equals("<")&&stringContent[i+1].equals("i")&&stringContent[i+2].equals("m")&&stringContent[i+3].equals("g")){
		/*System.out.println("이미지시작"+i);*/
		imageStart=i;
		}
		
		if(stringContent[i].equals("w")&&stringContent[i+1].equals("i")&&stringContent[i+2].equals("d")&&stringContent[i+3].equals("t")){
		/*System.out.println("이미지끝"+(i+11));*/
		imageEnd=i+12;
		image[imageCount]=dto.getContent().substring(imageStart, imageEnd);
				imageStart=0;
				imageEnd=0;
				imageCount++;
		}

	}

	


		
		
		mav.addObject("dealArticle", dto);
		mav.addObject("dealPhoto", image);
		
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

		dto.setStart_date(start_date.substring(0, 10));
		dto.setEnd_date(end_date.substring(0, 10));
		
/*		System.out.println(dto.getSubject());
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
		System.out.println(dto.getTag2());*/
		
		
		
		String[] image = new String[11];
		int imageCount=0;
		int imageStart=0;
		int imageEnd=0;
		
		String content=dto.getContent();
		char[] charContent = content.toCharArray();
		String[] stringContent = new String[dto.getContent().length()];

		for(int i= 0;i<dto.getContent().length();i++){
		stringContent[i]=String.valueOf(charContent[i]);
		}
		
		System.out.println();
		for(int i= 0;i<dto.getContent().length();i++){
		
		if(stringContent[i].equals("<")&&stringContent[i+1].equals("i")&&stringContent[i+2].equals("m")&&stringContent[i+3].equals("g")){
		/*System.out.println("이미지시작"+i);*/
		imageStart=i;
		}
		
		if(stringContent[i].equals("w")&&stringContent[i+1].equals("i")&&stringContent[i+2].equals("d")&&stringContent[i+3].equals("t")){
		/*System.out.println("이미지끝"+(i+11));*/
		imageEnd=i+12;
		image[imageCount]=dto.getContent().substring(imageStart, imageEnd);
		if(imageCount==0)dto.setImage1(image[imageCount]);if(imageCount==1)dto.setImage2(image[imageCount]);if(imageCount==2)dto.setImage3(image[imageCount]);if(imageCount==3)dto.setImage4(image[imageCount]);if(imageCount==4)dto.setImage5(image[imageCount]);
		if(imageCount==5)dto.setImage6(image[imageCount]);if(imageCount==6)dto.setImage7(image[imageCount]);if(imageCount==7)dto.setImage8(image[imageCount]);if(imageCount==8)dto.setImage9(image[imageCount]);if(imageCount==9)dto.setImage10(image[imageCount]);
		
				imageStart=0;
				imageEnd=0;
				imageCount++;
		}
		}
		
		
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
	
	
	// 댓글 및 리플별 답글 추가
		@RequestMapping(value="/deal/dealReplyCreated",method=RequestMethod.POST)
		public void replyCreated(
				HttpServletResponse resp,
				HttpSession session,
				DealReply dto) throws Exception {
		
			SessionInfo info=(SessionInfo) session.getAttribute("member");

			String state="true";
			if(info==null) { // 로그인이 되지 않는 경우
				state="loginFail";
			} else {
				dto.setUserId(info.getUserId());
				dto.setUserName(info.getUserName());
				int result=service.insertDealReply(dto);
				if(result==0)
					state="false";
			}
			
			// 작업 결과를 json으로 전송
			JSONObject job=new JSONObject();
			job.put("state", state);
			
			resp.setContentType("text/html;charset=utf-8");
			PrintWriter out=resp.getWriter();
			out.print(job.toString());
		}
	
		
		@RequestMapping(value="/deal/mainDealreplyList")
		public ModelAndView replyList(
				@RequestParam(value="dealNum") int dealNum
				) throws Exception {
			
		
			
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("dealNum", dealNum);
			

			List<DealReply> replyList=service.dealReplyList(map);
			
			// 엔터를 <br>
			Iterator<DealReply> it=replyList.iterator();
			int listNum, n=0;
			while(it.hasNext()) {
				DealReply dto=it.next();
				dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
				n++;
			}
			
			// 페이징처리(인수2개 짜리 js로 처리)

			
			ModelAndView mav=new ModelAndView("main/mainReply");

			// jsp로 넘길 데이터
			mav.addObject("replyList", replyList);

			
			return mav;
		}
	
		
		@RequestMapping(value="/deal/dealLike",method=RequestMethod.POST)
		public void replyLike(
				HttpServletResponse resp,
				HttpSession session,
				DealLike dto) throws Exception {
		
			SessionInfo info=(SessionInfo) session.getAttribute("member");
			
			String state="true";
			if(info==null) { // 로그인이 되지 않는 경우
				state="loginFail";
			} else {
				dto.setUserId(info.getUserId());
				int result=service.insertDealLike(dto);
				if(result==0)
					state="false";
			}
			
			// 작업 결과를 json으로 전송
			JSONObject job=new JSONObject();
			job.put("state", state);
			
			resp.setContentType("text/html;charset=utf-8");
			PrintWriter out=resp.getWriter();
			out.print(job.toString());
		}
	
	
}
