package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;

//5-1) Mapper interface 만들기
@Mapper // mapper interface 구현 객체 생성 자동으로 처리
public interface CustomerMapper {

	// 7) 코드 작성
	@Insert("INSERT INTO customer (customer_id, passwd, phone, email, sex, birth, reg_date) " +
			"VALUES (#{ customerId }, #{ passwd }, #{ phone }, #{ email }, #{ sex }, #{ birth }, #{ regDate }) ")
	void insertCustomer(CustomerDto customer);

	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp, usertype, deleted " +
			"FROM customer " +
			"WHERE customer_id = #{ customerId } AND passwd = #{ passwd } ")
	CustomerDto selectCustomerByIdAndPasswd(@Param("customerId") String customerId, @Param("passwd") String passwd);

	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp " +
			"FROM customer " +
			"WHERE customer_id = #{ customerId } AND phone = #{ phone } ")
	CustomerDto selectCustomerByIdAndPhone(@Param("customerId") String customerId, @Param("phone") String phone);

	@Update("UPDATE customer " +
			"SET passwd = #{ passwd } " +
			"WHERE customer_id = #{ customerId } ")
	void updatePassword(@Param("customerId") String customerId, @Param("passwd")String passwd);

	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp, usertype, reg_date regDate " +
			"FROM customer ")
	List<CustomerDto> selectAllCustomer();

	@Insert("INSERT INTO address (customer_id, post_id, address, detail_address, extra_address, main_address) " +
			"VALUES (#{ customerId }, #{ postId }, #{ address }, #{ detailAddress }, #{ extraAddress }, 1) ")
	void insertAddress(AddressDto addressDto);
	
}
