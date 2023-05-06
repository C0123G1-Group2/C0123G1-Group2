package service.impl;

import model.Employee;
import repository.IEmployeeRepo;
import repository.impl.EmployeeRepo;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    IEmployeeRepo employeeRepo = new EmployeeRepo();
    @Override
    public List<Employee> getAll() {
        List<Employee> employeeList = employeeRepo.getAll();
        return employeeList;
    }

    @Override
    public boolean createEmployee(Employee employee) {
        return employeeRepo.createEmployee(employee);
    }
}
