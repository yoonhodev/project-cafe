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

import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.RawOrderHistoryDetailDto;
import com.projectprac.dto.RawOrderHistoryDto;
import com.projectprac.service.OrderHistoryService;

@Controller
@RequestMapping(path = { "/orderHistory" })
public class OrderHistoryController {
	
	@Autowired
	@Qualifier("orderHistoryService")
	private OrderHistoryService orderHistoryService;
	
	@GetMapping(path = { "orderHistory" })
	public String showOrderList(Model model, HttpSession session) {
		
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		String customerId = customer.getCustomerId();
		List<OrderDto> orders = orderHistoryService.selectOrderHistoryByCustomerId(customerId);
//		for (RawOrderHistoryDto historyDto : histories) {
//			List<RawOrderHistoryDetailDto> details = rawOrderService.showOrderedDetail(historyDto.getOrderRawId());
//			List<RawOrderHistoryDetailDto> historyDetails = new ArrayList<>();
//			for (RawOrderHistoryDetailDto detail : details) {
//				detail.setRawOrderDto(rawOrderService.selectRawOrderByRawId(detail.getRawId()));
//				historyDetails.add(detail);
//			}
//			historyDto.setProductName(historyDetails.get(0).getRawOrderDto().getRawName());
//			historyDto.setStoreName(rawOrderService.selectStoreNameByStoreId(historyDto.getStoreId()));
//			historyDto.setSize(historyDetails.size()-1);
//			int total = 0;
//			for (RawOrderHistoryDetailDto raw : historyDetails) {
//				total = total + (raw.getRawOrderDto().getRawPrice() * raw.getAmount());
//				
//			}
//			historyDto.setTotal(total);
//			historyDto.setHistoryDetailDtos(historyDetails);
//			historyDtos.add(historyDto);
//		}
		for (OrderDto orderDto : orders) {
//			List<OrderDto> details = OrderHistroyService.showOrderDetail()
			
		}
		
		//model.addAttribute("orderHistroyDto",orderHistroyDto);

		System.out.println(customerId);
		//System.out.println(orderHistroyDto);
		return "mypage/orderHistory";
	}
}

