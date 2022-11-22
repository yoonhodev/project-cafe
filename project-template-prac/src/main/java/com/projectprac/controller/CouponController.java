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

import com.projectprac.dto.CouponDto;
import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.service.CouponService;

@Controller // @Component + Web configuration
public class CouponController {

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
	
	@GetMapping(path = { "coupon" })
	public String showCouponForm(HttpSession session, Model model) {
		
		List<CouponMakeDto> couponMakeDtos = CouponMakeList(session);
		List<CouponMakeDto> couponMakes = new ArrayList<>();
		for (CouponMakeDto couponMake : couponMakeDtos) {
			if (!couponMake.isCouponDeleted()) {
				couponMakes.add(couponMake);
			}
		}
		
		model.addAttribute("couponMakes", couponMakes);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String today = sdf.format(cal.getTime());
        model.addAttribute("today", today);
		
		return "mypage/coupon";
		
	}

	@PostMapping(path = { "coupon" })
	public String createNewCoupon(HttpSession session, CouponDto coupon, Model model) {
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		// 2. 요청 처리
		int couponId;
		String customerId;
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		
		List<CouponMakeDto> couponMakes = CouponMakeList(session);
		for (CouponMakeDto couponMake : couponMakes) {
			couponId = couponMake.getCouponDto().getCouponId();
			customerId = couponMake.getCustomerId();
			if(couponId == coupon.getCouponId() && customerId.equals(customer.getCustomerId())) {
				model.addAttribute("msg", "이미 발급된 쿠폰입니다");
				model.addAttribute("url", "coupon");
				return "modules/alert";
			}
		}
		
		couponService.createNewCoupon(customer.getCustomerId(), coupon.getCouponId());

		// 3. View에서 사용할 수 있도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:coupon";
	}
	
	@PostMapping(path = { "deletecoupon" })
	public String deleteCoupon(HttpSession session, CouponMakeDto couponMake) {
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		// 2. 요청 처리
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		couponService.deleteCouponMake(customer.getCustomerId(), couponMake.getCouponMakeId());

		// 3. View에서 사용할 수 있도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:coupon";
	}

}
