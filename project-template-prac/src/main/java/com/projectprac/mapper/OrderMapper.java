package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;

@Mapper
public interface OrderMapper {

	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product " +
			"WHERE prod_id = #{ prodId } ")
	ProductDto findProductByProdId(int prodId);

	ProductDto deleteAll(int prodId);

	ProductDto delete(int prodId);
	
	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product ")
	List<ProductDto> findShop();

	@Select("SELECT address, detail_address detailAddress " +
			"FROM address " +
			"WHERE customer_id = #{ customerId }" )
	AddressDto selectAddress(String customerId);
	
	@Insert("INSERT INTO modeling_cafe.order (store_id, customer_id, order_pay, order_type) " +
			"VALUES (#{ storeId }, #{ customerId }, #{ orderPay }, #{ orderType })" )
	void insertOrder(@Param("storeId")int storeId, @Param("customerId")String customerId, @Param("orderPay")String orderPay, @Param("orderType")String orderType);

	@Select("SELECT MAX(order_id) " +
			"FROM modeling_cafe.order" )
	int selectMaxOrderId();

	@Insert("INSERT INTO modeling_cafe.order_detail (order_id, prod_id, amount) " +
			"VALUES (#{ orderId }, #{ prodId }, #{ amount })" )
	void insertDetailOrder(@Param("orderId")int orderId, @Param("prodId")int prodId, @Param("amount")int amount);
}