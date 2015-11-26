package com.project.friend;

import java.util.List;
import java.util.Map;

public interface FriendService {
	public int insertFriend(Friend dto);
	
	public List<Friend> friendAllList(Map<String, Object> map); //모든 사람들 리스트
	public List<Friend> friendSearchList(Map<String, Object> map); //친구 찾기 했을때리스트
	public List<Friend> friendList(Map<String, Object> map); //내친구리스트
		
	public int deleteFriend(int num);
	public int deleteFriendList(List<Integer> numList);
	
	public int dataCount(Map<String, Object> map);


	public Friend readNotice(int num);

	public List<Friend> friendList(String userId);

}
