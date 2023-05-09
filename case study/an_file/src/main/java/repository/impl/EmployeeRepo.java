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
    private final String FIND_EMPLOYEE = "SELECT * FROM employee WHERE employee_name LIKE ? AND phone LIKE ?;";
    private final String UPDATE_USER = "UPDATE employee SET employee_name = ?,day_birth=?,phone =?,email = ? WHERE employee_id = ?; ";
    private final String DELETE_EMPLOYEE = "DELETE FROM employee WHERE employee_id = ?;";
    private final String SELECT_ALL = "SELECT * FROM employee;";
    private final String INSERT_INTO = "INSERT INTO employee(employee_name,day_birth,phone,email) values(?,?,?,?);";

    @Override
    public List<Employee> getAll() {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = BaseRepositoryEmployee.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("employee_id");
                String name = resultSet.getString("employee_name");
                String dayOfBirth = resultSet.getString("day_birth");
                String phoneNumber = resultSet.getString("phone");
                String email = resultSet.getString("email");
                Employee employee = new Employee(id, name, dayOfBirth, phoneNumber, email);
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
            preparedStatement.setString(1, employee.getEmployeeName());
            preparedStatement.setString(2, employee.getDayOfBirth());
            preparedStatement.setString(3, employee.getPhoneNumber());
            preparedStatement.setString(4, employee.getEmail());
            return preparedStatement.executeUpdate() > 0;
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
            preparedStatement.setInt(1, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(Employee employee) {
        Connection connection = BaseRepositoryEmployee.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER);
            preparedStatement.setString(1, employee.getEmployeeName());
            preparedStatement.setString(2, employee.getDayOfBirth());
            preparedStatement.setString(3, employee.getPhoneNumber());
            preparedStatement.setString(4, employee.getEmail());
            preparedStatement.setInt(5, employee.getEmployeeID());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Employee> findCustomer(String nameFind, String phoneNumberFind) {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = BaseRepositoryEmployee.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_EMPLOYEE);
            preparedStatement.setString(1, '%' + nameFind + '%');
            preparedStatement.setString(2, '%' + phoneNumberFind + '%');
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("employee_id");
                String name = resultSet.getString("employee_name");
                String phoneNumber = resultSet.getString("phone");
                String dayOfBirth = resultSet.getString("day_birth");
                String email = resultSet.getString("email");
                employeeList.add(new Employee(id, name, dayOfBirth, phoneNumber, email));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employeeList;
    }
}
