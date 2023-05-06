package com.example.repository;

import com.example.model.Customer;

import java.util.List;

public interface ICustomerRepository{
    List<Customer> getAll();

    boolean save(Customer customer);
//
    boolean delete(int id);
//
//    void edit(Customer customer);
}
