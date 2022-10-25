package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(path = {"/store"})
public class storeController {

	@GetMapping(path = {"store"})
	public String shop() {
		
		return "store-intro";
	}
	
	
}
