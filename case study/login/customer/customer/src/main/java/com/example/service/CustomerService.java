package com.example.service;

import com.example.model.Customer;
import com.example.model.User;
import com.example.model.UserCustomer;
import com.example.repository.CustomerRepository;
import com.example.repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    private ICustomerRepository customerRepository = new CustomerRepository();
    List<Customer> customerList;
    @Override
    public List<Customer> getAll() {
       customerList = customerRepository.getAll();

        return customerList;
    }

    @Override
    public boolean saveCustomer(Customer customer) {
       boolean check=customerRepository.save(customer);
        return check;
    }

    //
    public  List<User> getUser() {
//
      List<User> userList = customerRepository.getUser();
        return userList;
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
    public List<Customer> findCustomer(String nameFind, String phoneNumberFind) {
        customerList = customerRepository.findCustomer(nameFind,phoneNumberFind);
        return customerList;
    }

    @Override
    public boolean saveUserCustomer(UserCustomer userCustomer) {
        boolean check = customerRepository.saveUserCustomer(userCustomer);
       return check;
    }


}

