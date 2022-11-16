package com.projectprac.service;

import java.util.ArrayList;
import java.util.List;

import com.projectprac.dto.RawOrderDto;
import com.projectprac.dto.RawOrderHistoryDetailDto;
import com.projectprac.dto.RawOrderHistoryDto;
import com.projectprac.mapper.RawOrderMapper;

import lombok.Setter;

public class RawOrderServiceImpl implements RawOrderService {

	@Setter
	private RawOrderMapper rawOrderMapper;

	@Override
	public List<RawOrderDto> showAllRaws() { // 전체 상품 조회
		List<RawOrderDto> rawData = rawOrderMapper.selectAllRaws();
		return rawData;
	}

	@Override
	public List<String> showBigCategory() { // 대분류 목록 조회
		List<String> bigCategories = rawOrderMapper.selectBigCategory();
		return bigCategories;
	}

	@Override
	public List<RawOrderDto> showSmallCategory() { // 소분류 목록 조회
		List<RawOrderDto> smallCategories = rawOrderMapper.selectSmallCategory();
		return smallCategories;
	}

	@Override
	public List<RawOrderDto> selectRawOrder(String bigCategory, String smallCategory, String rawName) { // 조건에 맞는 상품 조회
		if (!bigCategory.equals("-1") && !smallCategory.equals("-1") && !rawName.equals("-1")) { // 대분류와 소분류, 검색어가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDSmallCategoryANDRawName(bigCategory, smallCategory, rawName);
			return rawOrders;
		} else if (!bigCategory.equals("-1") && !rawName.equals("-1")) { // 대분류와 검색어가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDRawName(bigCategory, rawName);
			return rawOrders;
		} else if (!bigCategory.equals("-1") && !smallCategory.equals("-1")) { // 대분류와 소분류가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDSmallCategory(bigCategory, smallCategory);
			return rawOrders;
		} else if (!bigCategory.equals("-1")) { // 대분류만 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategory(bigCategory);
			return rawOrders;
		} else if (!rawName.equals("-1")) { // 검색어만 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByRawName(rawName);
			System.out.println(rawOrders);
			return rawOrders;
		}
		List<RawOrderDto> rawOrders = new ArrayList<>();
		return rawOrders;
	}

	@Override
	public RawOrderDto selectRawOrderByRawId(int rawId) { // 상품 번호로 상품 조회
		RawOrderDto rawOrder = rawOrderMapper.selectRawOrderByRawId(rawId);
		return rawOrder;
	}

	@Override
	public void insertOrder(String storeId, String orderDate) {
		rawOrderMapper.insertOrder(storeId, orderDate);
	}

	@Override
	public int selectLastOrderId() {
		int lastOrderId = rawOrderMapper.selectLastOrderId();
		return lastOrderId;
	}

	@Override
	public void insertOrderDetail(int orderId, int rawId, int count) {
		rawOrderMapper.insertOrderDetail(orderId, rawId, count);
	}

	@Override
	public List<RawOrderHistoryDto> showRawOrdered(String storeId, String year, String month) {
		
		List<RawOrderHistoryDto> history;
		String orderDate;
		if (!storeId.equals("-1") && !year.equals("null") && !month.equals("null")) { // 지점번호와 연도, 월이 있을 때
			orderDate = year + "-" + month;
			history = rawOrderMapper.selectOrderRawByStoreIdAndOrderDate(storeId, orderDate);
		} else if (!storeId.equals("-1") && !year.equals("null")) { // 지점번호와 연도만 있을 때
			orderDate = year; 
			history = rawOrderMapper.selectOrderRawByStoreIdAndOrderDate(storeId, orderDate);
		} else if (!year.equals("null") && !month.equals("null")) { // 연도와 월만 있을 때
			orderDate = year + "-" + month;
			history = rawOrderMapper.selectOrderRawByOrderDate(orderDate);
		} else if (!storeId.equals("-1") && !month.equals("null")) { // 지점번호와 월만 있을 때
			orderDate = "-" + month + "-";
			history = rawOrderMapper.selectOrderRawByStoreIdAndOrderDate(storeId, orderDate);
		} else if (!storeId.equals("-1")) { // 지점번호만 있을 때
			history = rawOrderMapper.selectOrderRawByStoreId(storeId);
		} else if (!year.equals("null")) { // 연도만 있을 때
			orderDate = year;
			history = rawOrderMapper.selectOrderRawByOrderDate(orderDate);
		} else if (!month.equals("null")) { // 월만 있을 때
			orderDate = "-" + month + "-";
			history = rawOrderMapper.selectOrderRawByOrderDate(orderDate);
		} else {
			history = new ArrayList<>();
		}
		return history;
		
	}

	@Override
	public List<RawOrderHistoryDetailDto> showOrderedDetail(int orderRawId) {
		List<RawOrderHistoryDetailDto> details = rawOrderMapper.selectOrderRawDetailByOrderRawId(orderRawId);
		return details;
	}

	@Override
	public String selectStoreNameByStoreId(int storeId) {
		String storeName = rawOrderMapper.selectStoreNameByStoreId(storeId);
		return storeName;
	}

}
