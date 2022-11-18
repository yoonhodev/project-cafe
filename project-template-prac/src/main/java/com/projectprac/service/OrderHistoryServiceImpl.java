package com.projectprac.service;

import com.projectprac.dto.OrderHistoryDto;
import com.projectprac.mapper.OrderHistoryMapper;

import lombok.Setter;

public class OrderHistoryServiceImpl implements OrderHistoryService {
	
		
	@Setter
	private OrderHistoryMapper OrderHistoryMapper;

	@Override
	public OrderHistoryDto selectOrderHistoryByCustomerId(String customerId) {

		OrderHistoryDto orderHistoryDto = OrderHistoryMapper.selectOrderHistoryByCustomerId(customerId);
		return orderHistoryDto;
	}

	@Override
	public void selectOrderHistoryByCustomerId(OrderHistoryDto orderHistoryDto) {
		
		String orderHistory = orderHistoryDto.getCustomerId();
		System.out.println(orderHistory);
		
	}

	
	
	

}
