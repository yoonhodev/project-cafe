package com.projectprac.service;

import com.projectprac.mapper.AccountControlMapper;

import lombok.Setter;

public class AccountControlServiceImpl implements AccountControlService {

	@Setter
	private AccountControlMapper accountControlMapper;
	
}
