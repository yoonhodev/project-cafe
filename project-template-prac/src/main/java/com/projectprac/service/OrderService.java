package com.projectprac.service;

import com.projectprac.dto.ProductDto;

public interface OrderService {

		ProductDto showOrder(int prodId);

		ProductDto deleteAllOrder(int prodId);

		ProductDto deleteOrder(int prodId);
		
	}
