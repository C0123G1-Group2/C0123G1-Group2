package com.example.service;

import com.example.model.Customer;
import com.example.model.User;
import com.example.repository.CustomerRepository;
import com.example.repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
private ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> getAll() {
        List<Customer> customerList = customerRepository.getAll();

        return customerList;
    }

    @Override
    public void saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }

//
    public  boolean checkLogin(User user) {
        if ("admin".equals(user.getUsername()) && "12345".equals(user.getPassword())) {
            return true;
        } else {
            return false;
        }


    }

    @Override
    public boolean delete(int id) {
      boolean  check =  customerRepository.delete(id);
        return check;
    }

    @Override
    public boolean edit(Customer customer) {
        boolean  check = customerRepository.edit(customer);
        return check;
    }

    @Override
    public List<Customer> find(String name) {
        List<Customer> customerList = customerRepository.findCustomer(name);
        return customerList;
    }
}
