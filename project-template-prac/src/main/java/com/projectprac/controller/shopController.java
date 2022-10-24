package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class shopController {

	@GetMapping(path = { "shop.action"})
	public String shop() {
		
		return "shop/shop3";
	}
	
	
}
