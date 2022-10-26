package com.projectprac.dto;

import java.util.List;

public class OrderDetailDto {
	
	private int orderDetailId;
	private int orderId;
	private int prodId;
	private int amount;
	
	private List<ProductDto> products;
	private List<OrderDto> orders;

}
