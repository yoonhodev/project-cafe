package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.ProductDto;
import com.projectprac.mapper.KioskMapper;

import lombok.Setter;

public class KioskServiceImpl implements KioskService {

	@Setter
	private KioskMapper kioskMapper;

	@Override
	public List<ProductDto> showKioskMenuImg() {

		List<ProductDto> products = kioskMapper.showMenu();
		return products;
	
	}

	@Override
	public List<ProductDto> showKioskMenuImg2() {
		List<ProductDto> products2 = kioskMapper.showMenu2();
		return products2;
	}
	
}
	

	

