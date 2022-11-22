package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.OrderDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.AdminCheckOrderService;

@Controller
public class AdminCheckOrderController {

	@Autowired
	@Qualifier("admincheckorderService")
	private AdminCheckOrderService admincheckorderService;
	
	
	@GetMapping(path = {"admincheckorder"})
	public String adminCheckorder(@RequestParam(defaultValue = "-1" )int storeId,Model model) {
		
		List<StoreDto> stores = admincheckorderService.showAllStores();// storeId 조회 해서 storename 가져오기
		
		if(storeId != -1) {
			List<OrderDto> orders = admincheckorderService.selectOrderListByStoreId(storeId);
			model.addAttribute("orders", orders);
			for (StoreDto store : stores) {
				if (store.getStoreId() == storeId) {
					model.addAttribute("storeName11", store.getStoreName());
				}
			}
		}
		
		model.addAttribute("stores", stores);
		
		return "admin-order/adminCheckOrder";
	}
	
	
	@GetMapping(path = {"/{orderId}/changeToDeilvering"})
	public String changeTodeilvering(@PathVariable("orderId") int orderId, int storeId) {
	
		admincheckorderService.changeToDeilvering(orderId);
		
		return "redirect:/admincheckorder?storeName1=" + storeId + "&storeId=" + storeId;
	}
	
	@GetMapping(path = {"/{orderId}/changeToDeilvery"})
	public String changeTodeilvery(@PathVariable("orderId") int orderId, int storeId) {
	
		admincheckorderService.changeToDeilvery(orderId);
		
		return "redirect:/admincheckorder?storeName1=" + storeId + "&storeId=" + storeId;
	}
	
	@GetMapping(path = {"/{orderId}/changeToGetProd"})
	public String changeToGetProd(@PathVariable("orderId") int orderId, int storeId) {
	
		admincheckorderService.changeToGetProd(orderId);
		
		return "redirect:/admincheckorder?storeName1=" + storeId + "&storeId=" + storeId;
	}
	
}
