package com.projectprac.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.StoreDto;
import com.projectprac.service.StoreService;


@Controller
public class StoreController {

	@Autowired
	@Qualifier("storeService")
	private StoreService storeService;

	
	
	
	@GetMapping(path = {"/store"})
	
	public String store(@RequestParam(defaultValue = "1")int storeId ,
			StoreDto storeDto ,Model model) {
		
		List<StoreDto> stores = storeService.selectStoreInfo(storeDto);
		
		System.out.println(storeDto);
		
		model.addAttribute("stores", stores);
		
		return "store/store-intro";
	}
	
	
	@GetMapping(path = {"/writeStore"})

	public String writestore() {
	
	return "store/writeStore";
	}
	
}

