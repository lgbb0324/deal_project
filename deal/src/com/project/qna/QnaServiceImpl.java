package com.project.qna;

import java.util.List;
import java.util.Map;

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
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("qna.dataCount",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
	@Override
	public List<Qna> listQna(Map<String, Object> map) {
		List<Qna> list=null;
		try {
			list=dao.getListData("qna.listQna",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
}
