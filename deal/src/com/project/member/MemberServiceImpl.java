package com.project.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.dao.CommonDAO;



@Service("member.memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertMember(Member dto) {
		int result = 0;
		try {
			//email
			
			
			result = dao.insertData("member.insertMember", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
		return result;
	}

	@Override
	public int updateMember(Member dto) {
		int result = 0;
		
			/*
			result = dao.updateData("member.updateMember", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;*/
		return result;
	}

	@Override
	public int deleteMember(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member readMember(String userId) {
		Member dto = null;
		/*
		try {
			dto=dao.getReadData("member.readMember",userId);
			if(dto!=null){
				if(dto.getEmail()!=null){
					String [] ss = dto.getEmail().split("@");
					if(ss.length==2){
						dto.setEmail1(ss[0]);
						dto.setEmail2(ss[1]);
					}
				}
				if(dto.getTel()!=null){
					String [] ss = dto.getTel().split("-");
					if(ss.length==3){
						dto.setTel1(ss[0]);
						dto.setTel2(ss[1]);
						dto.setTel3(ss[2]);
					}
				}
				
				
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}*/
		return dto;//값이 안들어감...
	}
	
	

}
