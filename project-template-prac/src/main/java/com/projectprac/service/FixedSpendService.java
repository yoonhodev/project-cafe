package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;

public interface FixedSpendService {

	void insertCost(FixedSpendDto fixedSpend);

	List<StoreDto> showAllStore();

	List<FixedSpendDto> selectCostByStoreId(int storeId);

}
