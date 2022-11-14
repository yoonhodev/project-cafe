package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.CustomerDto;
import com.projectprac.service.AccountControlService;
import com.projectprac.ui.ThePager;

@Controller
public class AccountControlController {

	private final int PAGE_SIZE = 10; 	// 한 페이지에 표시되는 데이터 개수
	private final int PAGER_SIZE = 5;	// 한 번에 표시할 페이지 번호 개수
	private final String LINK_URL = "accountControl"; // 페이지 번호를 클릭했을 때 이동할 페이지 경로
	
	
	@Autowired
	@Qualifier("accountcontrolService")
	private AccountControlService accountcontrolService;
	
	@GetMapping(path = {"accountControl"})
	public String showAllUserAccount(CustomerDto customerDto,Model model, @RequestParam(defaultValue = "1")int pageNo) {
		
		List<CustomerDto> customers123 = accountcontrolService.selectAllUserAccount(customerDto,pageNo,PAGE_SIZE); 
		int accountCount = accountcontrolService.countAllCustomer();
		
		ThePager pager = new ThePager(accountCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);
		
		model.addAttribute("customers123", customers123);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);
		return "accountControl/accountControl";
	}
	
	@GetMapping(path = {"searchCustomerId"})
	public String searchCustomerId(@RequestParam(defaultValue = "null") String customerId, Model model) {
		
		List<CustomerDto> customers1234 = accountcontrolService.selectAllUserAccountForSearch();
		if(customerId != null ) {
			List<CustomerDto> selectCustomer = accountcontrolService.selectCustomerBycustomerId(customerId);
			
			System.out.println(customerId);
			
			model.addAttribute("selectCustomer" ,selectCustomer);
			
		}
		
		
		model.addAttribute("customers1234",customers1234);
		return "accountControl/accountControl";
	}
	
	
	@GetMapping(path = {"/{customerId}/changeAdmin"})
	public String changeToAdmin(@PathVariable("customerId")String customerId) {
		
		accountcontrolService.changeToAdmin(customerId);
		
		return "redirect:/accountControl";
	}
	
	@GetMapping(path = {"/{customerId}/changeUser"})
	public String changeToUser(@PathVariable("customerId")String customerId) {
		
		accountcontrolService.changeToUser(customerId);
		
		return "redirect:/accountControl";
	}
	
}
