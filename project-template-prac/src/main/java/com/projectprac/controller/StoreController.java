package com.projectprac.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.projectprac.dto.storeDto;
import com.projectprac.service.storeService;


@Controller
public class storeController {

	

	private storeService storeService;
	
	
	@GetMapping(path = {"store"})
	public String shop(int storeId) {
		
		List<storeDto> stores = storeService.selectStoreInfo(storeId);
		
		return "store/store-intro";
	}
	
	
	
}

