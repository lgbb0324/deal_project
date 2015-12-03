package com.project.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.dao.CommonDAO;

@Service("notice.noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertNotice(Notice dto, String mode) {
		int result = 0;
		
		try {
			result = dao.insertData("notice.insertNotice", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}

}
