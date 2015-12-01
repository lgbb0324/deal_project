package com.project.friend;

import java.util.List;
import java.util.Map;

public interface FriendService {	
	public List<Friend> followFriend(String userId, Friend dto); //내친구
	public List<Friend> friendSearchList(Map<String, Object> map); //친구 찾기 했을때리스트
		
	public int deleteFriend(int num);
	public int deleteFriendList(List<Integer> numList);

	public List<Friend> friendList(String userId); //모든 회원

}
