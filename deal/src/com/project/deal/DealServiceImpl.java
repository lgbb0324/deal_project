package com.project.deal;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.FileManager;
import com.project.common.dao.CommonDAO;




@Service("deal.dealService")
public class DealServiceImpl implements DealService{
	@Autowired
	private CommonDAO  dao;
	@Autowired
	private FileManager fileManager;
	
	@Override
	public int insertDeal(Deal dto, String path) {
		int result=0;
		try{
			if(dto.getUpload()!=null && ! dto.getUpload().isEmpty()) {
				String saveFilename=fileManager.doFileUpload(dto.getUpload(), path);
				dto.setSaveFilename(saveFilename);
				dto.setOriginalFilename(dto.getUpload().getOriginalFilename());
			}
			result=dao.insertData("deal.insertDeal", dto);
		} catch(Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public Deal readDeal(int num) {
		Deal dto=null;
		try {
			dto=dao.getReadData("deal.readDeal", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public int insertDealReply(DealReply dto) {
		int result=0;
		try{
			
			result=dao.insertData("deal.insertDealReply", dto);
		} catch(Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<DealReply> dealReplyList(Map<String, Object> map) {
		List<DealReply> list=null;
		try {
			list=dao.getListData("deal.listReply", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public int insertDealLike(DealLike dto) {
		int result=0;
		try {
			result=dao.insertData("deal.insertDealLike", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	


}
