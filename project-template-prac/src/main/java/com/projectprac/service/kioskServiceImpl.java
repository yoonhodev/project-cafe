package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardAttachDto;
import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;
import com.projectprac.dto.ProductDto;
import com.projectprac.mapper.BoardCommentMapper;
import com.projectprac.mapper.BoardMapper;

import lombok.Setter;

public class kioskServiceImpl implements KioskService {

	@Setter
	private BoardMapper boardMapper;
	
	@Setter
	private BoardCommentMapper commentMapper;
	


	@Override
	public List<ProductDto> showMenuImg() {

		List<ProductDto> products = kioskMapper.findShop();
		return products;
	}
	
	
	









	










		
}
	

	

