package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderHistoryDto;

public interface OrderHistoryService {

	void selectOrderHistoryByCustomerId(OrderHistoryDto orderHistoryDto);
	
	OrderHistoryDto selectOrderHistoryByCustomerId(String customerId);
	
	


}
