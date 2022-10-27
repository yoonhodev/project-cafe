package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.StoreDto;

public interface StoreService {

 

	List<StoreDto> selectStoreInfo(StoreDto store);

	void insertStoreIntro(StoreDto storeDto);

	/* List<StoreDto> findStoreByStoreId(int storeId); */

	/* List<StoreDto> findStore(StoreDto storeDto); */

	
}
