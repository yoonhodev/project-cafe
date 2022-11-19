package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.service.OrderHistoryService;
import com.projectprac.ui.ThePager;
import com.projectprac.dto.AddressDto;
import com.projectprac.dto.OrderHistoryDto;

@Controller
@RequestMapping(path = { "/orderHistroy" })
public class OrderHistoryController {
	
	@Autowired
	@Qualifier("orderHistoryService")
	private OrderHistoryService orderHistoryService;
	
	@GetMapping(path = { "/orderHistory.action" })
	public String showOrderList(String customerId, Model model) {
		
		OrderHistoryDto orderHistroyDto = orderHistoryService.selectOrderHistoryByCustomerId(customerId);
		
		System.out.println(customerId);
		System.out.println(orderHistroyDto);
		
		model.addAttribute("orderHistroyDto",orderHistroyDto);

		return "mypage/orderHistory";
	}
}

