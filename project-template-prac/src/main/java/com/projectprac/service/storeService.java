package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.storeDto;

public interface storeService {

	List<storeDto> selectStoreInfo(int storeId);
	
}
