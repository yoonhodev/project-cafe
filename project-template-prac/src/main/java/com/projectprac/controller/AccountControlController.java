package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.service.AccountControlService;

@Controller
public class AccountControlController {

	
	@Autowired
	@Qualifier("accountcontrolService")
	private AccountControlService accountcontrolService;
	
	@GetMapping(path = {"accountControl"})
	public String showAllUserAccount() {
		
		return "accountControl/accountControl";
	}
	
	
}
