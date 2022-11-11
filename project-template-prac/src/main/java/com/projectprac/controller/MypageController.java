package com.projectprac.controller;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.MypageDto;
import com.projectprac.service.MypageService;

@Controller
public class MypageController {
	
	
	@Autowired
	@Qualifier("mypageService")
	private MypageService mypageService;
	
	
	@GetMapping(path = { "mypage" }) // FrontController에 연결 설정
	public String mypage(HttpSession session, Model model) {
		
		//로그인 유저 속성 가져옴
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		
		//로그인 유저 속성을 통해 MypageMapper에서 selectCouponByCustomerId 값 가져옴
		int count = mypageService.selectCouponByCustomerId(customer.getCustomerId());
		
		model.addAttribute("couponcount", count);
		
		
		return "mypage/mypage"; // WEB-INF/views/ + account/register + .jsp
	}
	
	@GetMapping(path = { "editAccount" })
	public String editAccount(String customerId, HttpSession session, Model model) {
		
//		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
//		AddressDto address = mypageService.selectAddressByCustomerId(customer.getCustomerId());
//		System.out.println(address);
//		String accountAddress = address.getCustomerId();
//		
//		model.addAttribute("postid", accountAddress);
		
		return "mypage/editAccount";
	}
	
	@GetMapping(path = { "editComplete" })
	public String editComplete() {
		return "mypage/editComplete";
	}
	
	@GetMapping(path = { "deleteAccount" })
	public String deleteAccount() {
		return "mypage/deleteAccount";
	}
	
	@GetMapping(path = { "deleteComplete" })
	public String deleteComplete() {
		return "mypage/deleteComplete";
	}
	
	@GetMapping(path = { "orderHistory" })
	public String orderHistory() {
		
		return "mypage/orderHistory";
	}
	
	@GetMapping(path = { "favoriteStore" })
	public String favoriteStore() {
		
		return "mypage/favoriteStore";
	}
	
	@PostMapping(path = { "editAccount" })
	public String editAccount(@Valid MypageDto mypageDto, BindingResult br,String idchk, String passwdchk, Model model,
						   AddressDto addressDto) throws ParseException { // @Valid에 의해 검출된 오류 정보가 저장된 객체
		
		if (br.hasErrors()) {
			System.out.println("유효성 검사 오류 발생");
			return "redirect:editAccount";
		}
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		if (!mypageDto.getPasswd().equals(passwdchk)) { // 비밀번호 확인 체크
			model.addAttribute("msg", "비밀번호를 확인해 주세요");
			model.addAttribute("url", "editAccount");
			return "modules/alert";
		}
		
		// 2. 요청 처리
		
		mypageService.editAccount(mypageDto); // 회원 정보 변경
		mypageService.editAddress(addressDto);
		System.out.println(mypageDto);
		System.out.println(addressDto);

		// 3. View에서 사용할 수 있도록 데이터 전달 / 4. View 또는 다른 Controller로 이동
		return "mypage/editComplete";
	
	}
	
	@PostMapping(path = { "deleteAccount" })
	public String delAccount(HttpSession session) {
		session.removeAttribute("loginuser");
		return "mypage/deleteComplete";
	
	}
}
