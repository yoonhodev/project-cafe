package com.projectprac.dto;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data // 모든 변수에 대해 getter, setter 자동 생성, 기본 생성자, ....
public class CustomerDto {

//	@NotBlank(message = "아이디를 입력하세요")
//	@Pattern(regexp = "[A-Za-z0-9]{8,20}", message = "아이디는 8~20개의 영문자 숫자 조합입니다.")
	private String customerId;
//	@NotBlank(message = "패스워드를 입력하세요")
//	@Pattern(regexp = "[A-Za-z0-9!@#$]{8,20}", message = "패스워드 형식 오류")
	private String passwd;
	private String phone;
	@Email
	private String email;
	private String address;
	private boolean sex;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	private int stamp;
	
//	private String userType;
//	private Date regDate;
//	private boolean active;
	
}
