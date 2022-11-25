package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.FixedSpendService;

@Controller
public class FixedSpendController {

	@Autowired
	@Qualifier("fixedspendService")
	private FixedSpendService fixedSpendService;
	
	@GetMapping(path = {"fixedSpend"})
	public String fixSpend(@RequestParam(defaultValue = "-1" )int storeId, FixedSpendDto fixedSpend, Model model) {
		List<StoreDto> stores = fixedSpendService.showAllStore();
		if(storeId != -1 ) {
			List<FixedSpendDto> fixedSpends = fixedSpendService.selectCostByStoreId(storeId);
			
			model.addAttribute("fixedSpends", fixedSpends);
			for (StoreDto store : stores) {
				if (store.getStoreId() == storeId) {
					model.addAttribute("storeName10", store.getStoreName());
				}
			}
		}
		
		// fixedSpendService.showCostByStoreId();
		model.addAttribute("stores", stores);
		return "spend/admin-fixedSpend";
	}
	
	@PostMapping(path = {"fixedSpend"})
	public String insertCost(FixedSpendDto fixedSpend) {
		fixedSpendService.insertCost(fixedSpend);
		return "redirect:fixedSpend";
	}
	

	
}
