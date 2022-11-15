package com.projectprac.dto;

import lombok.Data;

@Data
public class RawOrderHistoryDetailDto {

	private int rawDetailId;
	private int orderRawId;
	private int rawId;
	private int amount;
	
	private RawOrderDto rawOrder;
	
}
