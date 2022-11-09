package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.RawOrderDto;
import com.projectprac.mapper.RawOrderMapper;

import lombok.Setter;

public class RawOrderServiceImpl implements RawOrderService {

	@Setter
	private RawOrderMapper rawOrderMapper;

	@Override
	public List<String> showBigCategory() {
		List<String> bigCategories = rawOrderMapper.selectBigCategory();
		return bigCategories;
	}

	@Override
	public List<RawOrderDto> showSmallCategory() {
		List<RawOrderDto> smallCategories = rawOrderMapper.selectSmallCategory();
		return smallCategories;
	}

	@Override
	public List<RawOrderDto> selectRawOrder(String bigCategory, String smallCategory, String rawName) {
		if (!bigCategory.equals("-1") && !smallCategory.equals("-1") && !rawName.equals("-1")) { // 대분류와 소분류, 검색어가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDSmallCategoryANDRawName(bigCategory, smallCategory, rawName);
			return rawOrders;
		} else if (!bigCategory.equals("-1") && !rawName.equals("-1")) { // 대분류와 검색어가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDRawName(bigCategory, rawName);
			return rawOrders;
		} else if (!bigCategory.equals("-1") && !smallCategory.equals("-1")) { // 대분류와 소분류가 있을 때
			List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategoryANDSmallCategory(bigCategory, smallCategory);
			return rawOrders;
		} 
//		else if (!bigCategory.equals("null")) { // 대분류만 있을 때
//			return rawOrders;
//		} else if (!rawName.equals("-1")) { // 검색어만 있을 때
//			return rawOrders;
//		}
		List<RawOrderDto> rawOrders = rawOrderMapper.selectAllRaws();
		return rawOrders;
	}

//	@Override
//	public List<RawOrderDto> selectRawOrderByBig(String bigCategory) {
//		List<RawOrderDto> rawOrders = rawOrderMapper.selectRawOrderByBigCategory(bigCategory);
//		return rawOrders;
//	}

	@Override
	public List<RawOrderDto> showAllRaws() {
		List<RawOrderDto> rawData = rawOrderMapper.selectAllRaws();

		return rawData;
	}

}
