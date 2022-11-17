package com.projectprac.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.AddressDto;
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
	
	@Select("SELECT COUNT(coupon_deleted) couponCount " +
			"FROM modeling_cafe.coupon_make " +
			"WHERE customer_id= #{ customerId } AND coupon_deleted=\"0\"")
	int selectCouponByCustomerId(String customerId);
	
	@Select("SELECT address_id addressId, customer_id customerId, post_id postid, address, detail_address detailAddress, extra_address extraAddress, main_address mainAddress " +
			"FROM address " +
			"WHERE customer_id = #{ customerId } ")
	AddressDto selectAddressByCustomerId(String customerId);
	
	
	@Update("UPDATE customer " +
			"SET passwd = #{ passwd }, phone = #{ phone }, email = #{ email }, sex = #{ sex }, birth = #{ birth } " +
			"WHERE customer_id = #{ customerId } ")
//	MypageDto editAccount(@Param("customerId") String customerId, @Param("passwd") String passwd,  @Param("phone") String phone,  @Param("email") String email,  @Param("sex") String sex,  @Param("birth") String birth);
	void editAccount(MypageDto mypageDto);
	

	@Update("UPDATE address " +
			"SET post_id = #{ postId }, address = #{ address }, detail_address = #{ detailAddress }, extra_address = #{ extraAddress } " +
			"WHERE customer_id = #{ customerId } ")
	void editAddress(AddressDto addressDto);
			
	
	@Update("UPDATE customer " +
			"SET deleted = 1 " +
			"WHERE customer_id = #{ customerId } ")
	void deleteAccount(MypageDto mypageDto);

	
	
	@Select("SELECT address_id addressId, customer_id customerId, post_id postid, address, detail_address detailAddress, extra_address extraAddress, main_address mainAddress " +
			"FROM address " +
			"WHERE customer_id = #{ customerId } ")	
	AddressDto selectAddressByCustomerId22(String customerId);
	

	

	
	
}