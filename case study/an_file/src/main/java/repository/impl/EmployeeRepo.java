package repository.impl;

import model.Employee;
import repository.BaseRepositoryEmployee;
import repository.IEmployeeRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepo implements IEmployeeRepo {
    private  final String DELETE_EMPLOYEE = "DELETE FROM nhan_vien WHERE ma_nhan_vien = ?;";
    private final String SELECT_ALL = "SELECT * FROM nhan_vien;";
    private final String INSERT_INTO = "INSERT INTO nhan_vien(ten_nhan_vien,ngay_sinh,so_dien_thoai,email) values(?,?,?,?);";
    @Override
    public List<Employee> getAll() {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = BaseRepositoryEmployee.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int id = resultSet.getInt("ma_nhan_vien");
                String name = resultSet.getString("ten_nhan_vien");
                String dayOfBirth = resultSet.getString("ngay_sinh");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                Employee employee = new Employee(id,name,dayOfBirth,phoneNumber,email);
                employeeList.add(employee);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return employeeList;
    }

    @Override
    public boolean createEmployee(Employee employee) {
        Connection connection = BaseRepositoryEmployee.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1,employee.getEmployeeName());
            preparedStatement.setString(2,employee.getDayOfBirth());
            preparedStatement.setString(3,employee.getPhoneNumber());
            preparedStatement.setString(4,employee.getEmail());
            return preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deteleEmployee(int id) {
        Connection connection = BaseRepositoryEmployee.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_EMPLOYEE);
            preparedStatement.setInt(1,id);
            return preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
