package com.projectprac.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.projectprac.dto.CustomerDto;

public class AuthInterceptor implements HandlerInterceptor {

	// 컨트롤러를 호출하기 전에 호출되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		
		String uri = req.getRequestURI(); // 현재 요청 경로 (웹경로 : http://.../.../*.action)
		HttpSession session = req.getSession();
		CustomerDto customer = (CustomerDto)session.getAttribute("loginuser");
		
		if (customer == null) {	// 로그인 하지 않은 사용자
			if (uri.contains("/coupon") 	|| 
				uri.contains("/mypage")		||
				uri.contains("/writeStore") ||
				uri.contains("/order")      ||
				uri.contains("/shop")		||
				uri.contains("/fixedSpend")	||
				uri.contains("/admin"))  	{ // 로그인한 사용자만 볼 수 있는 요청
			
				resp.sendRedirect("/project-template-prac/login");
				return false; // 예정된 컨트롤러 호출을 취소
			}
		}
		
		if (customer != null && customer.isUserType() == false) {	// 로그인 하지 않은 사용자
			if (uri.contains("/writeStore")	||
				uri.contains("/fixedSpend")	||
				uri.contains("/admin")) 	{ // 로그인한 사용자만 볼 수 있는 요청
			
				resp.sendRedirect("/project-template-prac/home");
				return false; // 예정된 컨트롤러 호출을 취소
			}
		}
		
		return true; // 예정된 컨트롤러 호출을 수행
	}
	
	
	
	
	// 컨트롤러 처리가 끝난 후에 호출되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// System.out.println("PostHandle");
	}

	// View 처리까지 끝난 후에 호출되는 메서드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// System.out.println("AfterCompletion");
	}
	
}