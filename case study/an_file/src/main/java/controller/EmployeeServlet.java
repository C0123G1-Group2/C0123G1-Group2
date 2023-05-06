package controller;

import model.Employee;
import service.IEmployeeService;
import service.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    IEmployeeService employeeService= new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id;
        if(action== null){
            action="";
        }
        switch (action){
            case "delete":
                break;
            default:
                showEmployeeList(request,response);
        }

    }

    private void showEmployeeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList ;
        employeeList = employeeService.getAll();
        request.setAttribute("employeeList",employeeList);
        request.getRequestDispatcher("/EmployeeJSP/employeeList.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        Employee employee;
        int id;
        String name;
        String phoneNumber;
        String email;
        String dayOfBirth;
        switch (action){
            case "create":
                name = request.getParameter("name");
                phoneNumber = request.getParameter("phoneNumber");
                dayOfBirth = request.getParameter("dayOfBirth");
                email = request.getParameter("email");
                employee = new Employee(name,dayOfBirth,phoneNumber,email);
                boolean checkCreate = employeeService.createEmployee(employee);
                String mess ;
                if(checkCreate){
                    mess = "Thêm mới thành công";
                }else {
                    mess = " Thêm mới thất bại";
                }
                request.setAttribute("mess",mess);
                request.getRequestDispatcher("/EmployeeJSP/createEmployee.jsp").forward(request,response);
                break;
        }

    }
}
