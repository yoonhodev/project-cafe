package com.projectprac.service;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.MypageDto;


public interface MypageService {

	int selectCouponByCustomerId(String customerId);

	void editAddress(AddressDto addressDto);

	void editAccount(MypageDto mypageDto);

	void selectAddressByCustomerId(AddressDto addressDto);

	void deleteAccount(MypageDto mypageDto);

	AddressDto selectAddressbyCustomerId(String customerId);
	


	

	


	
}
