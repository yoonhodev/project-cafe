package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.ProductDto;

public interface OrderService {

		ProductDto showOrder(int prodId);

		ProductDto deleteAllOrder(int prodId);

		ProductDto deleteOrder(int prodId);
		
		List<CouponMakeDto> showCoupon(String customerId);
		
	}
