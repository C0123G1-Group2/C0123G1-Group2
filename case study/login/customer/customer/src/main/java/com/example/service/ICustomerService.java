package com.example.service;

import com.example.model.Customer;
import com.example.model.User;
import com.example.model.UserCustomer;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAll();

    boolean saveCustomer(Customer customer);



    List<User>getUser() ;

    void delete(int id);

    boolean edit(Customer customer);



    List<Customer> findCustomer(String nameFind, String phoneNumberFind ,String addressFind);

    boolean saveUserCustomer(UserCustomer userCustomer);

}
