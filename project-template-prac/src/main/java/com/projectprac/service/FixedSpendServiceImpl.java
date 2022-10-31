package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.FixedSpendMapper;

import lombok.Setter;

public class FixedSpendServiceImpl implements FixedSpendService {

	@Setter
	private FixedSpendMapper fixedSpendMapper;
	
	
	@Override
	public void insertCost(FixedSpendDto spendDto) {
		fixedSpendMapper.insertCost(spendDto);
	}


	@Override
	public List<StoreDto> showAllStore() {
		List<StoreDto> stores = fixedSpendMapper.selectAllStore();
		return stores;
	}

}
