package com.projectprac.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller // @Component + Web configuration
public class AccountController {

	@GetMapping(path = { "register" }) // FrontController에 연결 설정
	public String showRegisterForm() {
		return "account/register"; // WEB-INF/views/ + account/register + .jsp
	}

	@GetMapping(path = { "login" }) // FrontController에 연결 설정
	public String showLoginForm() {
		return "account/login"; // WEB-INF/views/ + account/login + .jsp
	}
	
	@PostMapping(path = { "login" })
	public String login(String memberId, String passwd, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
		// 2. 요청 처리
		// MemberDto member = accountService.findMemberByIdAndPasswd(memberId, passwd);
		
//		if (member != null) {
//			session.setAttribute("loginuser", member);
//		} else {
//			model.addAttribute("loginfail", memberId);
//			return "account/login"; // /WEB-INF/views/ + account/login + .jsp
//		}
		
		// 3. View에서 사용하도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:home";

	}
	
	@GetMapping(path = { "logout" })
	public String logout(HttpSession session) {
		session.removeAttribute("loginuser");
		return "home";
	}

}
