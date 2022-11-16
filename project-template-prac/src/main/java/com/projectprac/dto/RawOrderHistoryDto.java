package com.projectprac.dto;

import java.util.List;

import lombok.Data;

@Data
public class RawOrderHistoryDto {

	private int orderRawId;
	private int storeId;
	private String storeName;
	private String rawOrderDate;
	
	private String productName;
	private int size;
	private int total;

	private List<RawOrderHistoryDetailDto> historyDetailDtos;
	
}
