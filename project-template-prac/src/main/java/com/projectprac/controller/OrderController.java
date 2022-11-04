package com.projectprac.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.CouponDto;
import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.service.CouponService;
import com.projectprac.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;

	public List<CouponMakeDto> CouponMakeList(HttpSession session) {

		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		CouponDto coupon;
		List<CouponMakeDto> couponMakes = new ArrayList<>();
		List<CouponMakeDto> couponMakeDtos = couponService.showCouponList(customer.getCustomerId());
		for (CouponMakeDto couponMakeDto : couponMakeDtos) {
			coupon = couponService.findCouponByCouponId(couponMakeDto.getCouponId());
			couponMakeDto.setCouponDto(coupon);
			couponMakes.add(couponMakeDto);
		}
		return couponMakes;

	}

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	private CouponService couponservice;

	@GetMapping(path = { "order" })
	public String order(HttpSession session, Model model) {

		List<ProductDto> products = new ArrayList<>();
		List<ProductDto> productIds = (List<ProductDto>) session.getAttribute("productIds");

		if (productIds != null) {
			for (ProductDto product : productIds) {
				product = orderService.showOrder(product.getProdId());
				products.add(product);
			}
		}

		List<CouponMakeDto> couponMakeDtos = CouponMakeList(session);
		List<CouponMakeDto> couponMakes = new ArrayList<>();
		for (CouponMakeDto couponMake : couponMakeDtos) {
			if (!couponMake.isCouponDeleted()) {
				couponMakes.add(couponMake);
			}
		}
		session.setAttribute("products", products);
		model.addAttribute("couponMakes", couponMakes);
		return "shop/order";
	}

	@PostMapping(path = { "update-order" })
	public String updateOrder(ProductDto product, HttpSession session) {
		List<ProductDto> productIds = new ArrayList<>();
		if (session.getAttribute("productIds") != null) {
			productIds = (List<ProductDto>) session.getAttribute("productIds");
			for (ProductDto productId : productIds) {
				if (productId.getProdId() == product.getProdId()) {
					System.out.printf("prodId : %d 중복\n", product.getProdId());
					return "shop/shop";
				}
			}
		}
		productIds.add(product);
		session.setAttribute("productIds", productIds);
		return "shop/shop";
	}

	@GetMapping(path = { "delete-order" })
	public String deleteOrder(@RequestParam(defaultValue = "-1") int prodId, HttpSession session) {

		if (prodId == -1) {
			return "redirect:order";
		}

		List<ProductDto> productIds = (List<ProductDto>) session.getAttribute("productIds");
		for (ProductDto product : productIds) {
			if (product.getProdId() == prodId) {
				productIds.remove(product);
				session.setAttribute("productIds", productIds);
				return "redirect:order";
			}
		}

		return "redirect:order";

	}

	@GetMapping(path = { "delete-all-order" })
	public String deleteAllOrder(HttpSession session) {
		session.removeAttribute("productIds");
		return "redirect:order";

	}

	@GetMapping(path = { "coupon-apply" })
	public String couponApply(@RequestParam(defaultValue = "-1") String customerId, CouponMakeDto couponmake,
			Model model) {
		List<CouponMakeDto> coupons = couponservice.showCouponList(customerId);

		return "redirect:order";

	}

	@GetMapping(path = { "show-coupon" })
	public String showCouponForm(HttpSession session, Model model) {
		List<CouponMakeDto> couponMakeDtos = CouponMakeList(session);
		List<CouponMakeDto> couponMakes = new ArrayList<>();
		for (CouponMakeDto couponMake : couponMakeDtos) {
			if (!couponMake.isCouponDeleted()) {
				couponMakes.add(couponMake);
			}
		}
		model.addAttribute("couponMakes", couponMakes);
		System.out.println(couponMakes);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		String today = sdf.format(cal.getTime());
		model.addAttribute("today", today);

		return "mypage/coupon";

	}

//	public List<CouponMakeDto> CouponMakeList(HttpSession session) {
//	
//		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
//		CouponDto coupon;
//		List<CouponMakeDto> couponMakes = new ArrayList<>();
//		List<CouponMakeDto> couponMakeDtos = couponService.showCouponList(customer.getCustomerId());
//		for (CouponMakeDto couponMakeDto : couponMakeDtos) {
//			coupon = couponService.findCouponByCouponId(couponMakeDto.getCouponId());
//			couponMakeDto.setCouponDto(coupon);
//			couponMakes.add(couponMakeDto);
//		}
//		return couponMakes;
//		
}
