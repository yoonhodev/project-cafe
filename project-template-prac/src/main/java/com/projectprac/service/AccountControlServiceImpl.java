package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CustomerDto;
import com.projectprac.mapper.AccountControlMapper;

import lombok.Setter;

public class AccountControlServiceImpl implements AccountControlService {

	@Setter
	private AccountControlMapper accountControlMapper;

	@Override
	public List<CustomerDto> selectAllUserAccount(CustomerDto customerDto, int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<CustomerDto> customers123 = accountControlMapper.selectAllUserAccount(customerDto,from,count);
		
		return customers123;
	}

	@Override
	public void changeToAdmin(String customerId) {
		
		accountControlMapper.changeToAdmin(customerId);
		
	}

	@Override
	public void changeToUser(String customerId) {
		accountControlMapper.changeToUser(customerId);
		
	}

	@Override
	public int countAllCustomer() {
		
		int accountCount = accountControlMapper.countAllCustomer();
		
		return accountCount;
	}

	@Override
	public List<CustomerDto> selectAllUserAccountForSearch() {
		
		List<CustomerDto> customers1234 = accountControlMapper.selectAllUserAccountForSearch();
		
		return customers1234;
	}

	@Override
	public List<CustomerDto> selectCustomerBycustomerId(String customerId) {
		
		List<CustomerDto> customerSearch = accountControlMapper.selectCustomerByCustomerId(customerId);
		
		return customerSearch;
	}
	
}
