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

	@GetMapping(path = { "coupon" })
	public String showCouponForm(HttpSession session, Model model) {
		
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		CouponDto coupon;
		List<CouponMakeDto> couponMakes = new ArrayList<>();
		List<CouponMakeDto> couponMakeDtos = couponService.showCouponList(customer.getCustomerId());
		for (CouponMakeDto couponMakeDto : couponMakeDtos) {
			coupon = couponService.findCouponByCouponId(couponMakeDto.getCouponId());
			couponMakeDto.setCouponDto(coupon);
			couponMakes.add(couponMakeDto);
		}
		model.addAttribute("couponMakes", couponMakes);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String today = sdf.format(cal.getTime());
        model.addAttribute("today", today);
		
		return "mypage/coupon";
		
	}

	@PostMapping(path = { "coupon" })
	public String createNewCoupon(HttpSession session, CouponDto coupon) {
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		// 2. 요청 처리
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
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
	
	

//	@GetMapping(path = { "register" }) // FrontController에 연결 설정
//	public String showRegisterForm() {
//		return "account/register"; // WEB-INF/views/ + account/register + .jsp
//	}
//
//	@PostMapping(path = { "register" })
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
//	
//	@GetMapping(path = { "login" }) // FrontController에 연결 설정
//	public String showLoginForm() {
//		return "account/login"; // WEB-INF/views/ + account/login + .jsp
//	}
//	
//	@PostMapping(path = { "login" })
//	public String login(String customerId, String passwd, HttpSession session, Model model) {
//		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
//		// 2. 요청 처리
//		CustomerDto customer = accountService.findCustomerByIdAndPasswd(customerId, passwd); 
//
//		if (customer != null) {
//			session.setAttribute("loginuser", customer);
//		} else {
//			model.addAttribute("loginfail", customerId);
//			return "account/login";
//		}
//		
//		System.out.println(customer);
//		// 3. View에서 사용하도록 데이터 전달
//		// 4. View 또는 다른 Controller로 이동
//		return "home";
//
//	}
//	
//	@GetMapping(path = { "logout" })
//	public String logout(HttpSession session) {
//		session.removeAttribute("loginuser");
//		return "redirect:home";
//	}
//	
//	@GetMapping(path = { "findpasswd" })
//	public String findPasswd() {
//		return "account/findpasswd";
//	}
//	
//	@PostMapping(path = { "findpasswd" })
//	public String findpasswd(String customerId, String phone, HttpSession session, Model model) {
//		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
//		// 2. 요청 처리
//		CustomerDto customer = accountService.findCustomerByIdAndPhone(customerId, phone);
//
//		if (customer != null) {
//			session.setAttribute("founduser", customer);
//		} else {
//			model.addAttribute("userfindfail", customerId);
//			return "account/findpasswd";
//		}
//
//		// 3. View에서 사용하도록 데이터 전달
//		// 4. View 또는 다른 Controller로 이동
//		return "redirect:resetpasswd";
//
//	}
//	
//	@GetMapping(path = { "resetpasswd" })
//	public String resetPasswd() {
//		return "account/resetpasswd";
//	}
//	
//	@PostMapping(path = { "resetpasswd" })
//	public String resetpasswd(String passwd, String passwdCheck, HttpSession session, Model model) {
//		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
//		// 2. 요청 처리
//		System.out.printf("%s\n", passwd);
//		System.out.printf("%s\n", passwdCheck);
//		
//		if (!passwd.equals(passwdCheck)) {
//			System.out.println(3);
//			model.addAttribute("resetpasswdfail", passwd);
//			return "account/findpasswd";
//		}
//		System.out.println(46);
//		CustomerDto customer = (CustomerDto) session.getAttribute("founduser");
//		accountService.updatePassword(customer.getCustomerId(), passwd);
//
//		// 3. View에서 사용하도록 데이터 전달
//		// 4. View 또는 다른 Controller로 이동
//		return "redirect:login";
//
//	}

}
