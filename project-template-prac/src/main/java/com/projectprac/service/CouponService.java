package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CouponDto;
import com.projectprac.dto.CouponMakeDto;

public interface CouponService {

	void createNewCoupon(String customerId, int couponId);

	List<CouponMakeDto> showCouponList(String customerId);

	CouponDto findCouponByCouponId(int couponId);

}
