package com.projectprac.service;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.MypageDto;


public interface MypageService {

	int selectCouponByCustomerId(String customerId);

	void editAddress(AddressDto addressDto);

	void editAccount(MypageDto mypageDto);

	void deleteAccount(MypageDto mypageDto);

	AddressDto selectAddressbyCustomerId(String customerId);

	MypageDto selectPwPhoneMailbyCustomerId(String customerId);
	


	

	


	
}
