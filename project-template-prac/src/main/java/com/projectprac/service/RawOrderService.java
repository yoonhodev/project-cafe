package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.RawOrderDto;
import com.projectprac.dto.RawOrderHistoryDto;

public interface RawOrderService {

	List<RawOrderDto> showAllRaws();

	List<String> showBigCategory();

	List<RawOrderDto> showSmallCategory();
	
	List<RawOrderDto> selectRawOrder(String bigCategory, String smallCategory, String rawName);

	RawOrderDto selectRawOrderByRawId(int rawId);

	void insertOrder(String storeId, String orderDate);

	int selectLastOrderId();

	void insertOrderDetail(int orderId, int rawId, int count);

	List<RawOrderHistoryDto> showRawOrdered(String storeId, String year, String month);

}
