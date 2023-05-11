package service.impl;

import model.Employee;
import repository.IEmployeeRepo;
import repository.impl.EmployeeRepo;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepo employeeRepo = new EmployeeRepo();
    @Override
    public List<Employee> getAll() {
        List<Employee> employeeList = employeeRepo.getAll();
        return employeeList;
    }

    @Override
    public boolean createEmployee(Employee employee) {
        return employeeRepo.createEmployee(employee);
    }

    @Override
    public boolean deleteEmployee(int id) {
        return employeeRepo.deteleEmployee(id);
    }

    @Override
    public boolean edit(Employee employee) {
        return employeeRepo.edit(employee);
    }

    @Override
    public List<Employee> findEmployee(String nameFind, String phoneNumberFind) {
        List<Employee> employeeList;
         employeeList = employeeRepo.findEmployee(nameFind,phoneNumberFind);
        return employeeList;
    }
}
