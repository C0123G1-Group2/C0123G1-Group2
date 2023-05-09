package com.example.repository;

import com.example.model.Customer;

import java.util.List;

public interface ICustomerRepository{
    List<Customer> getAll();

    boolean save(Customer customer);

    boolean delete(int id);

    boolean edit(Customer customer);

    List<Customer> findCustomer(String nameFind,  String phoneNumberFind);
}
