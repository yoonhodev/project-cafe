package com.projectprac.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, ....
public class CustomerDto {

	private String customerId;
	private String passwd;
	private String phone;
	private boolean sex;
	@Email
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String birth;
	private int stamp;
	private boolean userType;

	private String regDate;
//	private boolean active;
	private boolean deleted;
	
}
