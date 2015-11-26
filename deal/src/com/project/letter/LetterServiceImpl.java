package com.project.letter;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.dao.CommonDAO;

@Service("letter.letterService")
public class LetterServiceImpl implements LetterService{
	@Autowired
	CommonDAO dao;
	
	@Override
	public List<Letter> listFriend(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertLetter(Letter dto) {
		int result=0;
		System.out.println("들어오냐1111");
		try {
			result=dao.insertData("letter.insertLetter", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
		
		
	}

	@Override
	public int dataCountReceive(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Letter> listReceive(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int dataCountSend(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Letter> listSend(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter readReceive(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter preReadReceive(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter nextReadReceive(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter readSend(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter preReadSend(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter nextReadSend(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter readReplReceive(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateIdentifyDay(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteLetter(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int newLetterCount(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
