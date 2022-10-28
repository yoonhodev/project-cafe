package com.projectprac.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.projectprac.dto.FixedSpendDto;

@Mapper
public interface FixedSpendMapper {

	
	@Insert("insert into cost (month_pay, manage_pay, elec_pay, ad_pay, water_internet_pay, deli_pay) " +
			"values (#{monthPay}, #{managePay}, #{elecPay}, #{adPay}, #{waterInternetPay}, #{deliPay}) " )
	 void insertCost(FixedSpendDto spendDto);

}
