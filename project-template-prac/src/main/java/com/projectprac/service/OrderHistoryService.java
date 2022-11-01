package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderHistoryDto;

public interface OrderHistoryService {

	List<OrderHistoryDto> findOrderHistoryByPage(int pageNo, int page_size);

	int findOrderHistoryCount();

	OrderHistoryDto findOrderHistoryByOrderHistoryNo(int orderHistoryNo);


}
