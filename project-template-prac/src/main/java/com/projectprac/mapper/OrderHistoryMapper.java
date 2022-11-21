package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Result; 

import com.projectprac.dto.OrderHistoryDto;

@Mapper
public interface OrderHistoryMapper {

	@Select("SELECT order_id, store_id, customer_id, order_pay, order_date " +
			"FROM order " +
			"ORDER BY order_id DESC " +
			"WHERE customer_id = #{ customerId } ")
	OrderHistoryDto selectOrderHistoryByCustomerId(String customerId);
	
	
}
