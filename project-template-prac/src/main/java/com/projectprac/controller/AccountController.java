package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // @Component + Web configuration
public class AccountController {

	@GetMapping(path = { "login" }) // FrontController에 연결 설정
	public String login() {
		return "account/login"; // WEB-INF/views/ + home + .jsp
	}

	@GetMapping(path = { "register" }) // FrontController에 연결 설정
	public String register() {
		return "account/register"; // WEB-INF/views/ + home + .jsp
	}

}
