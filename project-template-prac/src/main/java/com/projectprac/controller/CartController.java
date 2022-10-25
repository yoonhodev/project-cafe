package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {

	@GetMapping(path = { "cart" })
	public String cart() {
		
		return "shop/cart";
	}
}
