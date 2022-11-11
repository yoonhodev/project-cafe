package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.projectprac.dto.RawOrderCountDto;
import com.projectprac.dto.RawOrderDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.FixedSpendService;
import com.projectprac.service.RawOrderService;

@Controller
public class RawOrderController {

	@Autowired
	@Qualifier("fixedspendService")
	private FixedSpendService fixedSpendService;
	
	@Autowired
	@Qualifier("rawOrderService")
	private RawOrderService rawOrderService;
	
	@GetMapping(path = { "raw-order" })
	public String rawOrder(Model model) { // raw-order 화면
		
		List<StoreDto> stores = fixedSpendService.showAllStore(); // 지점 목록 조회
		model.addAttribute("stores", stores);
		
		List<String> bigCategories = rawOrderService.showBigCategory(); // 대분류 목록 조회
		model.addAttribute("bigCategories", bigCategories);
		
		return "raw-order/raw-order";
		
	}
	
	@GetMapping(path = { "searchSmCate" }, produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<String> smallCategory(Model model, String bigCategory) { // 소분류 목록 조회
		
		List<RawOrderDto> smallCategories = rawOrderService.showSmallCategory(); // 소분류 목록 조회
		List<String> smallCates = new ArrayList<>();
		
		for (RawOrderDto rawOrder : smallCategories) {
			if (rawOrder.getBigCategory().equals(bigCategory)) { // 대분류 속 소분류 조회
				smallCates.add(rawOrder.getSmallCategory());
			}
		}
		
		return smallCates;
		
	}
	
	@PostMapping(path = { "lookupRaw" })
	@ResponseBody
	public String lookUp(Model model, String bigCategory, 
									  String smallCategory,
									  @RequestParam(defaultValue = "-1") String rawName) { // 상품 목록 조회 분류
		
		if (bigCategory.equals("null") && rawName.equals("-1")) { // 검색어도 없고 대분류도 없을 때
			return "1";
		} else if (!bigCategory.equals("null") && !(smallCategory.equals("null") || smallCategory.equals("전체보기"))
											   && !rawName.equals("-1")) { // 대분류와 소분류, 검색어가 있을 때
			return "2";
		} else if (!bigCategory.equals("null") && !rawName.equals("-1")) { // 대분류와 검색어가 있을 때
			return "3";
		} else if (!bigCategory.equals("null") && !(smallCategory.equals("null") || smallCategory.equals("전체보기"))) { // 대분류와 소분류가 있을 때
			return "4";
		} else if (!bigCategory.equals("null")) { // 대분류만 있을 때
			return "5";
		} else if (!rawName.equals("-1")) { // 검색어만 있을 때
			return "6";
		}
		
		return "0";
		
	}
	
	@GetMapping(path = { "rawOrderList" })
	public String rawOrderList(Model model, @RequestParam(defaultValue = "-1") String bigCategory,
											@RequestParam(defaultValue = "-1") String smallCategory,
											@RequestParam(defaultValue = "-1") String rawName) { // 조건에 따른 상품 목록 조회
		
		List<RawOrderDto> rawOrders = rawOrderService.selectRawOrder(bigCategory, smallCategory, rawName);
		model.addAttribute("rawOrders", rawOrders);
		return "raw-order/rawOrderList"; // 상품 리스트 호출
		
	}
	
	int lambdaRawId;
	@PostMapping(path = { "addCart" })
	public String rawOrderList(HttpSession session, Model model, @RequestParam(value="rawIdList[]") List<Integer> rawIdList,
																 @RequestParam(value="countList[]") List<Integer> countList) {

		List<RawOrderCountDto> rawOrderCarts = (List<RawOrderCountDto>) session.getAttribute("rawOrderCarts");
		if (rawOrderCarts == null) {
			rawOrderCarts = new ArrayList<>();
		} else {
			for (int i = 0; i < rawIdList.size(); i++) {
				lambdaRawId = rawIdList.get(i);
				rawOrderCarts.removeIf(item -> item.getRawOrderDto().getRawId() == lambdaRawId);
			}
		}
		
		RawOrderDto rawOrder;
		for (int i = 0; i < rawIdList.size(); i++) {
			rawOrder = rawOrderService.selectRawOrderByRawId(rawIdList.get(i)); // 선택한 상품 조회
			RawOrderCountDto rawOrderCart = new RawOrderCountDto();
			rawOrderCart.setRawOrderDto(rawOrder);
			rawOrderCart.setCount(countList.get(i));
			rawOrderCarts.add(rawOrderCart);
		}
		
		session.setAttribute("rawOrderCarts", rawOrderCarts);
		return "raw-order/cartList";
		
	}
	
	@PostMapping(path = { "addCartOne" })
	public String rawOrderOneLine(HttpSession session, Model model, int rawId, int count) { // 상품 한개 장바구니에 임시 삽입 및 목록 조회
		
		RawOrderDto rawOrder = rawOrderService.selectRawOrderByRawId(rawId); // 선택한 상품 조회
		RawOrderCountDto rawOrderCart = new RawOrderCountDto();
		rawOrderCart.setRawOrderDto(rawOrder);
		rawOrderCart.setCount(count);
		List<RawOrderCountDto> rawOrderCarts = (List<RawOrderCountDto>) session.getAttribute("rawOrderCarts");
		
		if (rawOrderCarts == null) {
			rawOrderCarts = new ArrayList<>();
		} else {
			for(RawOrderCountDto rawOrderCount : rawOrderCarts) {
				if(rawOrderCount.getRawOrderDto().getRawId() == rawId) { // 중복이면 추가하지 않음
					return "raw-order/cartList";
				}
			}
		}
		
		rawOrderCarts.add(rawOrderCart);
		session.setAttribute("rawOrderCarts", rawOrderCarts);
		return "raw-order/cartList";
		
	}
	
	@GetMapping(path = { "cartList" })
	public String cartList() {
		return "raw-order/cartList";
	}
	
	@GetMapping(path = { "allCartPop" })
	public String allPopCart(HttpSession session) {
		session.removeAttribute("rawOrderCarts");
		return "raw-order/cartList";
	}
	
	@GetMapping(path = { "cartPop" })
	public String popCart(HttpSession session, @RequestParam(defaultValue = "-1") String rawId) {
		List<RawOrderCountDto> rawOrderCarts = (List<RawOrderCountDto>) session.getAttribute("rawOrderCarts");
		rawOrderCarts.removeIf(item -> item.getRawOrderDto().getRawId() == Integer.parseInt(rawId));
		session.setAttribute("rawOrderCarts", rawOrderCarts);
		return "raw-order/cartList";
	}
	
	@PostMapping(path = { "insert-raw-order" })
	public String insertRawOrder(HttpSession session, String storeId, String orderDate) {
		List<RawOrderCountDto> rawOrderCounts = (List<RawOrderCountDto>) session.getAttribute("rawOrderCarts");
		System.out.println(rawOrderCounts);
		System.out.println(storeId);
		System.out.println(orderDate);
		
		return "raw-order/cartList";
	}
	
	
}
