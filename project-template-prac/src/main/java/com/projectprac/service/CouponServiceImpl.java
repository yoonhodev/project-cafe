package com.projectprac.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import com.projectprac.dto.CouponDto;
import com.projectprac.dto.CouponMakeDto;
import com.projectprac.mapper.CouponMapper;

import lombok.Setter;

public class CouponServiceImpl implements CouponService {

	// 6-1) 의존성 주입
	@Setter
	private CouponMapper couponMapper;

	@Override
	public void createNewCoupon(String customerId, int couponId) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String couponStart = sdf.format(cal.getTime());
        cal.add(Calendar.DATE, 90);
        String couponEnd = sdf.format(cal.getTime());
        couponMapper.insertCouponMake(customerId, couponId, couponStart, couponEnd);
		
	}

	@Override
	public List<CouponMakeDto> showCouponList(String customerId) {
		
		List<CouponMakeDto> couponMakeDtos = couponMapper.selectCouponMakeByCustomerId(customerId);
		return couponMakeDtos;
		
	}

	@Override
	public CouponDto findCouponByCouponId(int couponId) {
		
		CouponDto coupon = couponMapper.selectCouponByCouponId(couponId);
		return coupon;
		
	}

//	// 1. 회원 가입 : 회원 데이터를 받아서 필요한 처리 ( 데이터베이스 저장은 Dao에 전달 )
//	@Override
//	public void registerCustomer(CustomerDto customer) {
//
//		String passwd = Util.getHashedString(customer.getPasswd(), "SHA-256");
//		customer.setPasswd(passwd); // 암호화된 패스워드를 멤버에 저장
//		customerMapper.insertCustomer(customer);
//
//	}
//	
//	// 2. 로그인 : 아이디, 패스워드를 받아서 데이터베이스 조회 후 결과 반환
//	@Override
//	public CustomerDto findCustomerByIdAndPasswd(String customerId, String passwd) {
//		
//		passwd = Util.getHashedString(passwd, "SHA-256");
//		CustomerDto customer = customerMapper.selectCustomerByIdAndPasswd(customerId, passwd);
//		return customer;
//		
//	}
//
//	// 3. 비밀번호 찾기 : 아이디 조회 후 비밀번호 재설정
//	@Override
//	public CustomerDto findCustomerByIdAndPhone(String customerId, String phone) {
//		CustomerDto customer = customerMapper.selectCustomerByIdAndPhone(customerId, phone);
//		return customer;
//	}
//
//	@Override
//	public void updatePassword(String customerId, String passwd) {
//		passwd = Util.getHashedString(passwd, "SHA-256");
//		customerMapper.updatePassword(customerId, passwd);
//	}

}
