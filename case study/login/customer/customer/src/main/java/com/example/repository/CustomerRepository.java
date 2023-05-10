package com.example.repository;

import com.example.model.Customer;
import com.example.model.User;
import com.example.model.UserCustomer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {


    private final String SELECT_ALL = "SELECT * FROM customer;";

    private  final String INSERT_INTO = "INSERT INTO customer (`name`,phone_number,address,email ) VALUES (?,?,?,?);";
    private  final String DELETE_CUSTOMER = "DELETE FROM customer Where customer_id = ? ; ";
    private final  String UPDATE_CUSTOMER = "UPDATE  customer SET  `name` = ? , phone_number = ?,address = ?,email=? where customer_id = ?;";
    private final  String FIND_CUSTOMER = "SELECT * FROM customer WHERE `name` Like  ? AND phone_number Like ? AND address LIKE ? ;";
    private final  String CHECK_LOGIN = "SELECT user_login,password_login FROM users ;";
    private final  String INSERT_USER_CUSTOMER = "INSERT INTO users(user_login,password_login,is_cus,is_admin) VALUES(?,?,1,0);";



    @Override

    public List<Customer> getAll() {
        List<Customer> customerList = new ArrayList<>() ;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String phoneNumber=resultSet.getString("phone_number");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                Customer customer = new Customer(customerId,name,phoneNumber,address,email);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public boolean save(Customer customer) {

        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getPhoneNumber());
            preparedStatement.setString(3, customer.getAddress());
            preparedStatement.setString(4, customer.getEmail());
          return preparedStatement.executeUpdate() >0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        Connection connection = BaseRepository.getConnectDB();

        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1,id);
            return callableStatement.executeUpdate() > 0 ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(Customer customer) {
        boolean   rowUpdate = false;
      Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE_CUSTOMER);

            callableStatement.setString(1,customer.getName());
            callableStatement.setString(2,customer.getPhoneNumber());
            callableStatement.setString(3,customer.getAddress());
            callableStatement.setString(4,customer.getEmail());
            callableStatement.setInt(5,customer.getCustomerId());
            rowUpdate = callableStatement.executeUpdate() > 0 ;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowUpdate ;
    }

    @Override
    public List<Customer> findCustomer(String nameFind,  String phoneNumberFind,String addressFind) {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_CUSTOMER);
            preparedStatement.setString(1,'%'+nameFind+'%');
            preparedStatement.setString(2,'%'+phoneNumberFind+'%');
            preparedStatement.setString(3,'%'+addressFind+'%');

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String phoneNumber=resultSet.getString("phone_number");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                customerList.add(new Customer(customerId,name,phoneNumber,address,email));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

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
                User users = new User(user_login,password_login);
                userList.add(users);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public boolean saveUserCustomer(UserCustomer userCustomer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_CUSTOMER);
            preparedStatement.setString(1,userCustomer.getUser());
            preparedStatement.setString(2,userCustomer.getPassword());
            return preparedStatement.executeUpdate() >0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


}
