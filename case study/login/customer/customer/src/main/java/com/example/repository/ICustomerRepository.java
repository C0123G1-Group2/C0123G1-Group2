package com.example.repository;

import com.example.model.Customer;
import com.example.model.User;
import com.example.model.UserCustomer;

import java.util.List;

public interface ICustomerRepository{
    List<Customer> getAll();

    boolean save(Customer customer);

    boolean delete(int id);

    boolean edit(Customer customer);

    List<Customer> findCustomer(String nameFind,  String phoneNumberFind);

    List<User> getUser();

    boolean saveUserCustomer(UserCustomer userCustomer);

}
