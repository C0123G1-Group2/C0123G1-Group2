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
    public boolean saveCustomer(Customer customer) {
       boolean check=customerRepository.save(customer);
        return check;
    }




    @Override
    public void delete(int id) {
        customerRepository.delete(id);
    }

    @Override
    public boolean edit(Customer customer) {

      boolean check =  customerRepository.edit(customer);
      return check;
    }

    @Override
    public List<Customer> findCustomer(String nameFind, String phoneNumberFind ,String addressFind) {
        List<Customer> customerList = customerRepository.findCustomer(nameFind,phoneNumberFind,addressFind);
        return customerList;
    }



}

