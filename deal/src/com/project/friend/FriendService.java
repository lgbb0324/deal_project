package com.project.friend;

import java.util.List;
import java.util.Map;

public interface FriendService {
	public int insertFriend(Friend dto);
	
	public List<Friend> friendAllList(Map<String, Object> map); //��� ����� ����Ʈ
	public List<Friend> friendSearchList(Map<String, Object> map); //ģ�� ã�� ����������Ʈ
	public List<Friend> friendList(Map<String, Object> map); //��ģ������Ʈ
		
	public int deleteFriend(int num);
	public int deleteFriendList(List<Integer> numList);
	
	public int dataCount(Map<String, Object> map);


	public Friend readNotice(int num);

	public List<Friend> friendList(String userId);

}
