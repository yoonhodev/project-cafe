package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;

public interface OrderHistoryService {

	List<OrderDto> selectOrderHistoryByCustomerId(String customerId);

	List<OrderDetailDto> selectOrderDetailHistoryByOrderId(int orderId);

	ProductDto selectProductByProductId(int prodId);

	String selectStoreNameByStoreId(int storeId);

}
