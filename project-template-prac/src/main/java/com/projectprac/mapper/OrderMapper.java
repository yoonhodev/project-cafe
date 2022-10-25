package com.projectprac.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;

@Mapper
public interface OrderMapper {
	
	@Insert("INSERT INTO order (order_id, store_id, customer_id, order_pay, order_type, order_stat, order_date) " +
	        "VALUES (#{ orderid }, #{ storeid }, #{ customerid }, #{ orderpay }, #{ ordertype }, #{ orderstat }, # { orderdate })")
	@Options(useGeneratedKeys = true, keyColumn = "orderid", keyProperty = "orderid")
	
	void insertOrder(ProductDto product);


}
