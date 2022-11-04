package com.projectprac.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.dto.CustomerDto;
import com.projectprac.service.MypageService;

@Controller
public class MypageController {
	
	
	@Autowired
	@Qualifier("mypageService")
	private MypageService mypageService;
	
	
	@GetMapping(path = { "mypage" }) // FrontController에 연결 설정
	public String mypage(HttpSession session) {
		
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		int count = mypageService.selectCouponByCustomerId(customer.getCustomerId());
		return "mypage/mypage"; // WEB-INF/views/ + account/register + .jsp
	}
	
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
