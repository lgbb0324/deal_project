package com.project.deal;



public interface DealService {
	public int insertDeal(Deal dto, String path);
	public Deal readDeal(int num);
}
