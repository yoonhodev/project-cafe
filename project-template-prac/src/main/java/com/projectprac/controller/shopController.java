package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.cartDto;


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
	
	@PostMapping(path = { "cart" })
	public String cartForm(cartDto dto) {
		
		System.out.println(dto.getProduct());
		
		return "cart";
	}
}
