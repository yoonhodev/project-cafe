package com.projectprac.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.StoreDto;
import com.projectprac.service.StoreService;


@Controller
public class StoreController {

	

	private StoreService storeService;
	
	
	@GetMapping(path = {"store"})
	public String store(@RequestParam(defaultValue = "1") int storeId,
						Model model) {
		StoreDto store = new StoreDto();
		
		System.out.println(storeId);
		
		List<StoreDto> stores = storeService.selectStoreInfo(storeId);
		
		model.addAttribute("stroes",stores);
		
		
		return "store/store-intro";
	}
	
	
	
}

