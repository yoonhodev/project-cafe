package com.projectprac.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.CustomerDto;
import com.projectprac.service.MypageService;

@Controller
public class MypageController {
	
	
	@Autowired
	@Qualifier("mypageService")
	private MypageService mypageService;
	
	
	@GetMapping(path = { "mypage" }) // FrontController에 연결 설정
	public String mypage(HttpSession session, Model model) {
		
		//로그인 유저 속성 가져옴
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		
		//로그인 유저 속성을 통해 MypageMapper에서 selectCouponByCustomerId 값 가져옴
		int count = mypageService.selectCouponByCustomerId(customer.getCustomerId());
		
		model.addAttribute("couponcount", count);
		
		
		return "mypage/mypage"; // WEB-INF/views/ + account/register + .jsp
	}
	
	@GetMapping(path = { "editAccount" })
	public String editAccount() {
		return "mypage/editAccount";
	}
	
	@GetMapping(path = { "editComplete" })
	public String editComplete() {
		return "mypage/editComplete";
	}
	
	@GetMapping(path = { "deleteAccount" })
	public String deleteAccount() {
		return "mypage/deleteAccount";
	}
	
	@GetMapping(path = { "deleteComplete" })
	public String deleteComplete() {
		return "mypage/deleteComplete";
	}
	
	@GetMapping(path = { "orderHistory" })
	public String orderHistory() {
		
		return "mypage/orderHistory";
	}
	
	@GetMapping(path = { "favoriteStore" })
	public String favoriteStore() {
		
		return "mypage/favoriteStore";
	}
	
	@PostMapping(path = { "editAccount" })
	public String edAccount() {
		
		return "mypage/editComplete";
	
	}
	
	@PostMapping(path = { "deleteAccount" })
	public String delAccount() {
		
		return "mypage/deleteComplete";
	
	}
}
