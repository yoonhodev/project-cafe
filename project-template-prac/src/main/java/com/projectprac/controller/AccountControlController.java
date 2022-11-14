package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountControlController {

	
	@GetMapping(path = {"accountControl"})
	public String showAllUserAccount() {
		
		return "accountControl/accountControl";
	}
	
	
}
