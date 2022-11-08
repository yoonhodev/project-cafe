package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.CustomerDto;

public interface AccountService {

	void registerCustomer(CustomerDto customer);

	CustomerDto findCustomerByIdAndPasswd(String customerId, String passwd);

	CustomerDto findCustomerByIdAndPhone(String customerId, String phone);

	void updatePassword(String customerId, String passwd);

	List<CustomerDto> showAllCustomer();

	void addAddress(AddressDto addressDto);
	
}
