package com.project.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	public int insertBoard(Board dto, String mode);
	public List<Board> listBoard(Map<String, Object>map);
	public int dataCount(Map<String, Object>map);
	
	public int updateHitCount(int num);
	
	
	public Board readBoard(int num);
	public Board nextReadBoard(Map<String, Object> map);
	
	
	public int updateBoard(Board dto);
	public int deleteBoard(int num);
}
