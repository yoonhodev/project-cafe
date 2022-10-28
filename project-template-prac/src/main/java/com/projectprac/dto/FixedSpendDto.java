package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class FixedSpendDto {

	private int costId;
	private Date month;
	private int storeId;
	private int monthPay;
	private int managePay;
	private int elecPay;
	private int adPay;
	private int waterInternetPay;
	private int deliPay;
	
}
