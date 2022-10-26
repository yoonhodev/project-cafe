package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.service.OrderService;

@Controller

public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@GetMapping(path = { "order" })
	public String order() {
		
		return "shop/order";
	}
	
	@PostMapping(path = {"order"})
	@ResponseBody
	public String updateOrder(OrderDto orderDto, OrderDetailDto orderDetailDto, OrderDto orderDetailId) {
		orderService.updateOrder(orderDetailId);
		
		return "success";
	}
}
