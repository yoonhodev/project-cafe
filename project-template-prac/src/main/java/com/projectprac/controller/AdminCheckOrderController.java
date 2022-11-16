package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.service.AdminCheckOrderService;

@Controller
public class AdminCheckOrderController {

	@Autowired
	@Qualifier("admincheckorderService")
	private AdminCheckOrderService admincheckorderService;
	
	
	@GetMapping(path = {"admincheckorder"})
	public String adminCheckorder() {
		
		
		
		
		
		
		
		
		
		return "admin-order/adminCheckOrder";
	}
	
	
}
