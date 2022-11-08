package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.RawOrderDto;
import com.projectprac.mapper.RawOrderMapper;

import lombok.Setter;

public class RawOrderServiceImpl implements RawOrderService {

	@Setter
	private RawOrderMapper rawOrderMapper;
	
	@Override
	public List<RawOrderDto> showAllRaws() {
		List<RawOrderDto> rawData = rawOrderMapper.selectAllRaws();
		
		return rawData;
	}

}
