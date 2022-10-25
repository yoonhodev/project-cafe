package com.projectprac.dto;

import java.util.List;

public class OrderDto {

	private int orderId;
	private int storeId;
	private String customerId;
	private String orderPay;
	private String orderType;
	private String orderStat;
	private String orderDate;
	
	private List<ProductDto> products;
	
}
