package com.projectprac.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.CustomerDto;
import com.projectprac.service.AccountService;

@Controller // @Component + Web configuration
public class AccountController {

	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@GetMapping(path = { "register" }) // FrontController에 연결 설정
	public String showRegisterForm() {
		return "account/register"; // WEB-INF/views/ + account/register + .jsp
	}

	@PostMapping(path = { "register" })
	public String register(@Valid CustomerDto customer, BindingResult br) { // @Valid에 의해 검출된 오류 정보가 저장된 객체
		
		if (br.hasErrors()) {
			System.out.println("유효성 검사 오류 발생");
			return "redirect:register";
		}
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println(customer);

		// 2. 요청 처리
		accountService.registerCustomer(customer);

		// 3. View에서 사용할 수 있도록 데이터 전달 / 4. View 또는 다른 Controller로 이동
		return "redirect:login";

	}
	
	@GetMapping(path = { "login" }) // FrontController에 연결 설정
	public String showLoginForm() {
		return "account/login"; // WEB-INF/views/ + account/login + .jsp
	}
	
	@PostMapping(path = { "login" })
	public String login(String customerId, String passwd, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
		// 2. 요청 처리
		CustomerDto customer = accountService.findCustomerByIdAndPasswd(customerId, passwd); 

		if (customer != null) {
			session.setAttribute("loginuser", customer);
		} else {
			model.addAttribute("loginfail", customerId);
			return "account/login";
		}
		System.out.println(customer);
//		String temp = customer.getCustomerId();
//		session.getAttribute
//		System.out.println(temp);
		// 3. View에서 사용하도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:home";

	}
	
	@GetMapping(path = { "logout" })
	public String logout(HttpSession session) {
		session.removeAttribute("loginuser");
		return "redirect:home";
	}

}
