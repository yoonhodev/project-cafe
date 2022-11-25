package com.projectprac.controller;

import java.util.Date;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.common.Util;
import com.projectprac.dto.AddressDto;
import com.projectprac.dto.BoardDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.MypageDto;
import com.projectprac.service.MypageService;
import com.projectprac.ui.ThePager;

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
	public String editAccount(String customerId, String postId, String address, String detailAddress, String extraAddress, HttpSession session, Model model) {
		
//		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		MypageDto mypageDto = mypageService.selectPwPhoneMailbyCustomerId(customerId);
		AddressDto addressDto = mypageService.selectAddressbyCustomerId(customerId);
		
//		System.out.println(customer.getCustomerId());
		System.out.println("getMapping " + customerId);
		System.out.println("getMapping " + addressDto);
		
		model.addAttribute("mypageDto", mypageDto);
		model.addAttribute("addressDto",addressDto);
		
		return "mypage/editAccount";
	}
	
	@PostMapping(path = { "editAccount" })
	public String editAccount(MypageDto mypageDto, AddressDto addressDto, Model model) {
		
	
//		addressDto = mypageService.selectAddressbyCustomerId(mypageDto.getCustomerId());

		System.out.println("postMapping(mypageDto) " + mypageDto); // null?
		System.out.println("postMapping(addressDto) " + addressDto);
	
		
		System.out.println("postMapping(oldpasswd) " + mypageDto.getOldpasswd());
		System.out.println("postMapping(passwd) " + mypageDto.getPasswd());
		System.out.println("postMapping(passwdchk) " + mypageDto.getPasswdchk());
		
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		if (!mypageDto.getPasswd().equals(mypageDto.getOldpasswd())) { // 비밀번호 확인 체크
			model.addAttribute("msg", "비밀번호를 확인해 주세요");
			model.addAttribute("url", "editAccount");

			return "modules/alert";
		}
		
		if (!mypageDto.getPasswd().equals(mypageDto.getPasswdchk())) { // 비밀번호 확인 체크
			model.addAttribute("msg", "새 비밀번호가 일치하지 않습니다");
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
	
	@GetMapping(path = { "editComplete" })
	public String editComplete() {
		return "mypage/editComplete";
	}
	
	
	
	
	@GetMapping(path = { "deleteAccount" })
	public String deleteAccount() {
		return "mypage/deleteAccount";
	}
	
	@PostMapping(path = { "deleteAccount" })
	public String deleteAccount(String passwd, String textchk, MypageDto mypageDto, HttpSession session, Model model) {
		
		CustomerDto customer = (CustomerDto) session.getAttribute("loginuser");
		passwd = Util.getHashedString(passwd, "SHA-256");
		
		if (!customer.getPasswd().equals(passwd)) { // 비밀번호 확인 체크
			model.addAttribute("msg", "비밀번호를 확인해 주세요");
			model.addAttribute("url", "deleteAccount");
			return "modules/alert";
		}
		
		
		if (!textchk.equals("회원 탈퇴에 동의합니다")) {
			
			model.addAttribute("msg", "인증 텍스트가 일치하지 않습니다");
			model.addAttribute("url", "deleteAccount");
			return "modules/alert";
		}

		session.removeAttribute("loginuser");
		mypageService.deleteAccount(mypageDto);
		return "mypage/deleteComplete";
	}

	@GetMapping(path = { "deleteComplete" })
	public String deleteComplete() {
		return "mypage/deleteComplete";
	}
	
	
}
