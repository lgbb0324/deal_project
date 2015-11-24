package com.project.member;

public interface MemberService {
	public int insertMember(Member dto);
	public int updateMember(Member dto);
	public int deleteMember(String userId);
	public Member readMember(String userId);

}
