package com.project.deal;

import java.util.List;
import java.util.Map;



public interface DealService {
	public int insertDeal(Deal dto, String path);
	public Deal readDeal(int num);
	public int insertDealReply(DealReply dto);
	public List<DealReply> dealReplyList(Map<String, Object> map);
}
