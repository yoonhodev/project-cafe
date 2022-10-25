package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.StoreMapper;

public interface StoreService {

	List<StoreDto> selectStoreInfo(int storeId);

	/* List<StoreDto> findStoreByStoreId(int storeId); */

	/* List<StoreDto> findStore(StoreDto storeDto); */

	
}
