package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepo {
    List<Employee> getAll();

    boolean createEmployee(Employee employee);
}
