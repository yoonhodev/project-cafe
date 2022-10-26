package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;

public interface OrderService {

		void updateOrder(OrderDto order);


		List<OrderDto> findOrderByOrderDetailId(int orderDetailId);
		
	}
