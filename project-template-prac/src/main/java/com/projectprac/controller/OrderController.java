package com.projectprac.controller;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.CustomerDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.service.OrderService;

@Controller

public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@GetMapping(path = { "order" })
	public String order(HttpSession session) {
		
      List<ProductDto> products = new ArrayList<>();
      List<ProductDto> productIds = (List<ProductDto>) session.getAttribute("productIds");
      
      if(productIds != null) {
         for (ProductDto product : productIds) {
            product = orderService.showOrder(product.getProdId());
            products.add(product);
         }
      } 
      session.setAttribute("products", products);
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
	
	@GetMapping(path = {"delete-order"})
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
	
	@GetMapping(path = {"delete-all-order"})
	public String deleteAllOrder(HttpSession session) {	
		session.removeAttribute("productIds");
		return "redirect:order";
		}
		
	}
	

