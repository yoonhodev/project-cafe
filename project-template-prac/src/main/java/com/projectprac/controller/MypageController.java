package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping(path = { "mypage" }) // FrontController에 연결 설정
	public String mypage() {
		return "mypage/mypage"; // WEB-INF/views/ + account/register + .jsp
	}
	
	/*
	@GetMapping(path = { "coupon" })
	public String coupon() {
		return "mypage/coupon";
	}
	*/
	
	@GetMapping(path = { "editAccount" })
	public String editAccount() {
		return "mypage/editAccount";
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
