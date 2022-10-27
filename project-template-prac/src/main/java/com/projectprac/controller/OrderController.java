package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.service.OrderService;

@Controller

public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	List<ProductDto> products = new ArrayList<>();
	
	@GetMapping(path = { "order" })
	public String order() {

		for (ProductDto product : products) {
			product = orderService.showOrder(product.getProdId());
			System.out.println(product);
		}

		return "shop/order";
	}
	
	@PostMapping(path = { "update-order" })
	public String updateOrder(ProductDto product) {
		
		
		products.add(product);
		
		return "shop/shop";
		
	}
	
}
