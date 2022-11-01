package com.projectprac.dto;

import lombok.Data;

@Data
public class StoreDto {

	private int storeId;
	private String storeName;
	private String storePhone;
	private String storeAddr;
	private String storeIntroduce;
	private String storeSchedule;
	private boolean storeOpen;
	private String storeImage;
	private String storeUniqueimage;
	private boolean deleted;
	
}
