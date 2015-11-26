package com.project.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.dao.CommonDAO;

@Service("qna.qnaService")
public class QnaServiceImpl implements QnaService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertQna(Qna dto) {
		int result=0;
		try {
			result=dao.insertData("qna.insertQna", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

}
