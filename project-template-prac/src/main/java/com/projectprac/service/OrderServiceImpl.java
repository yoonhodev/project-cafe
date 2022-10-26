package com.projectprac.service;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.projectprac.dto.OrderDto;
import com.projectprac.mapper.OrderMapper;

import lombok.Setter;

public class OrderServiceImpl implements OrderService  {
	
	@Setter
	private OrderMapper ordermapper;
	
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	@Override
	public void updateOrder(OrderDto order) {
		
		ordermapper.insertOrder(order);
	}

}
