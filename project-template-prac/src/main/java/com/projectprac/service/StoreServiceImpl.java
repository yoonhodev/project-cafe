package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.StoreMapper;


import lombok.Setter;

public class StoreServiceImpl implements StoreService{

	@Setter
	private StoreMapper storeMapper;

	

	@Override
	public List<StoreDto> selectStoreInfo(StoreDto storeDto) {
		
		List<StoreDto> stores = storeMapper.selectStoreByStoreId(storeDto);
		
		return stores;
	}



	@Override
	public void insertStoreIntro(StoreDto storeDto) {
					
		storeMapper.insertStoreIntro(storeDto);
		
		
		
	}



	@Override
	public void changeToOpen(int storeId) {
		
		storeMapper.changeToOpen(storeId);
		
	}



	@Override
	public void changeToClose(int storeId) {
		
		storeMapper.changeToClose(storeId);
		
	}





	/*
	 * @Override public List<StoreDto> findStoreByStoreId(StoreDto storeDto) {
	 * 
	 * List<StoreDto> stores = storeMapper.selectStoreByStoreId(storeDto);
	 * 
	 * return stores;
	 * 
	 * }
	 */



}
