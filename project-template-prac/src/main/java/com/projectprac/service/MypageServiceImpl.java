package com.projectprac.service;

import com.projectprac.dto.MypageDto;
import com.projectprac.mapper.MypageMapper;
import lombok.Setter;

public class MypageServiceImpl implements MypageService {
	
	@Setter
	private MypageMapper MypageMapper;

	@Override
	public int selectCouponByCustomerId(String customerId) {
		int CouponCount = MypageMapper.selectCouponByCustomerId(customerId);
		return CouponCount;
	}

	
	

}
