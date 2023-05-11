package com.example.service;

import com.example.model.Customer;
import com.example.model.User;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAll();
    boolean saveCustomer(Customer customer);
    void delete(int id);
    boolean edit(Customer customer);

    List<Customer> findCustomer(String nameFind, String phoneNumberFind, String addressFind);


}
