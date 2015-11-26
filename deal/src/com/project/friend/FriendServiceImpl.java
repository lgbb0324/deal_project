package com.project.friend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.FileManager;
import com.project.common.dao.CommonDAO;

@Service("friend.friendService")
public class FriendServiceImpl implements FriendService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertFriend(Friend dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Friend> friendAllList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Friend> friendSearchList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Friend> friendList(String userId) { //葛电 模备府胶飘
		List<Friend> list=null;
		try {
			list=dao.getListData("friend.friendList", userId);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public int deleteFriend(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFriendList(List<Integer> numList) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Friend readNotice(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Friend> friendList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
