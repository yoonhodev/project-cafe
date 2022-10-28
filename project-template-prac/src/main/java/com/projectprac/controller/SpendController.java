package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.service.FixedSpendService;



@Controller
public class SpendController {

	@Autowired
	@Qualifier("fixedspendService")
	private FixedSpendService fixedspendService;
	
	@GetMapping(path = {"fixedspend"})
	public String fixSpend(FixedSpendDto spendDto) {
		
		
		
		return "spend/fixedSpend";
		
		
	}
	
	@PostMapping(path = {"fixedspend"})
	public String insertCost(FixedSpendDto spendDto) {
		
		fixedspendService.insertCost(spendDto);
		
		return "spend/fixedSpend";
		
	}
	
}
