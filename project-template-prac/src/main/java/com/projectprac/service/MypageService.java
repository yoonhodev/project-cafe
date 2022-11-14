package com.projectprac.service;

import java.util.Date;


import javax.validation.Valid;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.MypageDto;


public interface MypageService {

	int selectCouponByCustomerId(String customerId);
	
	MypageDto editAccount(String customerId, String passwd, String phone, String email, String sex, String birth);

	AddressDto editAddress(String postId, String address, String detailAddress, String extraAddress);

	void editAddress(AddressDto addressDto);

	void editAccount(MypageDto mypageDto);

	AddressDto selectAddressByCustomerId(String customerId);

	

	


	
}
