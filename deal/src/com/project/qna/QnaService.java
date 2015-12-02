package com.project.qna;

import java.util.List;
import java.util.Map;

public interface QnaService {
	public int insertQna(Qna dto);
	public int dataCount(Map<String, Object> map);
	public List<Qna> listQna(Map<String, Object> map);
	
	public int insertReply(Qna dto);
	public List<Qna> listReply(int num);
}
