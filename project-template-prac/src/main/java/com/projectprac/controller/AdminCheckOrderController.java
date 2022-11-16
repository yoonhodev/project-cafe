package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.StoreDto;
import com.projectprac.service.AdminCheckOrderService;

@Controller
public class AdminCheckOrderController {

	@Autowired
	@Qualifier("admincheckorderService")
	private AdminCheckOrderService admincheckorderService;
	
	
	@GetMapping(path = {"admincheckorder"})
	public String adminCheckorder(@RequestParam(defaultValue = "-1" )int storeId, Model model) {
		
		List<StoreDto> stores = admincheckorderService.showAllStores();
		
		if(storeId != -1 ) {
//			List<WorkerDto> workers = admincheckorderService.selectOrderListByStoreId(storeId);
//			System.out.println(workers);
//			model.addAttribute("workers", workers);
			for (StoreDto store : stores) {
				if (store.getStoreId() == storeId) {
					model.addAttribute("storeName11", store.getStoreName());
				}
			}
		}
		
		
		
		model.addAttribute("stores", stores);
		
		return "admin-order/adminCheckOrder";
	}
	
	
}
