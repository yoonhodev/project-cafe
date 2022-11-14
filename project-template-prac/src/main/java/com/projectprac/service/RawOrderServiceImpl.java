package com.projectprac.service;

import java.util.ArrayList;
import java.util.List;

import com.projectprac.dto.RawOrderDto;
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

}
