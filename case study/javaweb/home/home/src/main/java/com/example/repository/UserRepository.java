package com.example.repository;

import com.example.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository{
    private final  String CHECK_LOGIN = "SELECT user_login,password_login, role FROM users ;";
    private final  String INSERT_USER_CUSTOMER = "INSERT INTO users(user_login,password_login,role) VALUES(?,?,?);";
    @Override
    public List<User> getUser() {
        List<User> userList = new ArrayList<>();
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(CHECK_LOGIN);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String user_login=resultSet.getString("user_login");
                String password_login = resultSet.getString("password_login");
                String role = resultSet.getString("role");
                User users = new User(user_login, password_login, role);
                userList.add(users);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public boolean saveUserCustomer(User user) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_CUSTOMER);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getRole());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}