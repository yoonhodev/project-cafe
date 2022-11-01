package com.projectprac.dto;

import lombok.Data;

@Data
public class FixedSpendDto {

	private int costId;
	private String month;
	private int storeId;
	private int monthPay;
	private int managePay;
	private int elecPay;
	private int adPay;
	private int waterPay;
	private int deliPay;
	
}
