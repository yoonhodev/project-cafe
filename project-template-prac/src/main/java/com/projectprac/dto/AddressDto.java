package com.projectprac.dto;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, ....
public class AddressDto {

	private String addressId;
	private String customerId;
	private String postId;
	private String address;
	private String detailAddress;
	private String extraAddress;
	
}
