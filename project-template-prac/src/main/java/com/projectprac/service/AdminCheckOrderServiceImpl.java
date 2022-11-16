package com.projectprac.service;

import com.projectprac.mapper.AdminCheckOrderMapper;

import lombok.Setter;

public class AdminCheckOrderServiceImpl implements AdminCheckOrderService {

	@Setter 
	private AdminCheckOrderMapper adminCheckOrderMapper;
	
	
}
