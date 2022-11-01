package com.projectprac.controller;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.ProductDto;
import com.projectprac.service.OrderService;

@Controller

public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@GetMapping(path = { "order" })
	public String order(HttpSession session) {
		
		List<ProductDto> products = new ArrayList<>();
		LinkedHashSet<ProductDto> productIds = null;
		
		productIds = (LinkedHashSet<ProductDto>) session.getAttribute("productIds");
		if(productIds != null) {
			for (ProductDto product : productIds) {
				product = orderService.showOrder(product.getProdId());
				products.add(product);
			}
		} 
		session.setAttribute("products", products);
		return "shop/order";
	}
	
	@PostMapping(path = { "update-order" })
	public String updateOrder(ProductDto product, HttpSession session) {
		LinkedHashSet<ProductDto> productIds = new LinkedHashSet();
		productIds.add(product);
		session.setAttribute("productIds", productIds);
		return "shop/shop";
	}
	
	@GetMapping(path = {"delete-all-order"})
	public String deleteAllOrder(HttpSession session) {
		
		
		session.removeAttribute("productIds");
		return "redirect:order";
	}
		
	}
	

