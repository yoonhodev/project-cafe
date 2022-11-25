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

	@Override
	public void deleteCouponMake(String customerId, int couponMakeId) {
		couponMapper.deleteCouponMake(customerId, couponMakeId);
	}

}
