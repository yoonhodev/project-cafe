package com.projectprac.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.projectprac.dto.OrderDetailDto;
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

	// 주문 상세 번호를 받아서 장바구니에서 주문 조회 및 반환
	@Override
	public List<OrderDto> findOrderByOrderDetailId(int orderDetailId) {
		List<OrderDto> orders = ordermapper.selectProductByOrderDetail(orderDetailId);
		
		return orders;
	}
	
	

}
