package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ProductDto {
	
	private int prodId;
	private String prodCategory;
	private String prodName;
	private int prodPrice;
	private String prodDes;
	
}
