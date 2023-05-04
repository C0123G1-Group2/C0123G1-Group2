package com.example.service;

import com.example.model.Customer;
import com.example.model.User;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAll();

    void saveCustomer(Customer customer);



    public  boolean checkLogin(User user) ;

    void delete(int id);

    void edit(Customer customer);
}
