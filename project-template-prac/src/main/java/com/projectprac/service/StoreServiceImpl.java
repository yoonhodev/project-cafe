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