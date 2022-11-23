package com.projectprac.dto;

import lombok.Data;

@Data
public class OrderDetailDto {
	
	private int orderDetailId;
	private int orderId;
	private int prodId;
	private int amount;
	
	private ProductDto productDto;

}
