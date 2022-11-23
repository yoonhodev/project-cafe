package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;

@Mapper
public interface OrderHistoryMapper {

	@Select("SELECT order_id orderId, store_id storeId, customer_id customerId, order_pay orderPay, order_type orderType, order_stat orderStat, order_date orderDate, address " +
			"FROM modeling_cafe.order " +
			"WHERE customer_id = #{ customerId } " +
			"ORDER BY order_id DESC")
	List<OrderDto> selectOrderHistoryByCustomerId(String customerId);
	
	@Select("SELECT order_detail_id orderDetailId, order_id orderId, prod_id prodId, amount " +
			"FROM order_detail " +
			"WHERE order_id = #{ orderId } " )
	List<OrderDetailDto> selectOrderDetailByOrderId(int orderId);

	@Select("SELECT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product " +
			"WHERE prod_id = #{ prodId } ")
	ProductDto selectProductByProductId(int prodId);

	@Select("SELECT store_name storeName " +
			"FROM store " +
			"WHERE store_id = #{ storeId } ")
	String selectStoreNameByStoreId(int storeId);
	
}
