package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {

	@GetMapping(path = { "order" })
	public String order() {
		
		return "shop/order";
	}
}
