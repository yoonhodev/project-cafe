package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDto;
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

	@Override
	public List<OrderDto> selectOrderListByStoreId(int storeId) {
		
		List<OrderDto> orders = adminCheckOrderMapper.selectOrderListByStoreId(storeId);
		
		return orders;
	}
	
	
}
