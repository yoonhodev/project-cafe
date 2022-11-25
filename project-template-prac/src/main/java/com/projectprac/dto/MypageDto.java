package com.projectprac.dto;

import java.sql.Date;

import javax.validation.constraints.Email;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MypageDto {
	
	private String customerId;
	private String passwd;
	private String passwdchk;
	private String oldpasswd;
	private int order_id;
	private int store_id;
	private String order_pay;
	private String order_type;
	private Date order_date;
	private int coupon_deleted;
	private String phone;
	@Email
	private String email;
}
