package com.project.notice;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.common.dao.CommonDAO;

public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertNotice(Notice dto, String mode) {
		int result = 0;
		
		try {
			int maxNum = dao.getIntValue("notice.maxNum");
			dto.setNum(maxNum+1);
			result = dao.insertData("notice.insertNotice", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}

}
