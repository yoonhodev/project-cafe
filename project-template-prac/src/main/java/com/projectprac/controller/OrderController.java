package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.service.OrderService;

@Controller

public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	List<ProductDto> productIds = new ArrayList<>();
	
	@GetMapping(path = { "order" })
	
	public String order(Model model) {
		
		List<ProductDto> products = new ArrayList<>();
		System.out.println(2);
		for (ProductDto product : productIds) {
			product = orderService.showOrder(product.getProdId());
			products.add(product);
			System.out.println(3);
		}
		
		// View에서 읽을 수 있도록 데이터 저장
		model.addAttribute("products", products);
		System.out.println("--------------------------");
		return "shop/order";
	}
	
	@PostMapping(path = { "update-order" })
	public String updateOrder(ProductDto product) {
		
		productIds.add(product);
		System.out.println(1);
		return "shop/shop";
		
	}
	
}
