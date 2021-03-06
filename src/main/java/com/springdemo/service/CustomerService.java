package com.springdemo.service;

import java.util.List;

import com.springdemo.entity.Customer;


public interface CustomerService {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);
	
	public void deleteCustomer(Customer customer);

	public Customer getCustomer(int id);
}
