package com.example.repository;

import com.example.model.Customer;

import java.util.List;

public interface ICustomerRepository{
    List<Customer> getAll();

    void save(Customer customer);

    void delete(int id);

    void edit(Customer customer);
}
