package com.projectprac.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.projectprac.dto.MypageDto;

@Mapper
public interface MypageMapper {

	@Select("SELECT customer_id customerId, stamp " +
			"FROM customer " +
			"WHERE customer_id = #{ customerId } AND passwd = #{ passwd } ")
	MypageDto selectCustomerByIdAndPasswd(@Param("customerId") String customerId, @Param("passwd") String passwd);

	@Select("SELECT order_id orderId, store_id storeId, order_pay, order_type, order_date " +
			"FROM customer " +
			"WHERE customer_id = #{ customerId } AND passwd = #{ passwd } ")
	MypageDto selectOrderByIdAndPasswd(@Param("customerId") String customerId, @Param("passwd") String passwd);
	
	@Select("SELECT coupon_deleted " +
			"FROM modeling_cafe.coupon_make " +
			"WHERE customer_id= #{ customerId } AND coupon_deleted=\"0\"")
	MypageDto selectCouponByCustomerId(@Param("customerId") String customerId);
	

}