package com.projectprac.dto;

import lombok.Data;

@Data
public class RawOrderDto {

	private int rawId;
	private String rawName;
	private int rawPrice;
	private String rawTemp;
	private String bigCategory;
	private String smallCategory;
	
}
