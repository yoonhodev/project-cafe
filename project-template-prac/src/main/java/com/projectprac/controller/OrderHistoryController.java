package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.RawOrderHistoryDetailDto;
import com.projectprac.dto.RawOrderHistoryDto;
import com.projectprac.service.OrderHistoryService;

@Controller
//@RequestMapping(path = { "/orderHistory" })
public class OrderHistoryController {
	
	@Autowired
	@Qualifier("orderHistoryService")
	private OrderHistoryService orderHistoryService;
	
	@GetMapping(path = { "orderHistory" })
	public String showOrderList(Model model, HttpSession session) {
		
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		String customerId = customer.getCustomerId();
		System.out.println(customerId);
		List<OrderDto> orders = orderHistoryService.selectOrderHistoryByCustomerId(customerId);
		
		for (OrderDto order : orders) {
			List<OrderDetailDto> details = orderHistoryService.selectOrderDetailHistoryByOrderId(order.getOrderId());
			for (OrderDetailDto detail : details) {
				detail.setProductDto(orderHistoryService.selectProductByProductId(detail.getProdId()));
			}
			
			order.setStoreName(orderHistoryService.selectStoreNameByStoreId(order.getStoreId()));
			
			int total = 0;
			for (OrderDetailDto detail : details) {
				total = total + (detail.getProductDto().getProdPrice() * detail.getAmount());
				
			}
			order.setTotal(total);
			order.setOrderDetailDtos(details);
		}
		
		orders.forEach(System.out::println);
		
		model.addAttribute("orders", orders);
		//model.addAttribute("orderDetails", orderDetails);
		
		return "mypage/orderHistory";
	}
}

