package com.projectprac.service;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.mapper.FixedSpendMapper;

import lombok.Setter;

public class FixedSpendServiceImpl implements FixedSpendService {

	@Setter
	private FixedSpendMapper fixedSpendMapper;
	
	
	@Override
	public void insertCost(FixedSpendDto spendDto) {
		
		fixedSpendMapper.insertCost(spendDto);
		
	}

}
