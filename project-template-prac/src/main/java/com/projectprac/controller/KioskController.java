package com.projectprac.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.ProductDto;
import com.projectprac.service.KioskService;

@Controller
public class KioskController {


	@Autowired
	@Qualifier("kioskService")
	private KioskService kioskService;
	
	
	
	@GetMapping(path = { "/kioskMain" })
	public String kioskMain(HttpSession session) { //Model --> jsp로 데이터 전달할때 씀
		
		List<ProductDto> products = kioskService.showKioskMenuImg();
		List<ProductDto> products2 = kioskService.showKioskMenuImg2();

		session.setAttribute("productViews", products);
		session.setAttribute("productViews2", products2);
		
		return "kiosk/kioskMain";
	}
	
	@PostMapping(path = { "/kioskMainPay" })
	public String kioskCart() { //Model --> jsp로 데이터 전달할때 씀
		
		
		
		return "kiosk/kioskCart";
	}
	
	@PostMapping(path = { "update-kiosk-order" })
	public String updateOrder(ProductDto product, HttpSession session) {
		List<ProductDto> productIds = new ArrayList<>();
		if (session.getAttribute("productIds") != null) {
			productIds = (List<ProductDto>) session.getAttribute("productIds");
			for (ProductDto productId : productIds) {
				if (productId.getProdId() == product.getProdId()) {
					System.out.printf("prodId : %d 중복\n", product.getProdId());
					return "kiosk/kioskMain";
				}
			}
		}
		
		System.out.println("1111");
		productIds.add(product);
		session.setAttribute("productIds", productIds);
		return "kiosk/kioskMain";
	}
	
	
	
	
	
}
