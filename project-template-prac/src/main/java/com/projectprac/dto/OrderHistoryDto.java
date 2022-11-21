package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderHistoryDto {

	private int orderId;
	private int storeId;
	private String customerId;
	private String orderPay;
	private String orderType;
	private String orderStat;
	private Date orderDate;
	
}
