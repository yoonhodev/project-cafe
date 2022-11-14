package com.projectprac.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.dto.ProductDto;
import com.projectprac.service.KioskService;

@Controller
public class KioskController {


	@Autowired
	@Qualifier("kioskService")
	private KioskService kioskService;
	

	
	@GetMapping(path = { "/kioskMain" })
	public String kiosk(HttpSession session) { //Model --> jsp로 데이터 전달할때 씀
		
		List<ProductDto> products = kioskService.showMenuImg();
		

		session.setAttribute("productViews", products);
		return "kiosk/kioskMain";
	}
	
	
	
	
}
