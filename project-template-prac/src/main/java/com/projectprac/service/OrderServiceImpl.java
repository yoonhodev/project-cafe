package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CouponMakeDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.mapper.CouponMapper;
import com.projectprac.mapper.OrderMapper;

import lombok.Setter;

public class OrderServiceImpl implements OrderService  {
	
	@Setter
	private OrderMapper orderMapper;
	private CouponMapper couponMapper;

	// 상품번호를 받아서 상품 조회 및 반환
	@Override
	public ProductDto showOrder(int prodId) {
		
		ProductDto product = orderMapper.findProductByProdId(prodId);
		return product;
		
	}
	
	@Override
	public ProductDto deleteOrder(int prodId) {
		ProductDto product = orderMapper.delete(prodId);
		return product;
	}

	@Override
	public ProductDto deleteAllOrder(int prodId) {
		ProductDto product = orderMapper.deleteAll(prodId);
		return product;
	}

	@Override
	public List<CouponMakeDto> showCoupon(String customerId) {
		List<CouponMakeDto> coupons = couponMapper.selectCouponMakeByCustomerId(customerId);
		return coupons;
	}


}
