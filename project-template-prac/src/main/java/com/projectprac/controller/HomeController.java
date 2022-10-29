package com.projectprac.controller;

// @Controller // @Component + Web configuration
// 이 컨트롤러는 설정 파일을 통해 ViewController로 대체
public class HomeController {

	// @RequestMapping(path = { "/" , "home" }) // FrontController에 연결 설정
	public String home() {
		return "home"; // WEB-INF/views/ + home + .jsp
	}

}
