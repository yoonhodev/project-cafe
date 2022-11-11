package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.dto.RawOrderDto;

public interface RawOrderService {

	List<RawOrderDto> showAllRaws();

	List<String> showBigCategory();

	List<RawOrderDto> showSmallCategory();
	
	List<RawOrderDto> selectRawOrder(String bigCategory, String smallCategory, String rawName);

	RawOrderDto selectRawOrderByRawId(int rawId);

}
