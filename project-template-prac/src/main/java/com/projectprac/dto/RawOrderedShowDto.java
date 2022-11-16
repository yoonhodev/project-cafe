package com.projectprac.dto;

import lombok.Data;

@Data
public class RawOrderedShowDto {

	private String name;
	private int size;
	private int total;
	private String date;
	private String storeName;
	
	// date name sum store
			// 제품명, 사이즈, 합계
}
