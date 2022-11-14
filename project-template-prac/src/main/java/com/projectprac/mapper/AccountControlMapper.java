package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.CustomerDto;


@Mapper
public interface AccountControlMapper {

	
	
	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp, usertype, reg_date regDate, deleted " +
			"FROM customer " + 
			"order by deleted " +
			"LIMIT #{ from }, #{ count } " )
	List<CustomerDto> selectAllUserAccount(CustomerDto customerDto,@Param("from")int from, @Param("count")int count);

	
	
	@Update("update customer " + 
			"set usertype = TRUE " + 
			"where customer_id = #{customerId} " )
	void changeToAdmin(String customerId);


	@Update("update customer " + 
			"set usertype = FALSE " + 
			"where customer_id = #{customerId} " )
	void changeToUser(String customerId);


	@Select("select count(*) from customer " )
	public int countAllCustomer();


	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp, usertype, reg_date regDate, deleted " +
			"FROM customer " )
	List<CustomerDto> selectAllUserAccountForSearch();


	@Select("SELECT customer_id customerId, passwd, phone, sex, email, birth, stamp, usertype, reg_date regDate, deleted " +
			"FROM customer " + 
			"where customer_id = #{ customerId } " )
	List<CustomerDto> selectCustomerByCustomerId(String customerId);


	
}
