package com.projectprac.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderDto {

	private int orderId;
	private int storeId;
	private String customerId;
	private String orderPay;
	private String orderType;
	private String orderStat;
	private Date orderDate;
	private String address;
	
	private List<OrderDetailDto> orderDetailDtos;
	
	private int total;
	private String storeName;
}
