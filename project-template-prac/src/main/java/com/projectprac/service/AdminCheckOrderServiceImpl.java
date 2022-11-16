package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.AdminCheckOrderMapper;

import lombok.Setter;

public class AdminCheckOrderServiceImpl implements AdminCheckOrderService {

	@Setter 
	private AdminCheckOrderMapper adminCheckOrderMapper;

	@Override
	public List<StoreDto> showAllStores() {
		List<StoreDto> stores = adminCheckOrderMapper.selectAllStores();
		
		return stores;
	}
	
	
}
