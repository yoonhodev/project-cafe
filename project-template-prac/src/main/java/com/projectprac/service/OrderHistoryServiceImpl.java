package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDto;
import com.projectprac.dto.OrderHistoryDto;
import com.projectprac.mapper.OrderHistoryMapper;

import lombok.Setter;

public class OrderHistoryServiceImpl implements OrderHistoryService {
	
		
	@Setter
	private OrderHistoryMapper OrderHistoryMapper;

	@Override
	public List<OrderDto> selectOrderHistoryByCustomerId(String customerId) {

		List<OrderDto> orders = OrderHistoryMapper.selectOrderHistoryByCustomerId(customerId);
		return orders;
	}

}
