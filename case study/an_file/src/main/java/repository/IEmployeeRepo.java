package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepo {
    List<Employee> getAll();

    boolean createEmployee(Employee employee);

    boolean deteleEmployee(int id);

    boolean edit(Employee employee1);

    List<Employee> findCustomer(String nameFind, String phoneNumberFind);
}
