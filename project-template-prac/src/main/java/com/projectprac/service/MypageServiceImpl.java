package com.projectprac.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.projectprac.common.Util;
import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.MypageDto;
import com.projectprac.mapper.MypageMapper;
import lombok.Setter;

public class MypageServiceImpl implements MypageService {
	
	@Setter
	private MypageMapper mypageMapper;

	@Override
	public int selectCouponByCustomerId(String customerId) {
		int CouponCount = mypageMapper.selectCouponByCustomerId(customerId);
		return CouponCount;
	}
	

//	@Override
//	public MypageDto editAccount(String customerId, String passwd, String phone, String email, String sex, String birth) {
//
//		MypageDto editAccount = mypageMapper.editAccount(customerId, passwd, phone, email, sex, birth);
//		return editAccount;
//
//	}


	@Override
	public AddressDto editAddress(String postId, String address, String detailAddress, String extraAddress) {
		AddressDto editAddress = mypageMapper.editAddress(postId, address, detailAddress, extraAddress);
		return editAddress;
	}


	@Override
	public void editAccount(MypageDto mypageDto) {
		
		String customerId = mypageDto.getCustomerId();
		mypageDto.setCustomerId(customerId);
		
		String passwd = Util.getHashedString(mypageDto.getPasswd(), "SHA-256");
		mypageDto.setPasswd(passwd); // 암호화된 패스워드를 멤버에 저장
		
		String phone = mypageDto.getPhone();
		mypageDto.setPhone(phone);
		
		String email = mypageDto.getEmail();
		mypageDto.setEmail(email);
		
		Boolean sex = mypageDto.isSex();
		mypageDto.setSex(sex);
		
        String birth = mypageDto.getBirth();
        mypageDto.setBirth(birth);
		
		mypageMapper.editAccount(mypageDto);
		
	}


	@Override
	public void editAddress(AddressDto addressDto) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public MypageDto editAccount(String customerId, String passwd, String phone, String email, String sex,
			String birth) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public AddressDto selectAddressByCustomerId(String customerId) {
		AddressDto address = mypageMapper.selectAddressByCustomerId(customerId);
		System.out.println(address);
		return address;
	}
	
	
	

}
