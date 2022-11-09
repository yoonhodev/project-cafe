package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.dto.RawOrderDto;

public interface RawOrderService {

	List<String> showBigCategory();

	List<RawOrderDto> showSmallCategory();
	
	List<RawOrderDto> selectRawOrder(String bigCategory, String smallCategory, String rawName);

	List<RawOrderDto> showAllRaws();

}
