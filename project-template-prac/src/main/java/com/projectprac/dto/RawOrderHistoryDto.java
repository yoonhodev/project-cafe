package com.projectprac.dto;

import java.util.List;

import lombok.Data;

@Data
public class RawOrderHistoryDto {

	private int orderRawId;
	private int storeId;
	private String rawOrderDate;
	
	private List<RawOrderHistoryDetailDto> historyDtos;
	
}
