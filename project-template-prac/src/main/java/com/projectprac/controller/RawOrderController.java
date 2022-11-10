package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.projectprac.dto.RawOrderDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.FixedSpendService;
import com.projectprac.service.RawOrderService;

@Controller
public class RawOrderController {

	@Autowired
	@Qualifier("fixedspendService")
	private FixedSpendService fixedSpendService;
	
	@Autowired
	@Qualifier("rawOrderService")
	private RawOrderService rawOrderService;
	
	@GetMapping(path = { "raw-order" })
	public String rawOrder(Model model) {
		
		List<StoreDto> stores = fixedSpendService.showAllStore();
		model.addAttribute("stores", stores);
		
		List<String> bigCategories = rawOrderService.showBigCategory();
		model.addAttribute("bigCategories", bigCategories);
		
//		List<RawOrderDto> rawData = rawOrderService.showAllRaws();
//		model.addAttribute("rawData", rawData);
		
		return "raw-order/raw-order";
	}
	
	@GetMapping(path = { "rawOrderList" })
	public String rawOrderList(Model model, @RequestParam(defaultValue = "-1") String bigCategory,
											@RequestParam(defaultValue = "-1") String smallCategory,
											@RequestParam(defaultValue = "-1") String rawName) {
		List<RawOrderDto> rawOrders = rawOrderService.selectRawOrder(bigCategory, smallCategory, rawName);
		model.addAttribute("rawOrders", rawOrders);
		
		return "raw-order/rawOrderList";
	}
	
	@PostMapping(path = { "lookupRaw" })
	@ResponseBody
	public String lookUp(String bigCategory, String smallCategory, @RequestParam(defaultValue = "-1") String rawName, Model model) {
		if (bigCategory.equals("null") && rawName.equals("-1")) { // 검색어도 없고 대분류도 없을 때
			return "1";
		} else if (!bigCategory.equals("null") && !(smallCategory.equals("null") || smallCategory.equals("전체보기")) && !rawName.equals("-1")) { // 대분류와 소분류, 검색어가 있을 때
			return "2";
		} else if (!bigCategory.equals("null") && !rawName.equals("-1")) { // 대분류와 검색어가 있을 때
			return "3";
		} else if (!bigCategory.equals("null") && !(smallCategory.equals("null") || smallCategory.equals("전체보기"))) { // 대분류와 소분류가 있을 때
			return "4";
		} else if (!bigCategory.equals("null")) { // 대분류만 있을 때
			return "5";
		} else if (!rawName.equals("-1")) { // 검색어만 있을 때
			return "6";
		}
		return "0";
	}
	
	@GetMapping(path = { "searchSmCate" }, produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<String> smallCategory(Model model, String bigCategory) {
		
		List<RawOrderDto> smallCategories = rawOrderService.showSmallCategory();
		List<String> smallCates = new ArrayList<>();
		
		for (RawOrderDto rawOrder : smallCategories) {
			if (rawOrder.getBigCategory().equals(bigCategory)) {
				smallCates.add(rawOrder.getSmallCategory());
			}
		}
		
		return smallCates;
		
	}
	
	
	
}
