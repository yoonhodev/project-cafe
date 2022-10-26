package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.OrderDto;

@Mapper
public interface OrderMapper {
	
	@Insert("INSERT INTO order (order_id orderId, store_id storeId, customer_id customerId, order_pay orderPay, order_type orderType, order_stat orderStat, order_date orderDate) " +
	        "VALUES (#{ orderid }, #{ storeid }, #{ customerid }, #{ orderpay }, #{ ordertype }, #{ orderstat }, # { orderdate })")
	@Options(useGeneratedKeys = true, keyColumn = "orderid", keyProperty = "orderid")
	
	void insertOrder(OrderDto order);
	
	@Select("SELECT order_id orderId, store_id storeId, customer_id customerId, order_pay orderPay, order_type orderType, order_stat orderStat, order_date orderDate " +
			"FROM order ")
	
	void selectOrder(OrderDto order);
	
	@Select("SELECT od.order_detail_id orderDetailId, p.prod_name prodName, p.prod_price prodPrice, od.amount ) " +
			"FROM order_detail od " +
			"LEFT OUTER JOIN product p " +
			"ON od.prod_id = p.prod_id ")
	@Options(useGeneratedKeys = true, keyColumn = "od.order_detail_id", keyProperty = "od.order_detail_id")
	
	List<OrderDto> selectProductByOrderDetail(int orderid);


}
