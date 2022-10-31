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
import com.projectprac.dto.OrderHistoryDto;

@Controller
@RequestMapping(path = { "/orderHistroy" })
public class OrderHistoryController {
	
	private final int PAGE_SIZE = 5; 	// 한 페이지에 표시되는 데이터 개수
	private final int PAGER_SIZE = 5;	// 한 번에 표시할 페이지 번호 개수
	private final String LINK_URL = "orderHistory.action"; // 페이지 번호를 클릭했을 때 이동할 페이지 경로
	
	@Autowired
	@Qualifier("orderHistoryService")
	private OrderHistoryService orderHistoryService;
	
	
	@GetMapping(path = { "/orderHistory.action" })
	public String showOrderList(@RequestParam(defaultValue = "1") int pageNo, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )
		// 2. 데이터 처리 ( 데이터 조회 )		
		List<OrderHistoryDto> orderHistory = orderHistoryService.findOrderHistoryByPage(pageNo, PAGE_SIZE);
		int orderHistoryCount = orderHistoryService.findOrderHistoryCount();
		
		ThePager pager = new ThePager(orderHistoryCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);
		
		// 3. View에서 읽을 수 있도록 데이터 저장
		model.addAttribute("orderHistory", orderHistory);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);
		
		// 4. View or Controller로 이동
		return "mypage/orderHistory"; 	// /WEB-INF/views/ + board/list + .jsp
	}
	
	@GetMapping(path = { "/orderHistoryDetail.action" })
	public String showOrderHistoryDetail(@RequestParam(defaultValue = "-1") int orderHistoryNo, 
								  @RequestParam(defaultValue = "-1") int pageNo,
								  HttpSession session, 
								  Model model) {		
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )	
		if (orderHistoryNo == -1 || pageNo == -1) { // 요청 데이터가 잘못된 경우
			return "redirect:orderHistory.action";
		}
		
		// 2. 데이터 처리
		ArrayList<Integer> readList = (ArrayList<Integer>)session.getAttribute("read-list");
		if (readList == null) { // 세션에 목록이 없으면 
			readList = new ArrayList<>(); // 목록 새로 만들기
			session.setAttribute("read-list", readList); // 세션에 목록 등록
		}
		
		
		OrderHistoryDto orderHistory = orderHistoryService.findOrderHistoryByOrderHistoryNo(orderHistoryNo);
		
		if (orderHistory == null) { // 조회되지 않은 경우 (글 번호가 잘못되었거나 또는 삭제된 글인 경우)
			return "redirect:orderHistory.action";
		}
		
		// 3. View에서 읽을 수 있도록 데이터 전달
		model.addAttribute("orderHistory", orderHistory);
		model.addAttribute("pageNo", pageNo);		
		
		// 4. View 또는 Controller로 이동
		return "mypage/orderHistoryDetail";
	}
}

