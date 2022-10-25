package com.projectprac.dto;

import lombok.Data;

@Data
public class storeDto {

	private int storeId;
	private String storeName;
	private String storePhone;
	private String storeAddr;
	private String storeSchedule;
	private boolean storeOpen;
}
