package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;
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

	@Override
	public List<OrderDetailDto> selectOrderDetailHistoryByOrderId(int orderId) { 
		List<OrderDetailDto> details = OrderHistoryMapper.selectOrderDetailByOrderId(orderId);
		return details;
	}

	@Override
	public ProductDto selectProductByProductId(int prodId) {
		ProductDto product = OrderHistoryMapper.selectProductByProductId(prodId);
		return product;
	}

	@Override
	public String selectStoreNameByStoreId(int storeId) {
		String storeName = OrderHistoryMapper.selectStoreNameByStoreId(storeId);
		return storeName;
	}

}
