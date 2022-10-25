package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ShopController {

	@GetMapping(path = { "shop" })
	public String shop() {
		
		return "shop/shop";
	}
	
}
