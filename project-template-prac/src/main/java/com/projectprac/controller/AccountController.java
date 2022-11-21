package com.projectprac.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;
import com.projectprac.service.AccountService;

@Controller // @Component + Web configuration
public class AccountController {

	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	// 회원가입) 회원가입 화면 연결
	@GetMapping(path = { "register" }) // FrontController에 연결 설정
	public String showRegisterForm(String customerId, HttpSession session, Model model) {
		return "account/register"; // WEB-INF/views/ + account/register + .jsp
	}

	// 회원 가입) 아이디 중복 체크
	@GetMapping(path = { "duplecheck" })
	@ResponseBody
	public String idDupleCheck(@RequestParam(defaultValue = "0") String customerId, HttpSession session, Model model) {
		
		List<CustomerDto> customers = accountService.showAllCustomer(); // 모든 회원 조회
		
		for (CustomerDto customer : customers) {
			 if(customer.getCustomerId().equals(customerId)) { // 아이디 중복 체크
				 return customerId;
			 }
		}
		
		return "0";
		
	}
	
	// 회원가입) 회원 정보 저장
	@PostMapping(path = { "register" })
	public String register(@Valid CustomerDto customer, BindingResult br, String idchk, String passwdchk, Model model,
						   AddressDto addressDto, String regi_sex) { // @Valid에 의해 검출된 오류 정보가 저장된 객체
		
		System.out.println(customer);
		if (br.hasErrors()) {
			System.out.println("유효성 검사 오류 발생");
			return "redirect:register";
		}
		
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		if (!customer.getCustomerId().equals(idchk)) { // 아이디 중복 체크
			System.out.println(customer.getCustomerId());
			System.out.println(idchk);
			System.out.println(passwdchk);
			model.addAttribute("msg", "아이디 중복을 확인해 주세요");
			model.addAttribute("url", "register");
			return "modules/alert";
		} else if (!customer.getPasswd().equals(passwdchk)) { // 비밀번호 확인 체크
			model.addAttribute("msg", "비밀번호를 확인해 주세요");
			model.addAttribute("url", "register");
			return "modules/alert";
		}
		
		if (regi_sex.equals("A")) {
			customer.setSex(true);
		} else if (regi_sex.equals("B")) {
			customer.setSex(false);
		}
		
		// 2. 요청 처리
		accountService.registerCustomer(customer); // 회원 정보 삽입
		accountService.addAddress(addressDto);
		System.out.println(customer);
		System.out.println(addressDto);

		// 3. View에서 사용할 수 있도록 데이터 전달 / 4. View 또는 다른 Controller로 이동
		return "account/login";

	}
	
	// 로그인) 로그인 화면 연결
	@GetMapping(path = { "login" }) // FrontController에 연결 설정
	public String showLoginForm() {
		return "account/login"; // WEB-INF/views/ + account/login + .jsp
	}
	
	// 로그인) 회원 정보 조회
	@PostMapping(path = { "login" })
	public String login(String customerId, String passwd, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
		// 2. 요청 처리
		CustomerDto customer = accountService.findCustomerByIdAndPasswd(customerId, passwd); // 회원 정보 조회(아이디, 비밀번호)
		
		if (customer != null && !customer.isDeleted()) {
			session.setAttribute("loginuser", customer);
		} else {
			model.addAttribute("loginfail", customerId);
			return "account/login";
		}
		
		// 3. View에서 사용하도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "home";

	}
	
	// 로그아웃
	@GetMapping(path = { "logout" })
	public String logout(HttpSession session) {
		session.removeAttribute("loginuser");
		session.removeAttribute("founduser");
		session.removeAttribute("productIds");
		return "redirect:home";
	}
	
	// 비밀번호 찾기 화면 연결
	@GetMapping(path = { "findpasswd" })
	public String findPasswd() {
		return "account/findpasswd";
	}
	
	// 비밀번호 찾기) 아이디, 전화번호로 회원 조회
	@PostMapping(path = { "findpasswd" })
	public String findpasswd(String customerId, String phone, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
		// 2. 요청 처리
		CustomerDto customer = accountService.findCustomerByIdAndPhone(customerId, phone); // 회원 정보 조회(아이디, 전화번호)

		if (customer != null) {
			session.setAttribute("founduser", customer);
		} else {
			model.addAttribute("userfindfail", customerId);
			return "account/findpasswd";
		}

		// 3. View에서 사용하도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:resetpasswd";

	}
	
	// 비밀번호 재설정 화면 연결
	@GetMapping(path = { "resetpasswd" })
	public String resetPasswd() {
		return "account/resetpasswd";
	}
	
	// 비밀번호 재설정 기능 수행
	@PostMapping(path = { "resetpasswd" })
	public String resetpasswd(String passwd, String passwdCheck, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용으로 대체 )
		// 2. 요청 처리
		System.out.printf("%s\n", passwd);
		System.out.printf("%s\n", passwdCheck);
		
		if (!passwd.equals(passwdCheck)) {
			model.addAttribute("resetpasswdfail", passwd);
			return "account/findpasswd";
		}
		CustomerDto customer = (CustomerDto) session.getAttribute("founduser");
		accountService.updatePassword(customer.getCustomerId(), passwd); // 비밀번호 수정

		// 3. View에서 사용하도록 데이터 전달
		// 4. View 또는 다른 Controller로 이동
		return "redirect:login";

	}

}
