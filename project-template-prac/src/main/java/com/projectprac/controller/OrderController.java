package com.projectprac.controller;

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
	
	List<ProductDto> products;
	
	@GetMapping(path = { "order" })
	public String order() {
		
		for (ProductDto product : products) {
			// product = orderService.showOrder(product);
			System.out.println(product);
		}
		
		return "shop/order";
	}
	
	@PostMapping(path = { "update-order" })
	public String updateOrder(ProductDto product) {
		
		products.add(product);
		
		return "shop/shop";
		
	}
	
//	@PostMapping(path = { "order" })
//	public String register(@Valid CustomerDto customer, BindingResult br) { // @Valid에 의해 검출된 오류 정보가 저장된 객체
//		
//		if (br.hasErrors()) {
//			System.out.println("유효성 검사 오류 발생");
//			return "redirect:register";
//		}
//		
//		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
//		System.out.println(customer);
//
//		// 2. 요청 처리
//		accountService.registerCustomer(customer);
//
//		// 3. View에서 사용할 수 있도록 데이터 전달 / 4. View 또는 다른 Controller로 이동
//		return "account/login";
//
//	}
	
	@PostMapping(path = { "order" })
	public String updateOrder(OrderDto orderDto, OrderDetailDto orderDetailDto, OrderDto orderDetailId, Model model) {
		
		
		orderService.updateOrder(orderDetailId);
		
//		model.addAttribute("orders", order);
		
		return "success";
		
	}
}
