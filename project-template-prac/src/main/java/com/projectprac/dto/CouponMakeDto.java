package com.projectprac.dto;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, ....
public class CouponMakeDto {

	private int couponMakeId;
	private int couponId;
	private String customerId;
	private String couponStart;
	private String couponEnd;
	private boolean couponDeleted;
	
	private CouponDto couponDto;
		
}
