package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDto;

public interface OrderHistoryService {

	List<OrderDto> selectOrderHistoryByCustomerId(String customerId);
	
	


}
