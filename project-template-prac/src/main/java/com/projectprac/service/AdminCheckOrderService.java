package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.OrderDto;
import com.projectprac.dto.StoreDto;

public interface AdminCheckOrderService {

	List<StoreDto> showAllStores();

	List<OrderDto> selectOrderListByStoreId(int storeId);

	void changeToDeilvering(int orderId);

	void changeToDeilvery(int orderId);

	void changeToGetProd(int orderId);

}
