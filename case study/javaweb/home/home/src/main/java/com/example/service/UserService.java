package com.example.service;

import com.example.model.User;
import com.example.repository.IUserRepository;
import com.example.repository.UserRepository;

import java.util.List;

public class UserService implements IUserService{
    private IUserRepository userRepository = new UserRepository();
    @Override
    public boolean saveUserCustomer(User user) {
        boolean check = userRepository.saveUserCustomer(user);
        return check;
    }
    public List<User> getUser() {
//
        List<User> userList = userRepository.getUser();
        return userList;
    }
}
