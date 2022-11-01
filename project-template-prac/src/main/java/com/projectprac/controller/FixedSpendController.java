package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.FixedSpendService;

@Controller
public class FixedSpendController {

	@Autowired
	@Qualifier("fixedspendService")
	private FixedSpendService fixedSpendService;
	
	@GetMapping(path = {"fixedSpend"})
	public String fixSpend(FixedSpendDto fixedSpend, Model model) {
		List<StoreDto> stores = fixedSpendService.showAllStore();
		// fixedSpendService.showCostByStoreId();
		model.addAttribute("stores", stores);
		
		return "spend/fixedSpend";
	}
	
	@PostMapping(path = {"fixedSpend"})
	public String insertCost(FixedSpendDto fixedSpend) {
		fixedSpendService.insertCost(fixedSpend);
		return "redirect:fixedSpend";
	}
	
	@PostMapping(path = {"fixedSpend2"})
	public String showCostByStoreId(int storeId, Model model) {
		List<FixedSpendDto> fixedSpends = fixedSpendService.selectCostByStoreId(storeId);
		System.out.println(fixedSpends);
		model.addAttribute("fiexedSpends", fixedSpends);
		
		return "redirect:fixedSpend";
	}
	
}