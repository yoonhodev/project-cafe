package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping(path = { "userName" })
	public String userName() {
		
		return "mypage/userName";
	}
	
	@GetMapping(path = { "stampNumber" })
	public String stampNumber() {
		
		return "mypage/stampNumber";
	}
	
	@GetMapping(path = { "couponNumber" })
	public String couponNumber() {
		
		return "mypage/couponNumber";
	}
	
	@GetMapping(path = { "orderHistory" })
	public String orderHistory() {
		
		return "mypage/orderHistory";
	}
	
	@GetMapping(path = { "favoriteStore" })
	public String favoriteStore() {
		
		return "mypage/favoriteStore";
	}
}
