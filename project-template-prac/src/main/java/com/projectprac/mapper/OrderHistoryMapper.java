package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.OrderDto;

@Mapper
public interface OrderHistoryMapper {

	@Select("SELECT order_id, store_id, customer_id, order_pay, order_date " +
			"FROM order " +
			"WHERE customer_id = #{ customerId } " +
			"ORDER BY order_id DESC ")
	List<OrderDto> selectOrderHistoryByCustomerId(String customerId);
	
	
}
