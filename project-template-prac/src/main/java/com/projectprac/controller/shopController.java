package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class shopController {

	@GetMapping(path = { "shop" })
	public String shop() {
		
		return "shop/shop";
	}
	
	@GetMapping(path = { "cart" })
	public String cart() {
		return "shop/cart";
	}
	
}
