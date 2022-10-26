package com.projectprac.service;

import com.projectprac.dto.CustomerDto;

public interface AccountService {

	void registerCustomer(CustomerDto customer);

	CustomerDto findCustomerByIdAndPasswd(String customerId, String passwd);
	
}
