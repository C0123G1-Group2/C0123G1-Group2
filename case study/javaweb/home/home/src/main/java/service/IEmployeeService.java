package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> getAll();

    boolean createEmployee( Employee employee);

    boolean deleteEmployee(int id);

    boolean edit(Employee employee);

    List<Employee> findEmployee(String nameFind, String phoneNumberFind);
}
