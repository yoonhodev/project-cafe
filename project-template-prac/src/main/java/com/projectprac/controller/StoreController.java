package com.projectprac.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.StoreDto;
import com.projectprac.service.StoreService;


@Controller
public class StoreController {

	

	private StoreService storeService;
	
	
	@GetMapping(path = {"store"})
	public String ShowStore() {
		
		return "store/store-intro";
	}
	
//	@GetMapping(path = {"store"})
//	public String store(StoreDto storeDto) {
//		StoreDto store = new StoreDto();
//		
//		System.out.println(store.getStoreAddr());
//		
//		List<StoreDto> stores = storeService.selectStoreInfo(storeDto);
//		
//	
//		
//		return "store/store-intro";
//	}
	
}

