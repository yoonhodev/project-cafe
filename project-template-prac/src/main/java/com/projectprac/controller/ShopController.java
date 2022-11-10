package com.projectprac.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.dto.ProductDto;
import com.projectprac.service.OrderService;

@Controller
public class ShopController {
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderservice;

	@GetMapping(path = { "shop" })
	public String shop(HttpSession session) {
		List<ProductDto> products = orderservice.showMenuImg();

		session.setAttribute("productViews", products);
		return "shop/shop";
		
		}		
	}
