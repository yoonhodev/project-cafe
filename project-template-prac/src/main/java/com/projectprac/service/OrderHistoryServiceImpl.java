package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderHistoryDto;
import com.projectprac.mapper.OrderHistoryMapper;

import lombok.Setter;

public class OrderHistoryServiceImpl implements OrderHistoryService {
	
		
	@Setter
	private OrderHistoryMapper OrderHistoryMapper;
	
	
	@Override
	public List<OrderHistoryDto> findOrderHistoryByPage(int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<OrderHistoryDto> orderHistory = OrderHistoryMapper.selectOrderHistoryByPage(from, count);
		return orderHistory;
	}
	
	
	@Override
	public int findOrderHistoryCount() {
	
		int orderHistoryCount = OrderHistoryMapper.selectBoardCount();
		return orderHistoryCount;
	}
	
	
	@Override
	public OrderHistoryDto findOrderHistoryByOrderHistoryNo(int orderHistoryNo) {
		
		return null;
	}

}
