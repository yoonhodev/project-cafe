package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.CustomerDto;

public interface AccountControlService {

	List<CustomerDto> selectAllUserAccount(CustomerDto customerDto, int pageNo, int pageSize);

	void changeToAdmin(String customerId);

	void changeToUser(String customerId);

	int countAllCustomer();

	List<CustomerDto> selectAllUserAccountForSearch();

	List<CustomerDto> selectCustomerBycustomerId(String customerId);

}
