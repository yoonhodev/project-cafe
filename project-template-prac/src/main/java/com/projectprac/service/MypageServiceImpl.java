package com.projectprac.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
	
	@Override
	public AddressDto selectAddressbyCustomerId(String customerId) {
		AddressDto address = mypageMapper.selectAddressByCustomerId(customerId);
		return address;
	}
	
	@Override
	public MypageDto selectPwPhoneMailbyCustomerId(String customerId) {
		MypageDto currentData = mypageMapper.selectPwPhoneMailbyCustomerId(customerId);
		return currentData;
	}
	
	
	@Override
	public void editAddress(AddressDto addressDto) {
				
		String addressId = addressDto.getAddressId();
		addressDto.setAddressId(addressId);
		
		String customerId = addressDto.getCustomerId();
		addressDto.setCustomerId(customerId);
		
		String postId = addressDto.getPostId();
		addressDto.setPostId(postId);
		
		String address = addressDto.getAddress();
		addressDto.setAddress(address);
		
		String detailAddress = addressDto.getDetailAddress();
		addressDto.setDetailAddress(detailAddress);
		
		String extraAddress = addressDto.getExtraAddress();
		addressDto.setExtraAddress(extraAddress);
		
		boolean mainAddress = addressDto.isMainAddress();
		addressDto.setMainAddress(mainAddress);
		
		
		mypageMapper.editAddress(addressDto);
	}


	@Override
	public void editAccount(MypageDto mypageDto) {
		
		String customerId = mypageDto.getCustomerId();
		mypageDto.setCustomerId(customerId);
		
		String passwd = Util.getHashedString(mypageDto.getPasswd(), "SHA-256");;
		mypageDto.setPasswd(passwd); // 암호화된 패스워드를 멤버에 저장
		
		String oldpasswd = (mypageDto.getPasswd());
		mypageDto.setPasswd(oldpasswd);
		
		String passwdchk = (mypageDto.getPasswd());
		mypageDto.setPasswd(passwdchk);
		
		String phone = mypageDto.getPhone();
		mypageDto.setPhone(phone);
		
		String email = mypageDto.getEmail();
		mypageDto.setEmail(email);
		
		mypageMapper.editAccount(mypageDto);
		
	}

	@Override
	public void deleteAccount(MypageDto mypageDto) {
		String customerId = mypageDto.getCustomerId();
		mypageDto.setCustomerId(customerId);

		String passwd = Util.getHashedString(mypageDto.getPasswd(), "SHA-256");
		mypageDto.setPasswd(passwd);
		
		mypageMapper.deleteAccount(mypageDto);
	}

}
