package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.storeDto;
import com.projectprac.mapper.storeMapper;

import lombok.Setter;

public class storeServicempl implements storeService{

	@Setter
	private storeMapper storeMapper;

	@Override
	public List<storeDto> selectStoreInfo(int storeId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*
	 * @Override public void selectStoreInfo(storeDto storedto) {
	 * storeMapper.selectStore(storedto);
	 * 
	 * }
	 */

	/*
	 * @Override public storeDto selectStoreInfo(int storeId) {
	 * 
	 * 
	 * storeDto storedte = storeMapper.selectStore(storeId);
	 * 
	 * return ;
	 * 
	 * }
	 */

}
