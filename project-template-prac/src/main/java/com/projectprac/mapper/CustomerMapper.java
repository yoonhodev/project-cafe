package com.projectprac.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.CustomerDto;

//5-1) Mapper interface 만들기
@Mapper // mapper interface 구현 객체 생성 자동으로 처리
public interface CustomerMapper {

	// 7) 코드 작성
	@Insert("INSERT INTO customer (customer_id, passwd, phone, email, address, sex) " +
			"VALUES (#{ customerId }, #{ passwd }, #{ phone }, #{ email }, #{ address }, #{ sex }) ")
	void insertCustomer(CustomerDto customer);

	@Select("SELECT * " +
			"FROM customer " +
			"WHERE customer_id = #{ customerId } AND passwd = #{ passwd } ")
	CustomerDto selectCustomerByIdAndPasswd(@Param("customerId") String customerId, @Param("passwd") String passwd);

}