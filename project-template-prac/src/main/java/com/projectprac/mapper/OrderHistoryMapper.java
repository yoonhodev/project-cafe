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

	@Insert("INSERT INTO order_id orderId, store_id storeId, customer_id customerId, order_pay orderPay, order_date orderDate ) " +
			"VALUES (#{ orderId }, #{ storeId }, #{ customerId }, #{ orderPay }, #{ orderDate })")
	@Options(useGeneratedKeys = true, keyColumn = "orderHistoryno", keyProperty = "orderHistoryNo")

	void insertOrderHistory(OrderHistoryDto orderHistory);
	
	@Select("SELECT order_id, store_id, customer_id, order_pay, order_date " +
			"FROM order " +
			"ORDER BY order_id DESC " +
			"LIMIT #{ from },#{ count }")
	List<OrderHistoryDto> selectOrderHistoryByPage(@Param("from")int from, @Param("count")int count);
		

	int selectBoardCount();
	
}
