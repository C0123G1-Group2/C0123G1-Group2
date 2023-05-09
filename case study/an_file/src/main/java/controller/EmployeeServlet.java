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
                id = Integer.parseInt(request.getParameter("id"));
                employeeService.deleteEmployee(id);
                request.getRequestDispatcher("/employee?action=display").forward(request,response);
                break;
            case "edit":
                 edit(request,response);
                 break;
            default:
                showEmployeeList(request,response);
        }

    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id;
        List<Employee> employeeList;
        id= Integer.parseInt(request.getParameter("id"));
        employeeList = employeeService.getAll();
        for (int i = 0; i < employeeList.size() ; i++) {
            if(id == employeeList.get(i).getEmployeeID()){
                request.setAttribute("id",employeeList.get(i).getEmployeeID());
                request.setAttribute("name",employeeList.get(i).getEmployeeName());
                request.setAttribute("dayOfBirth",employeeList.get(i).getDayOfBirth());
                request.setAttribute("email",employeeList.get(i).getEmail());
                request.setAttribute("phoneNumber",employeeList.get(i).getPhoneNumber());
                request.getRequestDispatcher("/view/EmployeeJSP/editEmployee.jsp").forward(request,response);
            }
        }
    }

    private void showEmployeeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList ;
        employeeList = employeeService.getAll();
        request.setAttribute("employeeList",employeeList);
        request.getRequestDispatcher("/view/EmployeeJSP/employeeList.jsp").forward(request,response);
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
                    mess = "ADD NEW EMPLOYEE SUCCEED !";
                }else {
                    mess = " ADD NEW FAIL !";
                }
                request.setAttribute("mess",mess);
                request.getRequestDispatcher("/view/EmployeeJSP/createEmployee.jsp").forward(request,response);
                break;
            case "edit":
                id = Integer.parseInt(request.getParameter("id"));
                name = request.getParameter("name");
                email = request.getParameter("email");
                dayOfBirth = request.getParameter("dayOfBirth");
                phoneNumber = request.getParameter("phoneNumber");
                employee = new Employee(id,name,dayOfBirth,phoneNumber,email);
                boolean checkEdit = employeeService.edit(employee);
                String message = " Edit succeed !";
                if(!checkEdit){
                    message = "Edit Fail";
                }
                request.setAttribute("mess",message);
                request.getRequestDispatcher("/view/EmployeeJSP/editEmployee.jsp").forward(request,response);
                break;
            case "delete":
                id = Integer.parseInt(request.getParameter("id"));
                employeeService.deleteEmployee(id);
                showEmployeeList(request,response);
                break;
            case "find" :
                find(request, response);
                break;
        }
    }

    private void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameFind = request.getParameter("name");
        String phoneNumberFind = request.getParameter("phoneNumber");
        List<Employee> employeeList =employeeService.findCustomer(nameFind,phoneNumberFind);
        request.setAttribute("employeeList",employeeList);
        request.getRequestDispatcher("/view/EmployeeJSP/employeeList.jsp").forward(request, response);
    }
}
