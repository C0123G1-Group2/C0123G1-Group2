package com.example.repository;

import com.example.model.User;

import java.util.List;

public interface IUserRepository {
    List<User> getUser();

    boolean saveUserCustomer(User user);
}
