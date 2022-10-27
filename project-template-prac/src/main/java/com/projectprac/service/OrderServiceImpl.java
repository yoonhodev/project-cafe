package com.projectprac.service;

import com.projectprac.dto.ProductDto;
import com.projectprac.mapper.OrderMapper;

import lombok.Setter;

public class OrderServiceImpl implements OrderService  {
	
	@Setter
	private OrderMapper orderMapper;

	// 상품번호를 받아서 상품 조회 및 반환
	@Override
	public ProductDto showOrder(int prodId) {
		
		ProductDto product = orderMapper.findProductByProdId(prodId);
		return product;
		
	}

}
